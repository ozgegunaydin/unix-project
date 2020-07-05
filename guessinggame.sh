#!/usr/bin/env bash
num_of_files=$(find . -maxdepth 1 -type f | wc -l)

echo "Enter your first guess: "
read guess
while [[ $guess -ne $num_of_files ]]; 
do
	if [[ $guess -gt $num_of_files ]]; 
	then
		#statements
		echo "Your guess was too high."
	else
		echo "Your guess was too low."
	fi
	echo "Make a new guess: "
	read guess
done