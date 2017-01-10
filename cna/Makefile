all:
	pandoc *.md -o zusammenfassung.pdf --template="../_helpers/template.tex" variables.yaml

clean:
	rm -f zusammenfassung.pdf

rebuild: clean all
