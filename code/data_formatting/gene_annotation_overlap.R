# this is a quick adhoc R script that took the raw data Antonio sent me and extracts the relevant columns for gene-annotation scraping

library(devtools)
library(data.table)
library(magrittr)
library(stringr)
library(tidyverse)

select = dplyr::select
filter = dplyr::filter
arrange = dplyr::arrange

data <- read.table("/nfs/corenfs/INTMED-Speliotes-home/craut/wkspce/gene_scraper/data/raw/gene_annotation_overlap.txt",header = TRUE)
genes <- data$theMostLikelyLocus
write.table(genes,col.names = F, row.names = F,quote=F,file = "/nfs/corenfs/INTMED-Speliotes-home/craut/wkspce/gene_scraper/data/gene_list/genes.list")
