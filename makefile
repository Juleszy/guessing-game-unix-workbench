
README.md: 
	echo "# Guessing Game - Unix Workbench" > README.md
	echo "## Ran Makefile On" >> README.md
	date >> README.md
	echo "## Number of code lines in guessingame.sh" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md