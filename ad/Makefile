all:
	pandoc *.md -o zusammenfassung.pdf --template="../_helpers/template.tex" --listings variables.yaml

clean:
	rm -f zusammenfassung.pdf

rebuild: clean all
