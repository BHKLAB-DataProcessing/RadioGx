FROM registry.codeocean.com/codeocean/r-base:4.0.0-ubuntu18.04

ARG DEBIAN_FRONTEND=noninteractive

RUN Rscript -e 'install.packages("gdata")' 
RUN Rscript -e 'install.packages("abind")' 
RUN Rscript -e 'install.packages("BiocManager")' 
RUN Rscript -e 'BiocManager::install(c("Biobase"))'
RUN Rscript -e 'BiocManager::install(c("PharmacoGx"))'
RUN Rscript -e 'BiocManager::install(c("RadioGx"))'
RUN Rscript -e 'install.packages("biocompute")'
