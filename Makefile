CXX=g++
CXXFLAGS=-W -Wall -ansi -pedantic
LDFLAGS=
EXEC=sfml-exec
LIB_LINK=-lsfml-graphics -lsfml-window -lsfml-system

all: $(EXEC)

sfml-exec:main.cpp
	$(CXX) -o sfml-exec  $< $(CXXFLAGS) $(LIB_LINK)

clean:
	rm -rf *.o

mrproper: clean
	rm -rf $(EXEC)
