

#Create the following directory structure:
cd /scratch/bell/blackan/Ammospiza_caudacuta/sra/analysis/LOAD/

tree SPAR.1.0/
SPAR.1.0/
├── cds.fa
├── genes.gtf
├── protein.fa
└── sequences.fa

0 directories, 4 files


snpEff build -Xmx8G -c snpEff.config -v SPAR.1.0 -noCheckCds -noCheckProtein
snpEff ann -stats -c snpEff.config -no-downstream -no-intergenic -no-intron -no-upstream -no-utr -v SPAR.1.0 -Xmx8G sparrow_autosomes.genotypes.vcf > sparrow_autosomes.genotypesAnn.vcf

#Count number of high impact variants / total variants for each allopatric species seperately
grep = 'HIGH'  sparrow_autosomes.genotypesAnn.vcf | wc -l

#Create the following directory structure:
cd /scratch/bell/blackan/towhee/sra/analysis/LOAD/

tree TOW.1.0/
TOW.1.0/
├── cds.fa
├── genes.gtf
├── protein.fa
└── sequences.fa

0 directories, 4 files


snpEff build -Xmx8G -c snpEff.config -v TOW.1.0 -noCheckCds -noCheckProtein
snpEff ann -stats -c snpEff.config -no-downstream -no-intergenic -no-intron -no-upstream -no-utr -v SPAR.1.0 -Xmx8G towhee_autosomes.genotypes.vcf > towhee_autosomes.genotypesAnn.vcf

#Count number of high impact variants / total variants for each region (OREG,CCAL,INYO,SCAL) seperately
grep = 'HIGH'  towhee_autosomes.genotypesAnn.vcf | wc -l
