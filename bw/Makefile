PDFS := $(patsubst %.md,%.pdf,$(wildcard *.md))

all: $(PDFS)

%.pdf : %.md
	pandoc $< -o $@

clean:
	rm $(PDFS)

rebuild: clean all
