#!/bin/bash

file="file.txt"

if [ -e "$file" ]; then
    # Используем sed для удаления не-буквенных символов
    sed 's/[^a-zA-Z]//g' "$file"
else
    echo "Файл $file не существует"
fi
