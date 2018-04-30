CXX?=g++
# Make the name of the executable the same as the name of the directory this 
# code is in
EXE:=$(shell pwd | awk '{n=split($$1, A, "/"); print A[n]}')
INC:=-I.
LIB:=-lpthread

SOURCES:=$(wildcard *.cpp)
OBJECTS:=$(patsubst %.cpp, %.o, $(SOURCES))

.PHONY: all
all: $(EXE)

$(EXE): $(OBJECTS)
	$(CXX) -g $^ $(LIB) -o $@
	
%.o: %.cpp
	$(CXX) -g $(INC) -c $^ -o $@
		
.PHONY: clean
clean:
	rm -f $(EXE) *.o

