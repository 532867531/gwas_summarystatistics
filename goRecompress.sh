for one in `ls *.tsv.bgz`
do
	echo $one
	mv ${one} ${one/tsv.bgz/tsv.gz}
	gunzip ${one/tsv.bgz/tsv.gz}
	gzip ${one/tsv.bgz/tsv}
done
