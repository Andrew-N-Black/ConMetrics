#!/bin/sh
#SBATCH -A fnrdewoody
#SBATCH -N 1
#SBATCH -n 64
#SBATCH -t 14-00:00:00
#SBATCH --job-name=angsd_call
#SBATCH -e angsd.err
#SBATCH -o angsd.o
#SBATCH --mem=120G



module purge
module load biocontainers
module load angsd


#BCF fFor autsomes only
angsd -b bams_auto -doCounts -doBcf 1 -gl 1 -dopost 1 -domajorminor 1 -domaf 1 -minInd 26 -minMaf 0.05 -skipTriallelic 1 -P 32 -minQ 30 -setMinDepthInd 3 -out autosomes-DOC3-maf.05
