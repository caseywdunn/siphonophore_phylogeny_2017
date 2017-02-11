##Siphonophore Transcriptome Phylogeny 2017 -- Character reconstruction

rm(list=ls())

#Libraries
library('magrittr')
library('tidyverse')
library('stringr')
library('vegan')
library("ape")
library("ggtree")
library("phangorn")
library("phytools")
library("picante")
library("geiger")
library("phylobase")
library("fields")
library("adephylo")
library("geomorph")

#Working directory
setwd("~/Dropbox/siphonophore_phylogeny_2017/character_coding")

#Load data
read.csv('main_characters.csv', header = T, sep = ',') -> cdata
rownames(cdata) = cdata$Species

#Load tree
tree = read.tree('ultimatephylo2017.tre')
tree$tip.label = str_replace_all(tree$tip.label,'_',' ')
tree <- drop.tip(tree, which(!(tree$tip.label %in% rownames(cdata))))
ultratree <- chronos(tree)

#Temporarily prune data
cdata %<>% filter(rownames(.) %in% tree$tip.label)
rownames(cdata) = cdata$Species
cdata %<>% .[-1]

#Named vectors for variables
sex = cdata$Sex
names(sex) = rownames(cdata)

nectosome = cdata$Nectosome
names(nectosome) = rownames(cdata)

necto_pos = cdata$Nectosome.position
names(necto_pos) = rownames(cdata)

necto_types = cdata$Nectophores
names(necto_types) = rownames(cdata)

palpons = cdata$Palpons
names(palpons) = rownames(cdata)

tentilla = cdata$Tentilla
names(tentilla) = rownames(cdata)

pneuma = cdata$Pneumatophore
names(pneuma) = rownames(cdata)

vrange = cdata$Vertical.range
names(vrange) = rownames(cdata)

bracts = cdata$Bract.types
names(bracts) = rownames(cdata)

#Depth pruned data
dpruned_data = cdata[which(!is.na(cdata$Depth.Median)), ]
dpruned_tree <- drop.tip(ultratree, which(!(tree$tip.label %in% rownames(dpruned_data))))
dpruned_data <- dpruned_data[match(dpruned_tree$tip.label, rownames(dpruned_data)),]

depth_median = dpruned_data$Depth.Median
names(depth_median) = rownames(dpruned_data)

depth_mean = dpruned_data$Depth.Mean
names(depth_mean) = rownames(dpruned_data)

depth_min = dpruned_data$Depth.Min
names(depth_min) = rownames(dpruned_data)

depth_max = dpruned_data$Depth.Max
names(depth_max) = rownames(dpruned_data)

depth_sd = dpruned_data$Depth.StdDev
names(depth_sd) = rownames(dpruned_data)

depth_range = depth_max - depth_min

abundance = dpruned_data$Depth.Count
names(abundance) = rownames(dpruned_data)

### Plots ###
par(ask=F)
par(mfrow=c(1,1))

plotTree(ultratree, lwd = 4)
<Return>

#Simmap SEX
make.simmap(ultratree, sex, nsim = 100) -> sex_sim
sex_sim %>% plotSimmap(lwd = 4, add = T)
colors = c("black", "red")
names(colors) = c("Dioeicous", "Monoeicous")
nodelabels(pie=(describe.simmap(sex_sim, plot=F)$ace) ,piecol=colors,cex=0.35)
add.simmap.legend(colors = colors, x=0.6*par()$usr[1],y=0.3*par()$usr[4],prompt=FALSE)
densityMap(sex_sim)
<Return>

plotTree(ultratree, lwd = 4)
<Return>

#Simmap NECTOSOME
make.simmap(ultratree, nectosome, nsim = 100) -> nectosome_sim
nectosome_sim %>% plotSimmap(lwd = 4, add = T)
colors = c("black", "red")
names(colors) = c("Absent", "Present")
nodelabels(pie=(describe.simmap(nectosome_sim, plot=F)$ace) ,piecol=colors,cex=0.35)
add.simmap.legend(colors = colors, x=0.6*par()$usr[1],y=0.3*par()$usr[4],prompt=FALSE)
densityMap(nectosome_sim)
<Return>

plotTree(ultratree, lwd = 4)
<Return>

#Simmap Nectosome.Position
make.simmap(ultratree, necto_pos, nsim = 100) -> necto_pos_sim
necto_pos_sim %>% plotSimmap(lwd = 4, add = T)
colors = c("black", "red", "green")
names(colors) = c("Dorsal", "No nectosome", "Ventral")
nodelabels(pie=(describe.simmap(necto_pos_sim, plot=F)$ace) ,piecol=colors,cex=0.35)
add.simmap.legend(colors = colors, x=0.6*par()$usr[1],y=0.3*par()$usr[4],prompt=FALSE)

plotTree(ultratree, lwd = 4)
<Return>

#Simmap NECTOPHORE TYPES
make.simmap(ultratree, necto_types, nsim = 100) -> necto_types_sim
necto_types_sim %>% plotSimmap(lwd = 4, add = T)
colors = c("black", "red", "green", "blue")
names(colors) = c("Multiple of one type", "None", "Two of one type", "Two of two types")
nodelabels(pie=(describe.simmap(necto_types_sim, plot=F)$ace) ,piecol=colors,cex=0.35)
add.simmap.legend(colors = colors, x=0.6*par()$usr[1],y=0.3*par()$usr[4],prompt=FALSE)

plotTree(ultratree, lwd = 4)
<Return>

#Simmap PALPONS
make.simmap(ultratree, palpons, nsim = 100) -> palpons_sim
palpons_sim %>% plotSimmap(lwd = 4, add = T)
colors = c("black", "red")
names(colors) = c("Absent", "Present")
nodelabels(pie=(describe.simmap(palpons_sim, plot=F)$ace) ,piecol=colors,cex=0.35)
add.simmap.legend(colors = colors, x=0.6*par()$usr[1],y=0.3*par()$usr[4],prompt=FALSE)
densityMap(palpons_sim)
<Return>

plotTree(ultratree, lwd = 4)
<Return>

#Simmap TENTILLA
make.simmap(ultratree, tentilla, nsim = 100) -> tentilla_sim
tentilla_sim %>% plotSimmap(lwd = 4, add = T)
colors = c("black", "red")
names(colors) = c("Absent", "Present")
nodelabels(pie=(describe.simmap(tentilla_sim, plot=F)$ace) ,piecol=colors,cex=0.35)
add.simmap.legend(colors = colors, x=0.6*par()$usr[1],y=0.3*par()$usr[4],prompt=FALSE)
densityMap(tentilla_sim)
<Return>

plotTree(ultratree, lwd = 4)
<Return>

#Simmap PNEUMATOPHORE
make.simmap(ultratree, pneuma, nsim = 100, pts=T) -> pneuma_sim
pneuma_sim %>% plotSimmap(lwd = 4, add = T)
colors = c("black", "red")
names(colors) = c("Absent", "Present")
nodelabels(pie=(describe.simmap(pneuma_sim, plot=F)$ace) ,piecol=colors,cex=0.35)
add.simmap.legend(colors = colors, x=0.6*par()$usr[1],y=0.3*par()$usr[4],prompt=FALSE)
densityMap(pneuma_sim)
<Return>

plotTree(ultratree, lwd = 4)
<Return>

#Simmap Vertical.Range
make.simmap(ultratree, vrange, nsim = 100) -> vrange_sim
vrange_sim %>% plotSimmap(lwd = 4, add = T)
colors = c("black", "cyan", "blue", "green", "red")
names(colors) = c("Bathypelagic", "Surface", "Mesopelagic", "Epipelagic", "Deep benthic")
nodelabels(pie=(describe.simmap(vrange_sim, plot=F)$ace) ,piecol=colors,cex=0.35)
add.simmap.legend(colors = colors, x=0.6*par()$usr[1],y=0.3*par()$usr[4],prompt=FALSE)

plotTree(ultratree, lwd = 4)
<Return>

#Simmap Bract.Types
make.simmap(ultratree, bracts, nsim = 100) -> bracts_sim
bracts_sim %>% plotSimmap(lwd = 4, add = T)
colors = c("black", "red", "green3", "blue")
names(colors) = c("No bracts", "1", "2", "4")
nodelabels(pie=(describe.simmap(bracts_sim, plot=F)$ace) ,piecol=colors,cex=0.35)
add.simmap.legend(colors = colors, x=0.6*par()$usr[1],y=0.3*par()$usr[4],prompt=FALSE)

#Contmap bract types
contMap(ultratree, bracts)
<Return>

#Contmap for depth vars
depth_value = depth_median
depthmap <- contMap(dpruned_tree, depth_value) %>% setMap(colors=c("cyan","blue","black"))
<Return>
plot(depthmap)
<Return>

#Phylomorphospace for depth vars
par(oma=rep(4,4))
phylomorphospace(depthmap$tree, cbind(depth_max, depth_min), xlab="Minimum depth (m)", ylab="Maximum depth (m)", colors=depthmap$cols, fsize=0.8, label = "horizontal")
#with time from root...
evotime = fastBM(dpruned_tree,nsim=2)
evotime_map <- contMap(dpruned_tree,evotime[,1])
evotime_map$cols[]<-rainbow(1001,start=0.7,end=0)
phylomorphospace(evotime_map$tree, cbind(depth_max, depth_min), xlab="Minimum depth (m)", ylab="Maximum depth (m)", colors=evotime_map$cols, fsize=0.8, label = "horizontal")
#add.color.bar(2,evotime_map$cols,title="Time from the root", lims=c(0,2000),digits=5)

par(oma=rep(1,4))
#Tree with bars for abundance
log_abundance = log(abundance)
log_abundance["Physalia physalis"] = 0
plotBranchbyTrait(dpruned_tree, log_abundance, mode = "tips")

#Uncertainty representing traitgram
contTrait <- depth_range
A<-fastAnc(dpruned_tree,contTrait,CI=TRUE)
paintree<-paintSubTree(dpruned_tree,node=length(dpruned_tree$tip)+1,"1")
trans<-as.character(floor(0:50/2))
trans[as.numeric(trans)<10]<- paste("0", trans[as.numeric(trans)<10],sep="")
# plot
for(i in 0:50){
  p<-i/length(trans)
  phenogram(dpruned_tree,c(contTrait,(1-p)*A$CI95[,1]+p*A$ace), colors=setNames(paste("#0000ff",trans[i+1],sep=""),1), add=i>0)
  phenogram(dpruned_tree,c(contTrait,(1-p)*A$CI95[,2]+p*A$ace), colors=setNames(paste("#0000ff",trans[i+1],sep=""),1), add=TRUE)
}
phenogram(dpruned_tree,c(contTrait,A$ace),add=TRUE, colors=setNames("black",1))

#Depth vaiables scattergram matrix
fancyTree(dpruned_tree,type="scattergram",X=cbind(depth_max, depth_min, depth_range, depth_median),control=list(spin=FALSE))

#GGtree
exp_tree = ultratree
exp_tree$edge.length = 10*ultratree$edge.length

dd = data.frame(taxa  = tree$tip.label, trait = sex)
p = ggtree(exp_tree, layout="rectangular") + xlim(NA, 23)
p = p %<+% dd + geom_tiplab(aes(color=trait), show_guide = FALSE, size = 3.5) + geom_tippoint(aes(color=trait), alpha=0.25)
p+theme(legend.position="right") + guides(color=guide_legend(title="Sex", reverse=T)) 
<Return>
  
p <- ggtree(ultratree)
p <- p + geom_tiplab(size=3)
f_cdata = sapply(cdata, as.factor) %>% as.data.frame %>% .[c(2,5:7)]
rownames(f_cdata) = rownames(cdata)
names(f_cdata)[4] = "Float"
gheatmap(p, f_cdata, offset = 0.4, width=0.5, colnames_position = 'top', font.size = 3)
<Return>

### Analyses ###
#Flat branch length tree
flat_tree = tree
flat_tree$edge.length = rep(mean(flat_tree$edge.length),length(flat_tree$edge.length))

#Phylogenetic signal in bract number
phylosignal(bracts, ultratree)
physignal(bracts, ultratree)

#Phylogenetic signal in Nectosome, Palpons, tentilla
multiPhylosignal(as.matrix(cdata[,c(2,5,6)]), ultratree)

#Phylogenetic signal in VARS depth values
physignal(dpruned_data[,c(13,14,15,17,18)], dpruned_tree)
physignal(depth_range, dpruned_tree)
multiPhylosignal(dpruned_data[,c(13,14,15,17,18)], dpruned_tree)

#Phylogenetic PCA for depth Data
phyl.pca(dpruned_tree, dpruned_data[,c(13,14,15,17,18)], mode="corr") %>% biplot
<Return>

#Phylogenetic ANOVA for depth detween character-sharing groups
phylANOVA(dpruned_tree, dpruned_data$Nectosome.position, as.numeric(depth_median))
phylANOVA(dpruned_tree, dpruned_data$Sex, as.numeric(depth_median))
phylANOVA(dpruned_tree, dpruned_data$Nectosome, as.numeric(depth_median))
phylANOVA(dpruned_tree, dpruned_data$Nectophores, as.numeric(depth_median))
phylANOVA(dpruned_tree, dpruned_data$Palpons, as.numeric(depth_median))
phylANOVA(dpruned_tree, dpruned_data$Tentilla, as.numeric(depth_median))
phylANOVA(dpruned_tree, dpruned_data$Pneumatophore, as.numeric(depth_median))

