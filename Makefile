all:
	${CC} libbar.c -fPIC -o libbar.so -shared
	${CC} libfoo.c -fPIC -L. -lbar -o libfoo.so -shared
	${CC} prog.c -L. -lfoo -o prog
