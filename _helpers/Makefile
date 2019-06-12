ROOT_DIR:=$(shell dirname $(abspath $(lastword $(MAKEFILE_LIST))))
BASE_NAME := $(notdir $(basename $(ROOT_DIR)))
OUTPUT_FOLDER := $(ROOT_DIR)/../summaries
MD_SOURCES := $(sort $(wildcard *.md))

PDF_OUTPUT := $(OUTPUT_FOLDER)/pdf/zusammenfassung-$(BASE_NAME).pdf
EPUB_OUTPUT := $(OUTPUT_FOLDER)/epub/zusammenfassung-$(BASE_NAME).epub
MOBI_OUTPUT := $(OUTPUT_FOLDER)/mobi/zusammenfassung-$(BASE_NAME).mobi
HTML_OUTPUT := $(OUTPUT_FOLDER)/html/zusammenfassung-$(BASE_NAME).html

all: pdf epub mobi html

pdf: $(PDF_OUTPUT)

epub: $(EPUB_OUTPUT)

mobi: $(MOBI_OUTPUT)

html: $(HTML_OUTPUT)

%.pdf: $(MD_SOURCES)
	mkdir -p "$(dir $(abspath $@))"
	pandoc $+ -o $@ --template="../_helpers/template.tex" --top-level-division=section variables.yaml

%.mobi: $(EPUB_OUTPUT)
	mkdir -p "$(dir $(abspath $@))"
	kindlegen $< -o $(notdir $(basename $@)).mobi || echo
	mv "$(dir $(abspath $<))$(notdir $(basename $@)).mobi" $@

%.epub: $(MD_SOURCES)
	mkdir -p "$(dir $(abspath $@))"
	pandoc $+ -o $@ --top-level-division=section --toc variables.yaml

%.html: $(MD_SOURCES)
	mkdir -p "$(dir $(abspath $@))"
	pandoc $+ -o $@ --css="../_helpers/template.css" --self-contained variables.yaml

clean:
	rm -f $(PDF_OUTPUT) $(EPUB_OUTPUT) $(MOBI_OUTPUT) $(HTML_OUTPUT)

rebuild: clean all

