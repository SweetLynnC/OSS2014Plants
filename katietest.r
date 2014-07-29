#clear history, set working directory, and load packages
rm(list=ls())
library(dplyr)
setwd("C:\\Users\\Katie\\Dropbox\\3NCEAS\\cleandata") #Katie laptop

#import datasets as a list (add new datasets to list as we find them)
dl <- list(read.csv("obs_SEKI.csv"), #park service vegmap data for SEKI
		   read.csv("obs_YOSE.csv")) #park service vegmap data for YOSE

#combine all into one df for the obs table
obs <- do.call("rbind", dl)

#summarize occurrences of each species, list common to uncommon
x <- obs %>% group_by(species) %>% 
	summarize(spcount = n()) %>% arrange(desc(spcount))
x[1:25,] # give count of occurences for 25 most abundant species

#join to species table so that we can extract most common woody plants
species <- read.csv()
#INSERT CODE TO JOIN- make table with colums plot, species, spcount, lifeform
#INSERT CODE TO EXTRACT 10-20 most common trees (decide num based on counts)
target <- #make vector of species codes

#what are out target species?
#assuming we have a list...
target <- c("QUECH10","CADE10","QUKE10") #this is just to test code- delete later
targ_obs <- #insert code to extract observations just for target species

#combine species occurrence info with plots table
plots <- read.csv()

