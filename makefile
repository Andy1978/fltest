all: fltest

LDFLAGS=`fltk-config --ldflags`
CXXFLAGS=`fltk-config --cxxflags` -Wall -Wextra

fltest: fltest.o 
	gcc $(CXXFLAGS) fltest.o -o fltest $(LDFLAGS)

fltest.o: fltest.cxx fltest.h
	gcc $(CXXFLAGS) -c fltest.cxx -o fltest.o

fltest.cxx: fltest.fl
	fluid -c fltest.fl
