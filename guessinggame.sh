#!/usr/bin/env bash
# File: guessinggame.sh
function guessinggame {
	answer=$(ls -l | wc -l)
	let answer=$answer-1
	correct=0
	while [[ $correct -eq 0 ]]
	do
		echo "How many files are in current directory?"
		read response
		echo "You're entered: $response"
		if [[ $response -eq $answer ]]
		then
			echo "Our congratulations! You're  correct!"
			correct=1
		elif [[ $response -lt $answer ]]
		then
			echo "That's too low! Please, try again."
		else
			echo "That's too high! Please, try again."
		fi
	done
}
echo "The guessing game is start!"
guessinggame
echo "The guessing game is end!"

