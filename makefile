# Generate README.md with the following: 
# The title of the project.
# The date and time at which make was run.
# The number of lines of code contained in guessinggame.sh

#clean:
#	rm README.md

README.md: 
	echo "# Guessing Game - Unix Workbench" > README.md
	echo "## Date Makefile Ran" >> README.md
	date >> README.md
	echo "## Number of code lines in guessingame.sh" >> README.md
	wc -l guessinggame.sh | grep [0-9]+ >> README.md

