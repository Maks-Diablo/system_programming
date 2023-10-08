#!/bin/bash

text=$(cat base.txt)

# Используем sed для замены фамилий
text_with_replaced_names=$(echo "$text" | sed 's/Petrov/Gospodarik/g; s/Sidorov/Cherepkovskiy/g; s/Nutrina/Matskevich/g; s/Atomova/Rabshtina/g')

echo "$text_with_replaced_names"
