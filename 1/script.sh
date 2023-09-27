#!/bin/bash

zenity --question --text="Вы хотите открыть вложенный диалог?" --title="Первый диалог"

if [ $? = 0 ]; then
    zenity --question --text="Вы выбрали 'Yes'. Хотите продолжить?" --title="Второй диалог"
    if [ $? = 0 ]; then
        zenity --info --text="Вы выбрали 'Yes' в обоих диалогах. Продолжение..."
    else
        zenity --info --text="Вы выбрали 'No' во втором диалоге. Завершение..."
    fi
else
    zenity --info --text="Вы выбрали 'No' в первом диалоге. Завершение..."
fi
