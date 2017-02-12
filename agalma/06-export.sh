#!/bin/bash
#SBATCH -t 20
#SBATCH --mem=8G

export AGALMA_DB="/gpfs/data/cdunn/analyses/agalma-siphonophora-20170209.sqlite"

ASSEMBLE_IDS=$(agalma diagnostics runid -n assemble)
IMPORT_IDS=$(agalma diagnostics runid -n import)

PHYLDOG_DIR=/gpfs/data/cdunn/analyses/phyldog-20161113/ResultFiles

agalma export_expression \
  --id SiphonophoraTree \
  --sequences $ASSEMBLE_IDS $IMPORT_IDS \
  --speciestree $PHYLDOG_DIR/StartingTree.tree \
  --speciestree_numbered $PHYLDOG_DIR/OutputSpeciesTree_ConsensusNumbered.tree \
  --genetrees $PHYLDOG_DIR/*.ReconciledTree >export.json
