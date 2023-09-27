#!/bin/bash

file1="file1.txt"
file2="file2.txt"

if [ -e "$file1" ] && [ -e "$file2" ]; then
    # Используем cat для объединения содержимого обоих файлов, затем сортируем слова, удаляем дубликаты и считаем количество слов
    common_words_count=$(cat "$file1" "$file2" | tr -s ' ' '\n' | sort | uniq -d | wc -w)

    echo "Число одинаковых слов в обоих файлах: $common_words_count"
else
    echo "Один из файлов не существует"
fi
