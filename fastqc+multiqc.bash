#!/bin/bash
#PBS -N fastqc
#PBS -l nodes=node01:ppn=4
#PBS -q batch
#PBS -V
#PBS -S /bin/bash

cd /home/wangyf/wyf/bmkdata/fastqc/2

source activate fastqc
fastqc -o ./qc /home/wangyf/wyf/bmkdata/fastqc/2/fastqc_result/ *.fq.gz -t 4
multiqc /data01/wangyf/project/CyprinusCarpio/2.fastqc/2.cln-fastqc/ -o /data01/wangyf/project/CyprinusCarpio/2.fastqc/2.cln-fastqc/