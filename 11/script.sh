#!/bin/bash

# Имя файла
file="basa.txt"

# Проверяем, существует ли файл
if [ -e "$file" ]; then
    # Используем awk для нахождения строки с самым молодым человеком
    youngest_person=$(awk -F: 'NR==1 || $2 < min_age {min_age=$2; line=$0} END {print line}' "$file")

    # Извлекаем зарплату самого молодого человека (третий столбец)
    youngest_salary=$(echo "$youngest_person" | cut -d: -f3)

    echo "Зарплата самого молодого человека: $youngest_salary"
else
    echo "Файл $file не существует"
fi
