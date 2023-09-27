#!/bin/bash

echo "Список установленных интерпретаторов:"
which bash
which sh

current_shell="$(ps -p $$ -o comm=)"
echo "Текущий интерпретатор: $current_shell"
