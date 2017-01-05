PDFS := $(patsubst %.md,%.pdf,$(wildcard *.md))

all: $(PDFS)

%.pdf : %.md
	pandoc $< -o $@ -f markdown -t latex

clean:
	rm $(PDFS)

rebuild: clean all
