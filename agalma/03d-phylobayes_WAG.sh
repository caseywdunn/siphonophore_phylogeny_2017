#!/bin/bash
#SBATCH -J BayesianAnalysis_chainWAG
#SBATCH --nodes=8-8
#SBATCH --ntasks-per-node=8
#SBATCH -t 12-00:00:00
#SBATCH --qos=epscor-condo
#SBATCH --mail-user=catriona_munro@brown.edu
#SBATCH -n 64
#SBATCH --mem=60G
#SBATCH -o chain1-trimmed_WAG.out
#SBATCH -e chain1-trimmed_WAG.out

set -e

module load phylobayes/1.7b-mpi

#change chain number to run any number of chains (I ran 4)

srun pb_mpi -d /gpfs/data/cdunn/cmunro/siphonophore_phylogeny_2017/agalma/Outfiles/alignment.phy -catfix C20 -wag -dgam 4 chain1_trimmed60_WAG


