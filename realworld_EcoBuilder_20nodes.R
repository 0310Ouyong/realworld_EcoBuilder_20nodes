rm(list=ls())
getwd()
setwd('C:/data')
library(dplyr)
load('EcoBuildersummary.RData')

setwd('C:/data/Hsi')
load('whole_reproduce_Empiwebs_20nodes.RData')

EcoBuilder <- rbind(level1_summary,level2_summary,level3_summary)

rep_webs <- rep_webs[,c(-2,-7,-8,-14,-15,-16,-17,-18,-24,-25)]
colnames(rep_webs)[6] <- 'num.link'

rep_webs <- rep_webs[,c(1,2,3,5,4,6,7,8,9,10,11,12,13,14,15,16,22,17,18,19,20,21)]

save(EcoBuilder,rep_webs,file = 'realworld_EcoBuilder_20nodes.RData')


