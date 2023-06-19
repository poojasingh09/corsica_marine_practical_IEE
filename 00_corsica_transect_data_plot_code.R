
#pooja.singh09@gmail.com
#june2023
#corsica marine prac
# code runs in R
# text preceded by a hashtag (#) is comments, it is not code

#1 load libraries

library(tidyverse) #if library is missing then install it using 'install.packages("tidyverse")
library(ggplot2)
library(gridExtra)


####1 make a barplot of mean counts for each species

a <- read.table("2023_corsica_transect_data_plot2.txt", header=T, sep="\t")
ggp <- ggplot(a, aes(fct_inorder(species), t1_mean)) + geom_bar(stat = "identity", fill="lightblue1") + theme(panel.grid = element_blank(), panel.background = element_blank())
p1 <- ggp + coord_flip() 

ggp <- ggplot(a, aes(fct_inorder(species), t2_mean)) + geom_bar(stat = "identity", fill="lightblue2") + theme(axis.text.y=element_blank(), axis.ticks.y=element_blank(), axis.title.y=element_blank(), panel.grid = element_blank(), panel.background = element_blank())
p2 <- ggp + coord_flip() 

ggp <- ggplot(a, aes(fct_inorder(species), t3_mean)) + geom_bar(stat = "identity", fill="lightblue") + theme(axis.text.y=element_blank(), axis.ticks.y=element_blank(), axis.title.y=element_blank(), panel.grid = element_blank(), panel.background = element_blank())
p3 <- ggp + coord_flip() 


ggp <- ggplot(a, aes(fct_inorder(species), t4_mean)) + geom_bar(stat = "identity", fill="darkturquoise") + theme(axis.text.y=element_blank(), axis.ticks.y=element_blank(), axis.title.y=element_blank(), panel.grid = element_blank(), panel.background = element_blank())
p4 <- ggp + coord_flip() 


ggp <- ggplot(a, aes(fct_inorder(species), t5_mean)) + geom_bar(stat = "identity", fill="deepskyblue") + theme(axis.text.y=element_blank(), axis.ticks.y=element_blank(), axis.title.y=element_blank(), panel.grid = element_blank(), panel.background = element_blank())
p5 <- ggp + coord_flip() 

ggp <- ggplot(a, aes(fct_inorder(species), t6_mean)) + geom_bar(stat = "identity", fill="deepskyblue3") + theme(axis.text.y=element_blank(), axis.ticks.y=element_blank(), axis.title.y=element_blank(), panel.grid = element_blank(), panel.background = element_blank())
p6 <- ggp + coord_flip() 

## visualise your plot
grid.arrange(p1, p2, p3, p4, p5, p6, nrow = 1)


## visualise individuals plots
p1

## this saves the plot as .svg format

svg("2023_corsica_transect_data_plot2.svg", h=10, w=30)
grid.arrange(p1, p2, p3, p4, p5, p6, nrow = 1)
dev.off()


## this saves the plot as .png format ( you can also save as .pdf or .jpeg)

png("2023_corsica_transect_data_plot2.png", h=10, w=30)
grid.arrange(p1, p2, p3, p4, p5, p6, nrow = 1)
dev.off()



####2 make a pie chart of means instead of a barplot

svg("2023_corsica_transect_data_piechart_legend.svg", h=15, w=30)
ggplot(a, aes(x="", y=t1_mean, fill=species)) + geom_bar(stat="identity", width=1) + coord_polar("y", start=0)
dev.off()

svg("2023_corsica_transect_data_piechart.svg", h=15, w=30)
p1 <- ggplot(a, aes(x="", y=t1_mean, fill=species)) + geom_bar(stat="identity", width=1, show.legend = FALSE) + coord_polar("y", start=0)
p2 <- ggplot(a, aes(x="", y=t2_mean, fill=species)) + geom_bar(stat="identity", width=1, show.legend = FALSE) + coord_polar("y", start=0)
p3 <- ggplot(a, aes(x="", y=t3_mean, fill=species)) + geom_bar(stat="identity", width=1, show.legend = FALSE) + coord_polar("y", start=0)
p4 <- ggplot(a, aes(x="", y=t4_mean, fill=species)) + geom_bar(stat="identity", width=1, show.legend = FALSE) + coord_polar("y", start=0)
p5 <- ggplot(a, aes(x="", y=t5_mean, fill=species)) + geom_bar(stat="identity", width=1, show.legend = FALSE) + coord_polar("y", start=0)
p6 <- ggplot(a, aes(x="", y=t6_mean, fill=species)) + geom_bar(stat="identity", width=1, show.legend = FALSE) + coord_polar("y", start=0)
grid.arrange(p1, p2,p3, p4, p5, p6, nrow = 2, ncol=3)
dev.off()


####3 visualise student variation in measurements

a <- read.table("2023_corsica_transect_data_1.txt", header=T, sep="\t", row.names=1)
boxplot(t(a), horizontal=TRUE, las=2, cex.axis=0.9, xlab="frequency 0.5 - 0.7m", col="lightblue1")

a1 <- read.table("2023_corsica_transect_data_2.txt", header=T, sep="\t", row.names=1)
boxplot(t(a1), horizontal=TRUE, las=2, cex.axis=0.9, xlab="frequency 1.2 - 1.7m", col="lightblue2")


a2 <- read.table("2023_corsica_transect_data_3.txt", header=T, sep="\t", row.names=1)
boxplot(t(a2), horizontal=TRUE, las=2, cex.axis=0.9, xlab="frequency 1 - 2.7m (0.50)", col="lightblue")


a3 <- read.table("2023_corsica_transect_data_4.txt", header=T, sep="\t", row.names=1)
boxplot(t(a3), horizontal=TRUE, las=2, cex.axis=0.9, xlab="frequency 3.4m - 3.8m", col="darkturquoise")

a4 <- read.table("2023_corsica_transect_data_5.txt", header=T, sep="\t", row.names=1)
boxplot(t(a4), horizontal=TRUE, las=2, cex.axis=0.9, xlab="frequency 3.4 - 4.6m", col="deepskyblue")


a5 <- read.table("2023_corsica_transect_data_6.txt", header=T, sep="\t", row.names=1)
boxplot(t(a5), horizontal=TRUE, las=2, cex.axis=0.9, xlab="frequency 5.2 - 6.3m", col="deepskyblue3")

svg("2023_corsica_transect_data_means_variation.svg", h=15, w=20)
par(mfrow=c(2,3))
boxplot(t(a), horizontal=TRUE, las=2, cex.axis=1, xlab="frequency 0.5 - 0.7m", col="lightblue1")
boxplot(t(a1), horizontal=TRUE, las=2, cex.axis=1, xlab="frequency 1.2 - 1.7m", col="lightblue2", yaxt="n")
boxplot(t(a2), horizontal=TRUE, las=2, cex.axis=1, xlab="frequency 1 - 2.7m (0.50)", col="lightblue", yaxt="n")
boxplot(t(a3), horizontal=TRUE, las=2, cex.axis=1, xlab="frequency 3.4m - 3.8m", col="darkturquoise")
boxplot(t(a4), horizontal=TRUE, las=2, cex.axis=1, xlab="frequency 3.4 - 4.6m", col="deepskyblue", yaxt="n")
boxplot(t(a5), horizontal=TRUE, las=2, cex.axis=1, xlab="frequency 5.2 - 6.3m", col="deepskyblue3", yaxt="n")
dev.off()
