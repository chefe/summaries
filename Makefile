subdirs := bw cna iteo isf ad fkom pmb mod dbs vsk mc dawa ipcv appe pmre ci gdf cg pcp enapp dl4g ios

.PHONY: all zip folder clean rebuild $(subdirs)

all: $(subdirs)

clean:
	rm -f ./*/zusammenfassung.pdf
	rm -rf summaries
	rm -f summaries.zip

rebuild: clean all

zip:
	$(MAKE) clean
	$(MAKE) -j8 all
	zip -r summaries.zip summaries/

folder:
	mkdir -p summaries

$(subdirs): folder
	$(MAKE) -C $@
	cp $@/zusammenfassung.pdf summaries/zusammenfassung-$@.pdf

