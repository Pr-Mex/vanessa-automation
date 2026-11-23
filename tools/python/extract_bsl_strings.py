# -*- coding: utf-8 -*-
"""
Скрипт для извлечения всех строковых литералов из BSL файлов
и сохранения результатов в отдельные Markdown файлы.

Поддерживает:
- Обычные строки: "текст" (с экранированием кавычек через две кавычки)
- Многострочные строки: |"текст"|

Для каждого литерала указывается:
- Значение литерала
- Номер строки

Имя выходного Markdown файла соответствует относительному пути BSL файла
с заменой расширения .bsl на .md.

Если в BSL файле больше LITERALS_PER_FILE литералов, результат разбивается
на несколько Markdown файлов с суффиксом _partN (например, filename_part1.md,
filename_part2.md). Если литералов меньше или равно LITERALS_PER_FILE,
создаётся один файл без суффикса (например, filename.md).
"""

import re
from pathlib import Path

# Конфигурация
SOURCE_DIR = r"C:\Commons\rep\vanessa-automation\VanessaAutomation"
OUTPUT_DIR = r"C:\Commons\rep\vanessa-automation\bsl_strings_output"
LITERALS_PER_FILE = 100  # Максимальное количество литералов в одном Markdown файле


def extract_string_literals_from_content(content):
    """Извлекает все строковые литералы из содержимого BSL файла.
    
    Читает строку слева направо, посимвольно.
    Правила:
    - Если найдена кавычка - значит начался литерал
    - Если найдена ещё одна кавычка - значит закончился литерал
    - Если идёт два символа кавычки подряд - значит это одна кавычка внутри литерала, либо это просто пустой литерал
    - Если литерал начался и в конце строки нет кавычки, значит на следующей строке должен быть символ |
    
    Возвращает список кортежей (номер_строки, литерал).
    """
    results = []
    lines = content.split('\n')
    
    line_number = 0
    while line_number < len(lines):
        line = lines[line_number]
        i = 0
        
        while i < len(line):
            char = line[i]
            
            # Проверяем начало многострочной строки |"
            # Это должен быть именно синтаксис |" в начале, а не | после отступов внутри литерала
            if char == '|' and i + 1 < len(line) and line[i + 1] == '"':
                # Проверяем, что это не продолжение предыдущего литерала (нет ли перед | отступов)
                # Если перед | есть только пробелы/табы, это может быть продолжение литерала
                prefix = line[:i]
                if prefix.strip() == '':
                    # Это начало нового многострочного литерала |"
                    start_pos_line = line_number
                    start_pos_col = i
                    i += 2  # Пропускаем |"
                    
                    # Собираем содержимое многострочной строки
                    literal_parts = ['|"']
                    
                    # Ищем конец многострочной строки "|
                    found_end = False
                    while line_number < len(lines):
                        current_line = lines[line_number]
                        j = i if line_number == start_pos_line else 0
                        
                        while j < len(current_line):
                            if current_line[j] == '"' and j + 1 < len(current_line) and current_line[j + 1] == '|':
                                # Нашли конец "|
                                literal_parts.append(current_line[i:j+2] if line_number == start_pos_line else current_line[:j+2])
                                i = j + 2
                                found_end = True
                                break
                            j += 1
                        
                        if found_end:
                            break
                        
                        # Добавляем текущую строку и переходим к следующей
                        if line_number == start_pos_line:
                            literal_parts.append(current_line[i:])
                        else:
                            literal_parts.append(current_line)
                        
                        line_number += 1
                        i = 0
                    
                    if found_end:
                        literal = ''.join(literal_parts)
                        results.append((start_pos_line + 1, literal))
                    continue
            
            # Проверяем начало обычной строки "
            if char == '"':
                start_pos = i
                start_line = line_number + 1  # 1-based номер строки
                i += 1  # Пропускаем открывающую кавычку
                
                # Собираем содержимое строки
                literal_chars = ['"']
                found_end = False
                
                # Обрабатываем текущую строку
                while i < len(line):
                    if line[i] == '"':
                        # Проверяем, это экранированная кавычка или конец строки
                        if i + 1 < len(line) and line[i + 1] == '"':
                            # Это """" - экранированная кавычка внутри строки
                            literal_chars.append('""')
                            i += 2  # Пропускаем обе кавычки
                            continue
                        else:
                            # Это закрывающая кавычка строки
                            literal_chars.append('"')
                            i += 1  # Пропускаем закрывающую кавычку
                            found_end = True
                            break
                    else:
                        literal_chars.append(line[i])
                        i += 1
                
                # Если не нашли конец в текущей строке, проверяем следующую строку
                # Это случай, когда строка начинается с " и продолжается на следующих строках
                # В BSL строка может продолжаться на следующих строках без специального синтаксиса
                if not found_end and line_number + 1 < len(lines):
                    # Это многострочный литерал - продолжаем сбор до закрывающей кавычки
                    literal_chars.append(line[i:])  # Остаток текущей строки
                    literal_chars.append('\n')
                    line_number += 1
                    
                    # Собираем строки до закрывающей кавычки
                    while line_number < len(lines):
                        current_line = lines[line_number]
                        
                        # Ищем закрывающую кавычку в этой строке
                        quote_pos = -1
                        for pos in range(len(current_line)):
                            if current_line[pos] == '"':
                                # Проверяем, это экранированная кавычка ""
                                if pos + 1 < len(current_line) and current_line[pos + 1] == '"':
                                    # Это экранированная кавычка, пропускаем
                                    continue
                                # Проверяем, это синтаксис "| (кавычка после |)
                                if pos > 0 and current_line[pos - 1] == '|':
                                    # Это часть "| - не закрывающая кавычка для нашего литерала
                                    continue
                                # Это закрывающая кавычка
                                quote_pos = pos
                                break
                        
                        if quote_pos != -1:
                            # Нашли закрывающую кавычку
                            # Добавляем всё до кавычки включительно
                            literal_chars.append(current_line[:quote_pos+1])
                            i = quote_pos + 1
                            found_end = True
                            break
                        else:
                            # Добавляем всю строку и переходим к следующей
                            literal_chars.append(current_line)
                            literal_chars.append('\n')
                            line_number += 1
                
                if found_end or len(literal_chars) > 1:
                    literal = ''.join(literal_chars)
                    results.append((start_line, literal))
                continue
            
            i += 1
        
        line_number += 1
    
    return results


def is_valid_string_literal(literal):
    """Проверяет, что строка является корректным строковым литералом BSL.
    
    Строка должна начинаться и заканчиваться кавычкой.
    """
    if not literal.startswith('"') or not literal.endswith('"'):
        return False
    # Проверка на обрывки кода (например, "); в начале)
    if literal.startswith('");') or literal.startswith('",') or literal.startswith('")'):
        return False
    # Проверка на строки, состоящие только из кавычек (обрывки конкатенации вида """ + Переменная + """)
    # В BSL """" — это строка с одной кавычкой, но если она часть конкатенации, то это ложный литерал
    stripped = literal.strip('"')
    if stripped == '' and len(literal) <= 6:
        # Это строки вида "", """""" и т.д. — пропускаем только короткие (обрывки)
        return False
    # Проверка на паттерны конкатенации: " + ... + "
    # Это ловит случаи вида " + " или " + ЧтоТо + "
    if re.search(r'"\s*\+', literal) or re.search(r'\+\s*"', literal):
        return False
    # Проверка на паттерны с кодом 1С после кавычки
    # Например: "\"");\n\tСтр = " или " И Данные = "
    if re.search(r'"\s*[\u0400-\u04FF]+\s*=', literal):  # кириллица и =
        return False
    # Проверка на паттерны вида "] = " или " , " с кодом после
    if re.search(r'"\s*\]\s*=\s*"', literal):
        return False
    # Проверка на строки, содержащие "); или ", с последующим кодом
    # НО: это может быть частью многострочного литерала, поэтому проверяем только если нет перевода строки
    if '\n' not in literal:
        if re.search(r'"\);', literal) or re.search(r'",\s*\S', literal):
            return False
    # Проверка на строки с табуляцией и новыми строками внутри (это признак кода, а не литерала)
    # НО: многострочные литералы с | в начале строк могут содержать \n\t, поэтому не фильтруем их
    # Проверка на строки, содержащие `";` с последующим кодом (обрывки конкатенации)
    # Это ключевой паттерн: если строка содержит `";` и после него идет код 1С
    if '";' in literal:
        # Разбиваем по `";` и проверяем что идет после
        parts = literal.split('";')
        if len(parts) > 1:
            after_semicolon = parts[1] if len(parts) > 1 else ""
            # Если после `";` идет код 1С (ключевые слова, переводы строк с кодом)
            code_keywords_semicolon = ['Если', 'Тогда', 'Иначе', 'КонецЕсли', 'Для', 'Каждого', 'Цикл', 
                           'Пока', 'Прервать', 'Продолжить', 'Возврат', 'Функция', 'Процедура',
                           '\n\t\n\t', '\n\t\t', '\n\t//', '\n\tМассив', '\n\t\t\n', '\t\n\t\n\t',
                           '\t\n\t', '\n\t\n', '\t\n\t\n', '\t\n\t\n\t', '\t\n', '\n\t']
            for keyword in code_keywords_semicolon:
                if keyword in after_semicolon:
                    return False
            # Дополнительная проверка: если после `";` идет перевод строки и табуляция с кодом
            if re.search(r'\n\s*\S', after_semicolon):
                return False
    # Проверка на экранированные символы (после escape_for_markdown)
    # В MD файле \t и \n экранированы, поэтому ищем `";\\t\\n` или `";\\n\\t`
    if '";\\t\\n' in literal or '";\\n\\t' in literal:
        return False
    # Проверка на паттерн с табуляцией и новой строкой (реальные символы, не экранированные)
    if '";\t' in literal:
        return False
    # Проверка на паттерн с экранированными символами табуляции и новой строки
    # Это важно, так как escape_for_markdown() заменяет \t и \n на \\t и \\n
    if '";\\t\\n\\t\\n\\t' in literal or '";\\t\\n' in literal:
        return False
    # Проверка на паттерн с реальными символами табуляции и новой строки
    if '";\t\n\t\n\t' in literal:
        return False
    return True


def extract_string_literals_from_file(file_path):
    """Извлекает все строковые литералы из BSL файла.

    Возвращает список кортежей (номер_строки, литерал).
    """
    results = []
    # Пробуем разные кодировки (BSL-файлы 1С часто в UTF-8 или CP1251)
    content = None
    for encoding in ('utf-8', 'cp1251', 'utf-8-sig'):
        try:
            with open(file_path, 'r', encoding=encoding) as f:
                content = f.read()
            break
        except (UnicodeDecodeError, UnicodeError):
            continue

    if content is None:
        print(f"Не удалось прочитать файл: {file_path}")
        return results

    # Извлекаем литералы с помощью посимвольного парсера
    raw_results = extract_string_literals_from_content(content)
    
    # Фильтруем некорректные строки
    for line_number, literal in raw_results:
        if is_valid_string_literal(literal):
            results.append((line_number, literal))

    # Сортировка по номеру строки
    results.sort(key=lambda x: x[0])
    return results


def escape_for_markdown(text):
    """Экранирует специальные символы Markdown в тексте."""
    # Экранируем обратные кавычки
    text = text.replace('`', '\\`')
    return text


def write_markdown_for_file(bsl_file, rel_path, literals, output_root, source_path,
                            part_number=1, total_parts=1, start_index=1, total_literals=0):
    """Записывает результаты для одного BSL файла в отдельный Markdown файл.

    Структура выходного пути повторяет структуру каталогов исходного файла.
    Например: Ext/ObjectModule.bsl -> Ext/ObjectModule.md

    Если файл разбит на несколько частей (total_parts > 1), к имени добавляется
    суффикс _partN (например, Ext/ObjectModule_part1.md, Ext/ObjectModule_part2.md).
    """
    # Относительный путь без расширения
    rel_path_without_ext = rel_path.with_suffix('')

    # Если частей больше одной, добавляем суффикс _partN
    if total_parts > 1:
        output_filename = f"{rel_path_without_ext.name}_part{part_number}.md"
    else:
        output_filename = f"{rel_path_without_ext.name}.md"

    # Полный путь к выходному Markdown файлу
    output_md_path = output_root / rel_path_without_ext.parent / output_filename

    # Создаём родительские каталоги при необходимости
    output_md_path.parent.mkdir(parents=True, exist_ok=True)

    # Формируем данные для Markdown
    md_lines = []
    md_lines.append(f"# Строковые литералы из файла: {rel_path}")
    md_lines.append("")
    md_lines.append(f"**Исходный файл:** `{bsl_file}`")
    md_lines.append("")
    md_lines.append(f"**Всего литералов в файле:** {total_literals}")
    if total_parts > 1:
        md_lines.append(f"**Часть:** {part_number} из {total_parts}")
    md_lines.append("")
    md_lines.append("---")
    md_lines.append("")

    for idx, (line_number, literal) in enumerate(literals, start_index):
        md_lines.append(f"## Литерал #{idx}")
        md_lines.append("")
        md_lines.append(f"**Номер строки:** {line_number}")
        md_lines.append("")
        md_lines.append("**Значение:**")
        md_lines.append("")
        md_lines.append("```")
        md_lines.append(escape_for_markdown(literal))
        md_lines.append("```")
        md_lines.append("")

    md_content = '\n'.join(md_lines)

    with open(output_md_path, 'w', encoding='utf-8') as f:
        f.write(md_content)

    return output_md_path


def main():
    source_path = Path(SOURCE_DIR)
    if not source_path.exists():
        print(f"Каталог не найден: {SOURCE_DIR}")
        return

    output_root = Path(OUTPUT_DIR)
    output_root.mkdir(parents=True, exist_ok=True)

    # Поиск всех .bsl файлов рекурсивно
    bsl_files = sorted(source_path.rglob("*.bsl"))
    print(f"Найдено .bsl файлов: {len(bsl_files)}")

    total_literals = 0
    created_files = 0

    for bsl_file in bsl_files:
        # Относительный путь от исходного каталога
        try:
            rel_path = bsl_file.relative_to(source_path)
        except ValueError:
            rel_path = Path(bsl_file.name)

        literals = extract_string_literals_from_file(bsl_file)
        if not literals:
            continue

        # Разбиваем литералы на части по LITERALS_PER_FILE штук
        total_parts = (len(literals) + LITERALS_PER_FILE - 1) // LITERALS_PER_FILE
        file_total = len(literals)

        for part_idx in range(total_parts):
            start = part_idx * LITERALS_PER_FILE
            end = min(start + LITERALS_PER_FILE, len(literals))
            chunk = literals[start:end]
            part_number = part_idx + 1
            start_index = start + 1

            output_md_path = write_markdown_for_file(
                bsl_file, rel_path, chunk, output_root, source_path,
                part_number=part_number,
                total_parts=total_parts,
                start_index=start_index,
                total_literals=file_total,
            )
            created_files += 1

        total_literals += file_total

        if total_parts > 1:
            print(f"  {rel_path} -> {total_parts} файл(ов) ({file_total} литералов)")
        else:
            print(f"  {rel_path} -> {output_md_path.relative_to(output_root)} ({file_total} литералов)")

    print(f"\nГотово!")
    print(f"Создано Markdown файлов: {created_files}")
    print(f"Всего литералов: {total_literals}")
    print(f"Каталог с результатами: {OUTPUT_DIR}")


if __name__ == "__main__":
    main()