#!/bin/bash

script_name="test.sh"

# Проверяем существование файла
if [ -e "$script_name" ]; then
    # Проверяем, является ли файл исполняемым
    if [ -x "$script_name" ]; then
        ./"$script_name"
        echo "Скрипт $script_name выполнен"
    else
        echo "Файл $script_name не является исполняемым"
    fi
else
    echo "Файл $script_name не существует"
fi
