library ("data.table")
library(stringr)
library(plotly)
library(ggplot2)
library(scatterplot3d)
library(scatterD3)
library("car")
library("rgl")
library(plotrix)
library(MASS)
library(lattice)

in_file <- 'C:\\Users\\ZVM_cm\\Documents\\LVM-Accessibility\\LVM2015export.att'

my_mat <- fread(in_file, sep="auto", sep2="auto", skip="8", header = TRUE, dec=".")

