rm(list=ls())
getwd()
setwd("D:/Tableau/bob ross")
library(readxl)
data<-read_xlsx("data.xlsx")
for(i in 01:31){
  
  data$Season[grep(paste("s",i,sep=""),tolower(data$Episode))]<-i
}

#paste("hi","hello",sep="")
library(xlsx)
write.xlsx(data, "data1.xlsx")
data$Rank<-1
for(i in 1:31){
  for(r in 1:13){
    data$Rank[data$Season==i]<-r
  }
  
}
sum(data$Season==2)
for(i in 1:31){
  data$Rank[data$Season==i]<-1:871
}
colnames(data)[5] <- "Time"

