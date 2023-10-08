#!/bin/bash

file1="file1.txt"
file2="file2.txt"
output_file="sorted.txt"

if [ -e "$file1" ] && [ -e "$file2" ]; then
    # Используем cat для объединения содержимого обоих файлов, затем сортируем слова и удаляем дубликаты
    cat "$file1" "$file2" | tr -s ' ' '\n' | sort | uniq > "$output_file"

    echo "Создан файл $output_file с отсортированными и уникальными словами"
else
    echo "Один из файлов не существует"
fi
