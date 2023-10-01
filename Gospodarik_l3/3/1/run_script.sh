#!/bin/bash

script_to_run="myscript.sh"

# Проверяем, существует ли указанный скрипт
if [ -e "$script_to_run" ]; then
  # Проверяем, является ли скрипт исполняемым
  if [ -x "$script_to_run" ]; then
    # Выполняем указанный скрипт
    "./$script_to_run"
  else
    echo "Ошибка: Скрипт $script_to_run не является исполняемым."
  fi
else
  echo "Ошибка: Скрипт $script_to_run не найден."
fi
