library(ape)

args <- commandArgs(trailingOnly=TRUE)

species_tree <- read.tree(args[1])

species_tree = ape::root(species_tree, c("Nematostella_vectensis", "Aiptasia_pallida"), resolve.root=TRUE)
species_tree = ape::ladderize(species_tree)

# Write the rooted species tree to a file as a phylogram
write.tree(species_tree, file="species_phylogram.tre")

# Write the rooted species cladogram to a file for external analyses
species_cladogram = species_tree
species_cladogram$edge.length = NULL
write.tree(species_cladogram, file="species_cladogram.tre")
