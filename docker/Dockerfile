FROM rocker/tidyverse

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
  libfftw3-dev \
  libtiff5-dev \
  libglu1-mesa-dev \
  lmodern \
  texlive-latex-extra \
  texlive-fonts-recommended \
  default-jdk \
  imagemagick


RUN install2.r --error \
    --deps TRUE \
    -r 'http://cran.rstudio.com' \
    -r 'http://www.bioconductor.org/packages/release/bioc' \
    cowplot \
    ggtree \
    GGally \
    fields \
    seriation \
    RGraphics \
    factoextra \
    FactoMineR \
    edgeR \
    treeio \
    ape \
    picante \
    phytools \
    vegan \
    ggtree \
    phangorn \
    geiger \
    phylobase \
    adephylo \
    geomorph \
    phylolm

RUN Rscript -e "library(devtools); devtools::install_github('caseywdunn/hutan')"
RUN Rscript -e "library(devtools); devtools::install_github('caseywdunn/agalmar')"