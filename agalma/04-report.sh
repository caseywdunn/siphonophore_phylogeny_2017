#!/bin/bash
#SBATCH -t 50
#SBATCH --qos=epscor-condo

set -e

export AGALMA_DB="/gpfs/data/cdunn/analyses/agalma-siphonophora-20170501_reduced.sqlite"

mkdir -p reports_reduced

agalma tabular_report --line --all --outdir reports_reduced 
agalma report -i SiphonophoraTree_reduced -o reports_reduced/SiphonophoraTree_reduced
agalma phylogeny_report -i SiphonophoraTree_reduced -o reports_reduced
