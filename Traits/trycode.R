#R Code for dealing with TRY Traits data

try <-read.table("TRY_Proposal_389_DataRelease_2014_08_15.txt", header = T, sep = '\t')
head(try)
str(try)
summary(try)

try$ObservationID <-as.factor(try$ObservationID)

try$TraitVsNonTrait