#!/usr/bin/env bash

filecount=$( ls | wc -l )
guessnum=0

function guesstest {
	if [[ $guessnum -lt $filecount ]]
	then
		echo "Your guess was too low. Try again."
	elif [[ $guessnum -gt $filecount ]]
	then
		echo "Your guess was too high. Try again."
	fi
}

while [[ $guessnum -ne $filecount ]]
do
	echo "Please enter your guess for the number of files in current directory: "
	read guessnum
	guesstest $guessnum
done
echo "Congraulations! You guessed the number of lines of code correctly."