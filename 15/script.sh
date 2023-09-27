#!/bin/bash

script_to_run="./test.sh"

if [ -e "$script_to_run" ]; then
    if [ -x "$script_to_run" ]; then
        "./$script_to_run"
        echo "Скрипт $script_to_run выполнен"
    else
        echo "Файл $script_to_run не является исполняемым"
    fi
else
    echo "Файл $script_to_run не существует"
fi
