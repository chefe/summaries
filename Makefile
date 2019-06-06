SUBDIRS := bw cna iteo isf ad fkom pmb mod dbs vsk mc dawa ipcv appe pmre ci gdf cg pcp enapp dl4g ios aiso sprg swat

.PHONY: all summaries clean rebuild $(SUBDIRS)

all: _helpers/template.tex
	$(MAKE) -j8 summaries
	zip -r summaries.zip summaries/

summaries: _helpers/template.css $(SUBDIRS)

rebuild: clean all

clean:
	rm -rf summaries summaries.zip _helpers/template.css

$(SUBDIRS):
	$(MAKE) -C $@

_helpers/template.css:
	curl -L https://gist.githubusercontent.com/chefe/afd3298e638eb82b7ae139ad282f3eb3/raw/62b874d98f72005d18b9b2a05d3be6815959b51b/gh-pandoc.css > _helpers/template.css
