egrep "9:116018501:C:G|9:116018541:G:A|9:116019431:A:G|9:116019440:C:T|9:116019444:T:C" {}
rm ${one}.final;for one in `ls *.gz.chr9`;do head ${one} > ${one}.final;egrep -f snps.SLC31A1.txt  ${one} >> ${one}.final;done
rm ${one}.exonic.final;for one in `ls *.gz.chr9`;do head ${one} > ${one}.final;egrep -f snps.SLC31A1.exonic.txt  ${one} >> ${one}.exonic.final;done
for one in `ls *.chr9.final`;do awk -v file=${one} -v OFS="\t" '{print file,$0}' ${one} >> final.txt;done
