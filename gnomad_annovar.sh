# send snp list to ensembl http://uswest.ensembl.org/Tools/VEP 
# obtain vcf result 

convert2annovar.pl -format vcf4 iv3gy3APiqTEz1aF.vcf > snplist.avinput  

annotate_variation.pl -filter -dbtype gnomad30_genome -buildver hg38 ensembl/snplist.avinput .

table_annovar.pl iv3gy3APiqTEz1aF.vcf /project/desmith_488/kerenxu/gnomad/humandb/ -buildver hg38 -out annotated -remove -protocol gnomad30_genome -operation f -vcfinput --dot2underline --polish --thread 20 --nastring .
