#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
Скрипт для разделения feature файлов с тегами @uf-part1/@uf-part2 на 6 частей.
"""

import os
import re
import sys

def find_feature_files(features_dir):
    """
    Найти все .feature файлы, содержащие теги @uf-part1 или @uf-part2.
    Возвращает отсортированный список полных путей.
    """
    feature_files = []
    
    for root, dirs, files in os.walk(features_dir):
        for file in files:
            if file.endswith('.feature'):
                file_path = os.path.join(root, file)
                try:
                    with open(file_path, 'r', encoding='utf-8') as f:
                        content = f.read()
                        if '@uf-part1' in content or '@uf-part2' in content:
                            feature_files.append(file_path)
                except Exception as e:
                    print(f"Ошибка чтения файла {file_path}: {e}")
    
    # Сортировка по полному пути (каталог + имя файла)
    feature_files.sort()
    return feature_files

def split_into_parts(files, num_parts=6):
    """
    Разделить список файлов на num_parts частей.
    Возвращает список списков, где каждый подсписок - это часть файлов.
    """
    total = len(files)
    part_size = (total + num_parts - 1) // num_parts  # округление вверх
    
    parts = []
    for i in range(num_parts):
        start = i * part_size
        end = min(start + part_size, total)
        if start < total:
            parts.append(files[start:end])
        else:
            parts.append([])
    
    return parts

def replace_tags_in_file(file_path, new_part_number):
    """
    Заменить теги @uf-part1 и @uf-part2 на @uf-partN в файле.
    """
    try:
        with open(file_path, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # Заменяем оба тега на новый
        new_content = content.replace('@uf-part1', f'@uf-part{new_part_number}')
        new_content = new_content.replace('@uf-part2', f'@uf-part{new_part_number}')
        
        with open(file_path, 'w', encoding='utf-8') as f:
            f.write(new_content)
        
        return True
    except Exception as e:
        print(f"Ошибка записи файла {file_path}: {e}")
        return False

def main():
    import argparse
    
    parser = argparse.ArgumentParser(description='Разделение feature файлов с тегами @uf-part1/@uf-part2 на 6 частей')
    parser.add_argument('--dry-run', action='store_true', help='Режим проверки без изменения файлов')
    args = parser.parse_args()
    
    # Определяем путь к каталогу features
    script_dir = os.path.dirname(os.path.abspath(__file__))
    # script_dir = c:\Commons\rep\vanessa-automation\tools\python
    # project_root = c:\Commons\rep\vanessa-automation
    project_root = os.path.dirname(os.path.dirname(script_dir))
    features_dir = os.path.join(project_root, 'features')
    
    if not os.path.exists(features_dir):
        print(f"Каталог {features_dir} не найден!")
        sys.exit(1)
    
    if args.dry_run:
        print(f"[РЕЖИМ ПРОВЕРКИ] Поиск feature файлов с тегами @uf-part1 или @uf-part2 в каталоге: {features_dir}")
    else:
        print(f"Поиск feature файлов с тегами @uf-part1 или @uf-part2 в каталоге: {features_dir}")
    
    # 1. Находим все feature файлы с тегами
    feature_files = find_feature_files(features_dir)
    
    # 2. Считаем количество
    total_count = len(feature_files)
    print(f"\nНайдено feature файлов: {total_count}")
    
    if total_count == 0:
        print("Файлы с тегами @uf-part1 или @uf-part2 не найдены.")
        sys.exit(0)
    
    # 3. Файлы уже отсортированы по полному пути в функции find_feature_files
    
    # 4. Разделяем на 6 частей
    num_parts = 6
    parts = split_into_parts(feature_files, num_parts)
    
    print(f"\nРазделение на {num_parts} частей:")
    for i, part in enumerate(parts, 1):
        print(f"  Часть {i}: {len(part)} файлов")
    
    # 5. Заменяем теги в каждой части (если не режим проверки)
    if not args.dry_run:
        print(f"\nЗамена тегов...")
        success_count = 0
        error_count = 0
        
        for part_num, part_files in enumerate(parts, 1):
            for file_path in part_files:
                if replace_tags_in_file(file_path, part_num):
                    success_count += 1
                else:
                    error_count += 1
        
        print(f"\nГотово!")
        print(f"  Успешно обработано файлов: {success_count}")
        if error_count > 0:
            print(f"  Ошибок: {error_count}")
    else:
        print(f"\n[РЕЖИМ ПРОВЕРКИ] Файлы не были изменены.")
        print(f"Для применения изменений запустите скрипт без флага --dry-run")
    
    # Выводим подробную информацию по частям
    print(f"\n{'='*60}")
    print("Распределение файлов по частям:")
    print(f"{'='*60}")
    for part_num, part_files in enumerate(parts, 1):
        print(f"\n@uf-part{part_num} ({len(part_files)} файлов):")
        for file_path in part_files:
            rel_path = os.path.relpath(file_path, project_root)
            print(f"  {rel_path}")

if __name__ == '__main__':
    main()