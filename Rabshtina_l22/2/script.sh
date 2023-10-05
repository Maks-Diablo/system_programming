#!/bin/bash

name=$(zenity --entry --text="Введите ваше имя:" --title="Имя")

# Отмена
if [ "$?" != 0 ]; then
    zenity --info --text="Вы не ввели имя. Завершение..."
    exit 1
fi

profession=$(zenity --entry --text="Введите вашу профессию:" --title="Профессия")

#Отмена
if [ "$?" != 0 ]; then
    zenity --info --text="Вы не ввели профессию. Завершение..."
    exit 1
fi

zenity --info --text="Ваше имя: $name\nВаша профессия: $profession"

exit 0
