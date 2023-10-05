#!/bin/bash

while true; do
    selected_currency=$(zenity --entry --title="Выберите валюту или введите 'exit'" --text="Введите название валюты (например, 'dollar' или 'euro'):")

    if [ "$selected_currency" = "exit" ]; then
        break
    fi

    if [ "$selected_currency" = "dollar" ]; then
        exchange_rate=10000
    elif [ "$selected_currency" = "euro" ]; then
        exchange_rate=15000
    else
        zenity --info --text="Неверное название валюты. Попробуйте снова или введите 'exit' для выхода."
        continue
    fi

    zenity --info --text="Курс $selected_currency: $exchange_rate"
done

exit 0
