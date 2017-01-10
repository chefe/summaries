all:
	pandoc *.md -o Zusammenfassung.pdf --template="../_helpers/template.tex" variables.yaml

clean:
	rm Zusammenfassung.pdf

rebuild: clean all
