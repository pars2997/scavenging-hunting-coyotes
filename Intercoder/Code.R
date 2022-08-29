library(irr)
?icc

r1 <- round(rnorm(20,10,4))
r2 <- round(r1+10+rnorm(20,0,2))
r3 <- round(r1+20+rnorm(20,0,2))

icc(cbind(r1,r2,r3),"twoway")
icc(cbind(r1,r2,r3),"twoway","agreement")

setwd("C:/Users/A02323599/Box Sync/CoyoteForagingStudy/Intercoder")

#1820 Day 2

D2M1820 <- read.csv("1820D2_Mitch.csv")
D2A1820 <- read.csv("1820D2_Andrew.csv")

colnames(D2M1820)<-c("Time","File Path","Total Length","FPS","Subject","Behavior","Behavioral Category","Comment","Status")

D2M1820 <- D2M1820[order(D2M1820$Subject,D2M1820$Behavior),]
ActTime<-vector()
ActTime[1]<-0
for(i in 2:nrow(D2M1820)){
  if(D2M1820$Status[i]=="STOP"){
    ActTime[i]<-D2M1820$Time[i]-D2M1820$Time[i-1]
  }  else {ActTime[i]<-0}
}
D2M1820$ActTime<-ActTime

D2A1820 <- D2A1820[order(D2A1820$Subject,D2A1820$Behavior),]
ActTime<-vector()
ActTime[1]<-0
for(i in 2:nrow(D2A1820)){
  if(D2A1820$Status[i]=="STOP"){
    ActTime[i]<-D2A1820$Time[i]-D2A1820$Time[i-1]
  }  else {ActTime[i]<-0}
}
D2A1820$ActTime<-ActTime

D2M1820 <- D2M1820[D2M1820$Subject == "Female",]
D2A1820 <- D2A1820[D2A1820$Subject == "Female",]

MitchD2  <- as.numeric(tapply(D2M1820$ActTime,D2M1820$Behavior,sum)/7200)
AndrewD2 <- as.numeric(tapply(D2A1820$ActTime,D2A1820$Behavior,sum)/7200)[1:3]

icc(cbind(MitchD2,AndrewD2),"oneway")
icc(cbind(MitchD2,AndrewD2),"twoway","agreement")


#1820 Day 1

D1M1820 <- read.csv("1820D1_Mitch.csv")
D1A1820 <- read.csv("1820D1_Andrew.csv")

colnames(D1M1820)<-c("Time","File Path","Total Length","FPS","Subject","Behavior","Behavioral Category","Comment","Status")

D1M1820 <- D1M1820[order(D1M1820$Subject,D1M1820$Behavior),]
ActTime<-vector()
ActTime[1]<-0
for(i in 2:nrow(D1M1820)){
  if(D1M1820$Status[i]=="STOP"){
    ActTime[i]<-D1M1820$Time[i]-D1M1820$Time[i-1]
  }  else {ActTime[i]<-0}
}
D1M1820$ActTime<-ActTime

D1A1820 <- D1A1820[order(D1A1820$Subject,D1A1820$Behavior),]
ActTime<-vector()
ActTime[1]<-0
for(i in 2:nrow(D1A1820)){
  if(D1A1820$Status[i]=="STOP"){
    ActTime[i]<-D1A1820$Time[i]-D1A1820$Time[i-1]
  }  else {ActTime[i]<-0}
}
D1A1820$ActTime<-ActTime

D1M1820 <- D1M1820[D1M1820$Subject == "Female",]
D1A1820 <- D1A1820[D1A1820$Subject == "Female",]


MitchD1  <- as.numeric(tapply(D1M1820$ActTime,D1M1820$Behavior,sum)/7200)
AndrewD1 <- as.numeric(tapply(D1A1820$ActTime,D1A1820$Behavior,sum)/7200)[1:3]

icc(cbind(MitchD1,AndrewD1),"twoway")
icc(cbind(MitchD1,AndrewD1),"twoway","agreement")

#1622 Day 1
D5M1622 <- read.csv("1622D5_Mitch.csv")
D5C1622 <- read.csv("1622D5_Chelise.csv")

colnames(D5M1622)<-c("Time","File Path","Total Length","FPS","Subject","Behavior","Behavioral Category","Comment","Status")

D5M1622 <- D5M1622[order(D5M1622$Subject,D5M1622$Behavior),]
ActTime<-vector()
ActTime[1]<-0
for(i in 2:nrow(D5M1622)){
  if(D5M1622$Status[i]=="STOP"){
    ActTime[i]<-D5M1622$Time[i]-D5M1622$Time[i-1]
  }  else {ActTime[i]<-0}
}
D5M1622$ActTime<-ActTime

D5C1622 <- D5C1622[order(D5C1622$Subject,D5C1622$Behavior),]
ActTime<-vector()
ActTime[1]<-0
for(i in 2:nrow(D5C1622)){
  if(D5C1622$Status[i]=="STOP"){
    ActTime[i]<-D5C1622$Time[i]-D5C1622$Time[i-1]
  }  else {ActTime[i]<-0}
}
D5C1622$ActTime<-ActTime

D5M1622 <- D5M1622[D5M1622$Subject == "Male",]
D5C1622 <- D5C1622[D5C1622$Subject == "Male",]

MitchD5  <- as.numeric(tapply(D5M1622$ActTime,D5M1622$Behavior,sum)/7200)[1:3]
CheliseD5 <- as.numeric(tapply(D5C1622$ActTime,D5C1622$Behavior,sum)/7200)[1:3]

icc(cbind(MitchD5,CheliseD5),"oneway")
icc(cbind(MitchD5,CheliseD5),"oneway","agreement")

Mitch <- c(MitchD1,MitchD2,MitchD5)
Other <- c(AndrewD1,AndrewD2,CheliseD5)
Mitch[is.na(Mitch)] <- 0 
Other[is.na(Other)] <- 0 

icc(cbind(Mitch,Other),"oneway","agreement")
icc(cbind(Mitch[c(1,4,7)],Other[c(1,4,7)]),"oneway","agreement") #1m
icc(cbind(Mitch[c(2,5,8)],Other[c(2,5,8)]),"oneway","agreement") #5m
icc(cbind(Mitch[c(3,6,9)],Other[c(3,6,9)]),"oneway","agreement") #Interact

newdat <- matrix(c(1.4,1.2,1.6,2.2,2.4,2.6,3.2,3.4,3.6),nrow = 3, byrow = F)
