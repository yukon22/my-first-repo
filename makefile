all: README.md

README.md: guessinggame.sh

	touch README.md
	echo "# The UNIX Workbench Assignment by Kurmanaliev" > README.md

	echo "\nThe date and time of this run: $$(date)" >> README.md

	echo "\nguessinggame.sh contains the number of lines:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
