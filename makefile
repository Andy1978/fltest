all: fltest

LDFLAGS=`fltk-config --ldflags`
CXXFLAGS=`fltk-config --cxxflags` -Wall -Wextra

fltest: fltest.o 
	g++ $(CXXFLAGS) fltest.o -o fltest $(LDFLAGS)

fltest.o: fltest.cxx fltest.h
	g++ $(CXXFLAGS) -c fltest.cxx -o fltest.o

fltest.cxx: fltest.fl
	fluid -c fltest.fl

clean:
	rm -f fltest.cxx fltest.h *.o fltest
