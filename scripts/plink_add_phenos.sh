# add phenos from fam file
awk '{print $1,$2,$6}' $FAMFILE.fam > $OUTFILE.pheno

plink --bfile $GENO --pheno $OUTFILE.pheno --make-bed --out $OUTFILE