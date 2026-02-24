all: bienvenue

bienvenue: bienvenue.o fonction-bienvenue.o
	g++ -o bienvenue bienvenue.o fonction-bienvenue.o

bienvenue.o: bienvenue.cpp
	g++ -c -Wall -std=c++11 bienvenue.cpp

fonction-bienvenue.o: fonction-bienvenue.cpp
	g++ -c -Wall -std=c++11 fonction-bienvenue.cpp

rebuild:
	rm -f *.o bienvenue
	make
