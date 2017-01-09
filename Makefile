all:
	make -C bw

clean:
	make clean -C bw

rebuild: clean all
