#!/bin/bash

echo "**********  Montando as reads  ************"
./presto-0.5.4/bin/AssemblePairs.py align -1 file_1.fastq -2 file_2.fastq --coord illumina --rc tail --outname out --log out_AP.log --failed

echo "**********  Cortar sequencias de baixa qualidade q30  **********"
./presto-0.5.4/bin/FilterSeq.py quality -s out_assemble-pass.fastq -q 30 \
--outname out_q30 --log out_q30.log --failed 

echo "**********  Identificacao dos primers **********"
#FWD
./presto-0.5.4/bin/MaskPrimers.py align -s out_q30_quality-pass.fastq -p primerVL.fasta --mode tag --outname out_FWD --log out_MPV.log --failed --maxerror 0.5
#REV
./presto-0.5.4/bin/MaskPrimers.py align -s out_FWD_primers-pass.fastq -p primerJL.fasta --mode tag --outname out_REV --log out_MPJ.log --failed --revpr --maxerror 0.5

echo "**********  Analise de duplicadas  ***********"
./presto-0.5.4/bin/CollapseSeq.py -s out_REV_primers-pass.fastq -n 20 --inner --uf primerJL.fasta --cf primerVL.fasta --act set --outname out

echo "**********  Analise de grupos  ************"
./presto-0.5.4/bin/SplitSeq.py group -s out_collapse-unique.fastq -f DUPCOUNT --num 2 --outname out
