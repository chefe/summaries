SUBFOLDERS = bw cna

all:
	$(foreach var,$(SUBFOLDERS),make -C $(var);)

clean:
	$(foreach var,$(SUBFOLDERS),make clean -C $(var);)

rebuild: clean all
