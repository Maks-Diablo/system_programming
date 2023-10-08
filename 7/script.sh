#!/bin/bash

file="file.txt"

if [ -e "$file" ]; then
    # Создаем временный файл для сортировки
    temp_file=$(mktemp)

    sort "$file" > "$temp_file"

    # Заменяем исходный файл сортированным содержимым
    mv "$temp_file" "$file"

    echo "Файл $file был отсортирован"
else
    echo "Файл $file не существует"
fi
