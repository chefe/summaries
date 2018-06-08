SUBFOLDERS = bw cna iteo isf ad fkom pmb mod dbs vsk mc dawa ipcv appe pmre ci

all:
	# make subfolders
	$(foreach var,$(SUBFOLDERS),make -C $(var);)

	# copy all pdfs into a single folder
	mkdir -p summaries
	$(foreach var,$(SUBFOLDERS),cp $(var)/zusammenfassung.pdf summaries/zusammenfassung-$(var).pdf;)

	# generate zip file contain all summaries
	zip -r summaries.zip summaries/

clean:
	# clean all subfolders
	$(foreach var,$(SUBFOLDERS),make clean -C $(var);)

	# delete folder with all pdfs
	rm -rf summaries

	# remove zip file with summaries
	rm -f summaries.zip

rebuild: clean all
