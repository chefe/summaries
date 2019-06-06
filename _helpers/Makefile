ROOT_DIR:=$(shell dirname $(abspath $(lastword $(MAKEFILE_LIST))))
BASE_NAME := $(notdir $(basename $(ROOT_DIR)))
OUTPUT_FOLDER := $(ROOT_DIR)/../summaries/$(BASE_NAME)
OUTPUT_PATH := $(OUTPUT_FOLDER)/zusammenfassung-$(BASE_NAME)
MD_SOURCES := $(sort $(wildcard *.md))

all: $(OUTPUT_PATH).pdf $(OUTPUT_PATH).epub $(OUTPUT_PATH).mobi $(OUTPUT_PATH).html

rebuild: clean all

%.pdf: $(MD_SOURCES)
	mkdir -p $(OUTPUT_FOLDER)
	pandoc $+ -o $@ --template="../_helpers/template.tex" --top-level-division=section variables.yaml

%.mobi: $(OUTPUT_PATH).epub
	kindlegen $< -o $(notdir $(basename $@)).mobi || echo

%.epub: $(MD_SOURCES)
	mkdir -p $(OUTPUT_FOLDER)
	pandoc $+ -o $@ --top-level-division=section --toc variables.yaml

%.html: $(MD_SOURCES)
	mkdir -p $(OUTPUT_FOLDER)
	pandoc $+ -o $@ --css="../_helpers/template.css" --self-contained variables.yaml

clean:
	rm -rf $(OUTPUT_FOLDER)

