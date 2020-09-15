ABC.exe:main.o fact.o reverse.o Palindrome.o
	gcc -o ABC.exe main.o fact.o reverse.o Palindrome.o
main.o:main.c
	gcc -c main.c
fact.o:fact.c
	gcc -c fact.c
reverse.o:reverse.c
	gcc -c reverse.c
Palindrome.o:Palindrome.c
	gcc -c Palindrome.c
