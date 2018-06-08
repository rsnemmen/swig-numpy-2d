APPS = numpyOpencv

all: ${APPS}

%: %.cpp
	swig -python -c++ $@.i
	g++ -c -fPIC -I/usr/include/python2.7 $^ $@_wrap.cxx
	g++ -shared $@.o $@_wrap.o -o _$@.so

clean:
	rm -r ${APPS}
