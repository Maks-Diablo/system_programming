#!/bin/bash

source_file="file1.txt"
destination_file="file2.txt"

if [ -e "$source_file" ] && [ -e "$destination_file" ]; then
    cp "$source_file" "$destination_file"
    echo "Файл $source_file скопирован в $destination_file"
else
    echo "Один из файлов не существует"
fi
