#!/bin/bash

# Кількість слів у випадковому тексті
WORD_COUNT=100

# Функція для генерації випадкового слова
generate_word() {
    local length=$1
    tr -dc 'a-z' < /dev/urandom | head -c $length
}

# Генерація випадкового тексту
generate_random_text() {
    local word_count=$1
    for i in $(seq 1 $word_count); do
        word_length=$((RANDOM % 8 + 3))  # Довжина слова від 3 до 10 символів
        generate_word $word_length
        echo -n " "
    done
    echo
}

# Виведення випадкового тексту
generate_random_text $WORD_COUNT

