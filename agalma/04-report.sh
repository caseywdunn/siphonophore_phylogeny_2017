#!/bin/bash
#SBATCH -t 50
#SBATCH --qos=epscor-condo

set -e

export AGALMA_DB="/gpfs/data/cdunn/analyses/agalma-siphonophora-20170501.sqlite"

mkdir -p reports

agalma tabular_report --line --all --outdir reports 
agalma report -i SiphonophoraTree -o reports/SiphonophoraTree
agalma phylogeny_report -i SiphonophoraTree -o reports
