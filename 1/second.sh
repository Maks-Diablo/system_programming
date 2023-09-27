#!/bin/bash

source_file="file1.txt"
destination_file="file2.txt"

if [ -e "$source_file" ] && [ -e "$destination_file" ]; then
    cat "$source_file" > "$destination_file"
    echo "Содержимое файла $source_file записано в $destination_file"
else
    echo "Один из файлов не существует"
fi
