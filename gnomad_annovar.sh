# send snp list to ensembl http://uswest.ensembl.org/Tools/VEP 
# obtain vcf result 

convert2annovar.pl -format vcf4 iv3gy3APiqTEz1aF.vcf > snplist.avinput  

annotate_variation.pl -filter -dbtype gnomad30_genome -buildver hg38 ensembl/snplist.avinput .
