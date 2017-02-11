#!/bin/bash
#SBATCH -t 48:00:00
#SBATCH --mem=120G
#SBATCH -c 20
/gpfs/runtime/opt/raxml/8.2.0/avx/bin/raxmlHPC-PTHREADS -T 20 -s alignment.fa -n ml -m PROTGAMMAWAG -w /gpfs/scratch/mhowison/SiphonophoraTree/speciestree-294 -p 87167481239 -o Nematostella_vectensis
raxmlHPC-PTHREADS -m PROTGAMMAWAG -p 87167481239 -f b -t RAxML_bestTree.ml -z RAxML_bootstrap.alignment.fa -n speciestree
Rscript ~/code/siphonophora-expression/agalma/root-tree.R RAxML_bipartitions.speciestree
agalma export alignments -o phyldog-20161113/multalign 289
