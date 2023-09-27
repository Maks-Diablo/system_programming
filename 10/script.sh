#!/bin/bash

file="basa.txt"

if [ -e "$file" ]; then
    # Используем awk для нахождения строки с самым молодым человеком
    youngest_person=$(awk -F: 'NR==1 || $2 < min_age {min_age=$2; line=$0} END {print line}' "$file")
    # Берём фамилию самого молодого человека
    youngest_lastname=$(echo "$youngest_person" | cut -d: -f1)
    echo "Фамилия самого молодого человека: $youngest_lastname"
else
    echo "Файл $file не существует"
fi
