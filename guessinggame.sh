# If the user's answer is incorrect the user should be advised that their guess was either too low or too high and then they should be prompted to try to guess again.
# If the user's guess is correct then they should be congratulated and the program should end.
# The program should not end until the user has entered the correct number of files in the current directory.
# The program should be able to be run by entering bash guessinggame.sh into the console.
# The program should contain at least one function, one loop, and one if statement.
# The program should be more than 20 lines of code but less than 50 lines of code.

codelines=$( wc -l guessinggame.sh | egrep -o "[0-9]+" )
guessnum=0

function linecompare {
	if [[ $guessnum -lt $codelines ]]
	then
		echo "Your guess was too low. Try again."
	elif [[ $guessnum -gt $codelines ]]
	then
		echo "Your guess was too high. Try again."
	fi
}

while [[ $guessnum -ne $codelines ]]
do
	echo "Please enter your guess for the number of lines of code in guessinggame.sh: "
	read guessnum
	linecompare $guessnum
done
echo "Congraulations! You guessed the number of lines of code correctly."