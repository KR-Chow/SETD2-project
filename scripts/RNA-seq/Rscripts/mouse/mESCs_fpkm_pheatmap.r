#!/usr/bin/env Rscript
# exomepeak Script 2
# R script
# Define parameters and load library
library("ggplot2")
setwd("/data/zhoukr/hhl_setd2_m6a/analysis/RNA-seq/mESCs/heatmap/heatmapData/fpkm")

## fpkm
myData <- read.table("mESCs_RSEM_input_18849962_heatmap.txt",sep="\t",header = TRUE, row.names="GeneName")
#remove rows that sd == 0
myData <- myData[apply(myData, MARGIN = 1, FUN = function(x) sd(x) != 0),]
condition <- data.frame("Condition" = c("shContD0", "shContD6", "shSETD2D0", "shSETD2D6"))
rownames(condition) <- colnames(myData)

pheatmap(myData, annotation = condition, cluster_rows = TRUE, cluster_cols = TRUE, show_colnames = F,
  scale="row", clustering_method="mcquitty", show_rownames = T, height=9, with=6, legend = TRUE,
  filename = "mESCs_RSEM_input_18849962_heatmap.pdf")

myData <- read.table("mESCs_RSEM_input_18509334_heatmap.txt",sep="\t",header = TRUE, row.names="GeneName")
#remove rows that sd == 0
myData <- myData[apply(myData, MARGIN = 1, FUN = function(x) sd(x) != 0),]
condition <- data.frame("Condition" = c("shContD0", "shContD6", "shSETD2D0", "shSETD2D6"))
rownames(condition) <- colnames(myData)

pheatmap(myData, annotation = condition, cluster_rows = TRUE, cluster_cols = TRUE, show_colnames = F,
    scale="row", clustering_method="mcquitty", show_rownames = T, height=9, with=6, legend = TRUE,
    filename = "mESCs_RSEM_input_18509334_heatmap.pdf")

myData <- read.table("mESCs_RSEM_input_mmu04550_stem_heatmap.txt",sep="\t",header = TRUE, row.names="GeneName")
#remove rows that sd == 0
myData <- myData[apply(myData, MARGIN = 1, FUN = function(x) sd(x) != 0),]
condition <- data.frame("Condition" = c("shContD0", "shContD6", "shSETD2D0", "shSETD2D6"))
rownames(condition) <- colnames(myData)

pheatmap(myData, annotation = condition, cluster_rows = TRUE, cluster_cols = TRUE, show_colnames = F,
    scale="row", clustering_method="mcquitty", show_rownames = T, height=9, with=6, fontsize = 7, legend = TRUE,
    filename = "mESCs_RSEM_input_mmu04550_stem_heatmap.pdf")

myData <- read.table("mESCs_RSEM_input_mmu04550_differ_heatmap.txt",sep="\t",header = TRUE, row.names="GeneName")
#remove rows that sd == 0
myData <- myData[apply(myData, MARGIN = 1, FUN = function(x) sd(x) != 0),]
condition <- data.frame("Condition" = c("shContD0", "shContD6", "shSETD2D0", "shSETD2D6"))
rownames(condition) <- colnames(myData)

pheatmap(myData, annotation = condition, cluster_rows = TRUE, cluster_cols = TRUE, show_colnames = F,
    scale="row", clustering_method="mcquitty", show_rownames = T, height=9, with=6, fontsize = 7, legend = TRUE,
    filename = "mESCs_RSEM_input_mmu04550_differ_heatmap.pdf")



# log2(fpkm+0.01)
myData <- read.table("mESCs_RSEM_input_18849962_heatmap_log2.txt",sep="\t",header = TRUE, row.names="GeneName")
#remove rows that sd == 0
myData <- myData[apply(myData, MARGIN = 1, FUN = function(x) sd(x) != 0),]
condition <- data.frame("Condition" = c("shContD0", "shContD6", "shSETD2D0", "shSETD2D6"))
rownames(condition) <- colnames(myData)

pheatmap(myData, annotation = condition, cluster_rows = TRUE, cluster_cols = TRUE, show_colnames = F,
	scale="row", clustering_method="mcquitty", show_rownames = T, height=9, with=6, legend = TRUE,
	filename = "mESCs_RSEM_input_18849962_heatmap_log2.pdf")

myData <- read.table("mESCs_RSEM_input_18509334_heatmap_log2.txt",sep="\t",header = TRUE, row.names="GeneName")
#remove rows that sd == 0
myData <- myData[apply(myData, MARGIN = 1, FUN = function(x) sd(x) != 0),]
condition <- data.frame("Condition" = c("shContD0", "shContD6", "shSETD2D0", "shSETD2D6"))
rownames(condition) <- colnames(myData)

pheatmap(myData, annotation = condition, cluster_rows = TRUE, cluster_cols = TRUE, show_colnames = F,
    scale="row", clustering_method="mcquitty", show_rownames = T, height=9, with=6, legend = TRUE,
    filename = "mESCs_RSEM_input_18509334_heatmap_log2.pdf")

myData <- read.table("mESCs_RSEM_input_mmu04550_stem_heatmap_log2.txt",sep="\t",header = TRUE, row.names="GeneName")
#remove rows that sd == 0
myData <- myData[apply(myData, MARGIN = 1, FUN = function(x) sd(x) != 0),]
condition <- data.frame("Condition" = c("shContD0", "shContD6", "shSETD2D0", "shSETD2D6"))
rownames(condition) <- colnames(myData)

pheatmap(myData, annotation = condition, cluster_rows = TRUE, cluster_cols = TRUE, show_colnames = F,
    scale="row", clustering_method="mcquitty", show_rownames = T, height=9, with=6, fontsize = 7, legend = TRUE,
    filename = "mESCs_RSEM_input_mmu04550_stem_heatmap_log2.pdf")

myData <- read.table("mESCs_RSEM_input_mmu04550_differ_heatmap_log2.txt",sep="\t",header = TRUE, row.names="GeneName")
#remove rows that sd == 0
myData <- myData[apply(myData, MARGIN = 1, FUN = function(x) sd(x) != 0),]
condition <- data.frame("Condition" = c("shContD0", "shContD6", "shSETD2D0", "shSETD2D6"))
rownames(condition) <- colnames(myData)

pheatmap(myData, annotation = condition, cluster_rows = TRUE, cluster_cols = TRUE, show_colnames = F,
    scale="row", clustering_method="mcquitty", show_rownames = T, height=9, with=6, fontsize = 7, legend = TRUE,
    filename = "mESCs_RSEM_input_mmu04550_differ_heatmap_log2.pdf")


