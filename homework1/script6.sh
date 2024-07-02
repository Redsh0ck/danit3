#!/bin/bash

echo "Please enter a sentence:"
read sentence

words=($sentence)

reversed_sentence=""
for (( i=${#words[@]}-1; i>=0; i-- ))
do
    reversed_sentence="$reversed_sentence${words[i]} "
done

echo "Reversed sentence: $reversed_sentence"
