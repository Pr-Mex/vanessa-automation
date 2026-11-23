#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
Скрипт для автоматического перевода 'Translation not found' в XML файлах переводов 1С.
Заменяет строки 'Translation not found' на перевод русского текста из первой колонки.
Перевод выполняется с помощью онлайн-сервиса Google Translate.
"""

import os
import re
import sys
import urllib.request
import urllib.parse
import json

# Устанавливаем кодировку UTF-8 для вывода в консоль на Windows
if sys.platform == 'win32':
    import io
    sys.stdout.reconfigure(encoding='utf-8')


def escape_xml_special_chars(text):
    """
    Экранирует спецсимволы < и > в XML.
    """
    # Используем явные строки для экранирования
    result = text
    result = result.replace('&', chr(38) + 'amp;')  # & -> &
    result = result.replace('<', chr(38) + 'lt;')   # < -> <
    result = result.replace('>', chr(38) + 'gt;')   # > -> >
    return result


def unescape_xml_special_chars(text):
    """
    Деэкранирует XML спецсимволы.
    """
    result = text
    result = result.replace(chr(38) + 'lt;', '<')
    result = result.replace(chr(38) + 'gt;', '>')
    result = result.replace(chr(38) + 'amp;', '&')
    return result


# Словарь соответствия кодов языков
LANGUAGE_MAP = {
    'az': 'az',   # азербайджанский
    'bg': 'bg',   # болгарский
    'de': 'de',   # немецкий
    'en': 'en',   # английский
    'es': 'es',   # испанский
    'et': 'et',   # эстонский
    'fr': 'fr',   # французский
    'hu': 'hu',   # венгерский
    'hy': 'hy',   # армянский
    'it': 'it',   # итальянский
    'ka': 'ka',   # грузинский
    'lt': 'lt',   # литовский
    'lv': 'lv',   # латышский
    'mn': 'mn',   # монгольский
    'pl': 'pl',   # польский
    'ro': 'ro',   # румынский
    'sl': 'sl',   # словенский
    'sv': 'sv',   # шведский
    'tr': 'tr',   # турецкий
    'vi': 'vi',   # вьетнамский
}


# Кэш для переводов
_translation_cache = {}


def translate_text(text, target_lang):
    """
    Переводит текст на указанный язык с помощью Google Translate API.
    """
    # Проверяем кэш
    cache_key = f"{text}:{target_lang}"
    if cache_key in _translation_cache:
        return _translation_cache[cache_key]
    
    # Очищаем текст от XML-сущностей для перевода
    clean_text = unescape_xml_special_chars(text)
    
    # URL для Google Translate API (неофициальный endpoint)
    url = "https://translate.googleapis.com/translate_a/single"
    params = {
        'client': 'gtx',
        'sl': 'ru',  # исходный язык - русский
        'tl': target_lang,  # целевой язык
        'dt': 't',
        'q': clean_text
    }
    
    query_string = urllib.parse.urlencode(params)
    full_url = f"{url}?{query_string}"
    
    try:
        request = urllib.request.Request(
            full_url,
            headers={
                'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36'
            }
        )
        with urllib.request.urlopen(request, timeout=30) as response:
            result = response.read().decode('utf-8')
            data = json.loads(result)
            
            # Извлекаем переведённый текст
            translated = ''
            for item in data[0]:
                if item[0]:
                    translated += item[0]
            
            # Сохраняем в кэш
            _translation_cache[cache_key] = translated
            return translated
    except Exception as e:
        print(f"  Ошибка перевода текста: {e}")
        return None


def get_language_from_path(file_path):
    """
    Извлекает код языка из пути к файлу.
    Например, для пути:
    locales/Messages/Templates/sv/Ext/Template.xml
    вернет 'sv'
    """
    # Путь должен содержать что-то вроде: .../Templates/{lang}/Ext/Template.xml
    match = re.search(r'Templates[/\\]([a-zA-Z]{2})[/\\]Ext', file_path)
    if match:
        return match.group(1)
    return None


def find_rows_items(content):
    """
    Находит все rowsItem в содержимом и возвращает их позиции.
    """
    rows_items = []
    pattern = r'<rowsItem>(.*?)</rowsItem>'
    for match in re.finditer(pattern, content, re.DOTALL):
        rows_items.append({
            'start': match.start(),
            'end': match.end(),
            'content': match.group(0),
            'full_match': match
        })
    return rows_items


def extract_column_content(rows_item_content, column_index):
    """
    Извлекает содержимое из указанной колонки в rowsItem.
    Возвращает текст из v8:content.
    Для колонки 0 (русский оригинал) - ищем ru язык.
    Для колонки 1 (перевод) - берём первый v8:content.
    
    Структура XML:
    <rowsItem>
      <index>0</index>
      <row>
        <c>  <- колонка 0
          <c>
            <f>...</f>
            <tl>
              <v8:item>
                <v8:lang>ru</v8:lang>
                <v8:content>Текст</v8:content>
              </v8:item>
            </tl>
          </c>
        </c>
        <c>  <- колонка 1
          ...
        </c>
      </row>
    </rowsItem>
    """
    # Извлекаем содержимое row
    row_match = re.search(r'<row>(.*?)</row>', rows_item_content, re.DOTALL)
    if not row_match:
        return None
    
    row_content = row_match.group(1)
    
    # Находим все внешние <c> теги (колонки)
    # Используем подсчёт вложенности
    columns = []
    depth = 0
    column_start = None
    
    i = 0
    while i < len(row_content):
        if row_content[i:i+3] == '<c>':
            if depth == 0:
                column_start = i
            depth += 1
            i += 3
        elif row_content[i:i+4] == '</c>':
            depth -= 1
            if depth == 0 and column_start is not None:
                columns.append(row_content[column_start:i+4])
                column_start = None
            i += 4
        else:
            i += 1
    
    if column_index >= len(columns):
        return None
    
    column_content = columns[column_index]
    
    # Извлекаем v8:content
    # Для колонки 0 (русский оригинал) - ищем ru язык
    if column_index == 0:
        items = re.findall(r'<v8:item>(.*?)</v8:item>', column_content, re.DOTALL)
        for item in items:
            if '<v8:lang>ru</v8:lang>' in item:
                content_match = re.search(r'<v8:content>(.*?)</v8:content>', item, re.DOTALL)
                if content_match:
                    return content_match.group(1).strip()
    
    # Для колонки 1 (перевод) или если не нашли для ru - берём первый v8:content
    content_match = re.search(r'<v8:content>(.*?)</v8:content>', column_content, re.DOTALL)
    if content_match:
        return content_match.group(1).strip()
    
    return None


def clean_for_console(text):
    """
    Очищает текст от символов, которые могут некорректно отображаться в консоли Windows.
    """
    # Заменяем проблемные Unicode-символы на ASCII-аналоги
    replacements = {
        '✅': '[OK]',
        '❌': '[X]',
        '⚠️': '[!]',
        '➤': '>',
        '•': '-',
        '–': '-',
        '—': '-',
        '…': '...',
        '«': '"',
        '»': '"',
        'ё': 'е',
        'Ё': 'Е',
    }
    for char, replacement in replacements.items():
        text = text.replace(char, replacement)
    return text


def process_file(file_path, delay_between_requests=0.5):
    """
    Обрабатывает один XML файл.
    Заменяет 'Translation not found' на переведённый текст из первой колонки.
    Перевод выполняется через Google Translate.
    delay_between_requests - задержка между запросами к API (секунды)
    """
    import time
    
    lang = get_language_from_path(file_path)
    if not lang:
        print(f"Не удалось определить язык для файла: {file_path}")
        return False
    
    target_lang = LANGUAGE_MAP.get(lang, lang)
    print(f"Обработка файла: {file_path} (язык: {lang}, целевой: {target_lang})")
    
    try:
        with open(file_path, 'r', encoding='utf-8') as f:
            content = f.read()
    except Exception as e:
        print(f"Ошибка чтения файла {file_path}: {e}")
        return False
    
    original_content = content
    rows_items = find_rows_items(content)
    
    # Сначала считаем сколько строк нужно перевести
    total_to_translate = 0
    for row_item in rows_items:
        translation_text = extract_column_content(row_item['content'], 1)
        if translation_text and translation_text.strip() == 'Translation not found':
            total_to_translate += 1
    
    if total_to_translate > 0:
        print(f"  Найдено строк для перевода: {total_to_translate}")
    
    replacements_count = 0
    translate_count = 0
    last_request_time = 0
    
    for row_item in rows_items:
        # Получаем текст из первой колонки (русский оригинал)
        russian_text = extract_column_content(row_item['content'], 0)
        if not russian_text:
            continue
        
        # Получаем текст из второй колонки (перевод)
        translation_text = extract_column_content(row_item['content'], 1)
        if not translation_text:
            continue
        
        # Проверяем, является ли перевод "Translation not found"
        if translation_text.strip() == 'Translation not found':
            # Добавляем задержку между запросами
            elapsed = time.time() - last_request_time
            if elapsed < delay_between_requests:
                time.sleep(delay_between_requests - elapsed)
            
            # Переводим текст онлайн
            # Очищаем текст для корректного отображения в консоли
            safe_text = clean_for_console(russian_text[:50])
            
            # Вычисляем прогресс в процентах
            translate_count += 1
            progress = (translate_count / total_to_translate) * 100 if total_to_translate > 0 else 0
            print(f"  Перевод [{progress:5.1f}%]: {safe_text}...", flush=True)
            
            translated = translate_text(russian_text, target_lang)
            last_request_time = time.time()
            
            if translated:
                new_translation = escape_xml_special_chars(translated)
            else:
                # Если перевод не удался, используем русский текст
                new_translation = escape_xml_special_chars(russian_text)
            
            # Находим и заменяем в содержимом файла
            old_rows_item = row_item['content']
            
            # Заменяем Translation not found на новый перевод
            new_rows_item = re.sub(
                r'(<v8:content>)Translation not found(</v8:content>)',
                r'\g<1>' + new_translation + r'\g<2>',
                old_rows_item
            )
            
            if new_rows_item != old_rows_item:
                content = content.replace(old_rows_item, new_rows_item)
                replacements_count += 1
    
    # Записываем файл только если были изменения
    if content != original_content:
        try:
            with open(file_path, 'w', encoding='utf-8') as f:
                f.write(content)
            print(f"  Выполнено замен: {replacements_count}, переведено: {translate_count}", flush=True)
            return True
        except Exception as e:
            print(f"Ошибка записи файла {file_path}: {e}", flush=True)
            return False
    else:
        print(f"  Изменений не требуется", flush=True)
        return True


def main():
    """
    Основная функция.
    """
    import sys
    
    # Получаем целевой язык из аргументов командной строки (например, sv)
    target_language = None
    for arg in sys.argv[1:]:
        if not arg.startswith('-'):
            target_language = arg.strip().lower()
            break
    
    # Путь к каталогу с шаблонами
    # __file__ = tools/Translate/fix_translations/fix_translations.py
    # Нужно подняться на 4 уровня вверх до корня проекта
    templates_dir = os.path.join(os.path.dirname(os.path.dirname(os.path.dirname(os.path.dirname(__file__)))), 
                                  'locales', 'Messages', 'Templates')
    
    if not os.path.exists(templates_dir):
        print(f"Каталог не найден: {templates_dir}")
        return
    
    print(f"Поиск файлов в: {templates_dir}")
    if target_language:
        print(f"Целевой язык: {target_language}")
    print("Режим: онлайн-перевод через Google Translate")
    
    total_processed = 0
    total_modified = 0
    
    # Проходим по всем подкаталогам языков
    for lang_code in os.listdir(templates_dir):
        # Если указан конкретный язык, пропускаем остальные
        if target_language and lang_code.lower() != target_language:
            continue
        
        lang_dir = os.path.join(templates_dir, lang_code)
        if not os.path.isdir(lang_dir):
            continue
        
        # Проверяем наличие подкаталога Ext
        ext_dir = os.path.join(lang_dir, 'Ext')
        if not os.path.exists(ext_dir):
            continue
        
        # Ищем XML файлы в Ext
        for file_name in os.listdir(ext_dir):
            if file_name.endswith('.xml'):
                file_path = os.path.join(ext_dir, file_name)
                total_processed += 1
                if process_file(file_path):
                    total_modified += 1
    
    print(f"\nОбработано файлов: {total_processed}")
    print("Готово!")


if __name__ == '__main__':
    main()