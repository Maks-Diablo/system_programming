#!/bin/bash

sum=0
for ((i=1; i<=10; i++)); do
    sum=$((sum + i))
done
echo "Сумма от 1 до 10 равна $sum"
