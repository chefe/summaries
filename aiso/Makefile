all:
	pandoc *.md -o zusammenfassung.pdf --template="../_helpers/template.tex" --top-level-division=section variables.yaml

clean:
	rm -f zusammenfassung.pdf

rebuild: clean all
