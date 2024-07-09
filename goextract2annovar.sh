for one in `ls *.chr9`;do echo ${one};awk 'OFS="\t"{split($1,a,":");print a[1],a[2],a[2],a[3],a[4],$11}' ${one}>${one}.annovar.input;done
