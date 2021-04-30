## code to prepare `DATASET` dataset goes here
library(tidyverse)
library(here)
#The here directory
setwd("/run/media/arch/0644C7B444C7A4B1/MISC/miscStuff2ARCHIVE/HIES/hies1990_91")
hesbas.char <- scan(here("/Data/HESBAS.DAT"),what="")
#Now let's turn into matrix
hesbas.mat <- t(apply(as.matrix(hesbas.char),1,function(x) str_split_fixed(x,"",nchar(x))))
map_df(hesbas.char,function(x) str_split_fixed(x,"",nchar(x))) -> hesbas.dat
#Now let's convert it into data frame 
hesbas.dat <- as_tibble(data.frame(hesbas.mat,stringsAsFactors = F))
hesbas.dat[1:dim(hesbas.dat)[2]] <- lapply(hesbas.dat[1:dim(hesbas.dat)[2]],as.numeric)
file.dat <- "bas2.RData"
#save(bas2,file=paste0(dir,file.dat))
load(file=paste0(dir,file.dat))
#MON <- paste0(bas2$X1,bas2$X2)
load(file=paste0(dir,"hs91_dat1.RData"))

load(paste0(dir,"rectype1.RData"))

load(file=paste0(dir,"hhdat1.RData"))
# Now the required lab_search function

lab_search <- function(x,df=hs91.dat1) {
  temp1 <- grep(x,c(label(df),names(df)),value=T,ignore.case=T)
  temp11 <- vector("list",3)
  temp11[[1]] <-as.list(temp1) 
  temp11[[2]]<-data.frame(names(temp1),stringsAsFactors = F)
  temp11[[3]] <- 
    print(paste0("There are ",length(temp1)," variables"))
  temp3 <- try(lapply(temp11[[1]],function(y) with(df,label(get(y)))),TRUE)
  temp4 <- list(temp3,temp11[[2]],temp11[[3]])
  
  ifelse(inherits(temp3,"try-error"), 
         return(temp11),
         return(temp4)
  )
}

#sep 15, 2015: 4:58 AM

#what i have done in the above is that i saved the very basic data frame of the file HESBAS which is one of the two basic files that will be used, the other one is HESSHHT as per the FIRST~.DOC. the description of theses two files are two files which names are given in the doc. what i am going to do now in the bas2 file i read in the documentation and collected the very first variable month as MON, in the same manner the next is probably UR, rural urban. then i will bring everything into a data frame. 

#until then bye :-) 

#Sep 20, 2015  7:45 PM


##### First select just the record type 1 #####
bas2 <- tbl_df(bas2)

bas2.1 <- filter(bas2,X13==1)

#file.n <- "rectype1.csv"
#file.csv <- paste0(dir,file.n)
#  rectype<- read.csv(file.csv,stringsAsFactors = F)
#  rectype[,1:dim(rectype)[2]]<-lapply(
#                                 rectype[,1:dim(rectype)[2]],
#                                      function(x) {
#                     x[grepl("^\\s*$",x)] <- NA;return(x)})
# 
# save(rectype,file=paste0(dir,"rectype.RData"))
load(paste0(dir,"rectype1.RData"))


#myFun <- function(x) {         
y <- str_extract_all(
                         rectype$POSITION.FROM....TO
                  [!is.na(rectype$FIELD.NAME)], "(\\d+)-*"
                            ) 
                  
y1 <- lapply(y,function(x) paste0("X",x))

y2 <- lapply(y1,
             function(x) {
               do.call("paste0",lapply(x,function(y) {
                 with(bas2.1,get(y))
                 })
                 )}
               )

nlist <- rectype$FIELD.NAME[!is.na(rectype$FIELD.NAME)]
names(y2) <- nlist
num1 <- rectype$FIELD.NAME[rectype$LENGTH<2 & 
                             !is.na(rectype$FIELD.NAME)]

# now for testing purposes create the following micro data

#y3 <- y2[1:3] # just the first three variables

#y4 <- lapply(y3, function(x) sample(x,10)) # just 10 obs 


#y4[names(y4) %in% num1] <- lapply(y4[names(y4) %in% num1], 
                                  #function(x) str_extract(x,"^."))

# the above example a small data set is used but I will have to use full scale example

y2[names(y2) %in% num1] <- lapply(y2[names(y2) %in% num1], 
                                  function(x) 
                                    str_extract(x,"^."))
hs91.dat1 <- tbl_df(do.call("data.frame",c(y2,check.names=F)))

label(hs91.dat1[,names(hs91.dat1)]) = 
  lapply(names(hs91.dat1), 
         function(x) label(hs91.dat1[[x]]) =
           rectype$FIELD.DESCRIPTION[
             which(rectype$FIELD.NAME==x & 
                  !is.na(rectype$FIELD.NAME))])

#save(hs91.dat1,file=paste0(dir,"hs91_dat1.RData"))
load(file=paste0(dir,"hs91_dat1.RData"))



#now the first thing we do is to create a hhid

dat1 <- hs91.dat1
dat1$hhid <- with(dat1,paste0(DIV,REGION,STRAT,PSU,HHNO))
#now try to find the unique no. of households

length(unique(dat1$hhid))

# we find that it is only 5248, but according to firstRead.doc it should be 5760, i don't know what has happened to the rest, i have to go to record type 2 and also see what is going on there, that is is there also the same number of hhold

# another issue is that each houshold should be located in either rural or urban setting, assuming that when i run the following code:
by_dat <- group_by(dat1,hhid)
summarise(by_dat,hsize=n(),
                  ur=unique(UR)
                  )

# the above produces error, that is mainly because in each household UR is not a unique number, but to my understanding it should have been an unique number, since a household can only be in only one category of rural or urban ( there are of course three different categories in urban)

# now as only in the following, i make sure unique produces single command, it works:

summarise(by_dat,hsize=n(),
                  ur=unique(UR)[1]
                  )

# the above code works but if in any household there is multiple type of rural and urban category and I don't know why it should be like that , may be because it is individual member type, i don't know yet I have to check that out

# now to figure out how many different types of ru-ur category are there, i run the following code:

hsiz <- summarise(by_dat,hsize=n(),
                  ur=unique(UR)[1],
                    lur=length(unique(UR)))

#lur variable captures the number of different type of ru-ur household in there, now if i run this:

table(hsiz$lur)

# 1    2    3 
#4832  384   32 

# we see that quite a few households has more than one, meaning that there are more than one category of ru-ur in the household

# let's find those which has 3

filter(hsiz,lur==3)


#let's check one them

filter(dat1,hhid=="435010110") %>% View()

# in this household there are 5 membmers

# MSL1, that is member serial no. 1 records only two types of no. 01,04 but it seems like they are different persons because their sex is different. not only that their age is also different

#MSL2, there is three no.s, 02,00,05, now it looks better, cause it seems we got all the five of them here

#MSL3, we have just 00 and 03

# so, we have total these serials, 00,01,02,03,04,05 but what I don't understand that is the same serial is repeated and they have different sex and age all these like in the following:

filter(dat1,hhid=="435010110") %>% 
          select(hhid,MSL1:AGE1) %>%
                   arrange(hhid,MSL1) 

# we see that following numbers

# Source: local data frame [5 x 5]
# 
#        hhid   MSL1   SEX1   REL1   AGE1
#       (chr) (fctr) (fctr) (fctr) (fctr)
# 1 435010110     01      2      1     30
# 2 435010110     01      1      1     50
# 3 435010110     01      1      1     39
# 4 435010110     04      2      6     24
# 5 435010110     04      1      3     17

#it clearly shows that id was repeated several times with the same household id. there are two possiblities, problem with the data or problem with the way hhold id was formed,let's check which is the case here

#what I am going to try now is that I will also add the UR to the hhid code and see what happens, the reasoning is that it may be the same hhid but it different UR code, as a result we got hhid to be repeated or duplicated

#whether we got it right will depend on whether we got 5760 no. of obs as mentioned in the FirstRead Doc

dat1$hhid <- with(dat1,paste0(UR,DIV,REGION,STRAT,PSU,HHNO))

by_dat <- group_by(dat1,hhid)
summarise(by_dat,hsize=n(),
                  ur=unique(UR))

#Here we end up with 5696 no. of obs, so we are getting but not there yet, let's now add the MON to hhid
dat1 <- hs91.dat1
dat1$hhid <- with(dat1,paste0(MON,UR,DIV,REGION,STRAT,PSU,HHNO))

by_dat <- group_by(dat1,hhid)
stat <- summarise(by_dat,hsize=n(),
                  ur=unique(UR),
                  lur=length(unique(UR)))
table(stat$lur)

# ok great now, we end up with 5760 no. of hhold as mentioned by the FirsRead doc. And we also see that lur has just value of 1 all through as expected.  Now let's try those summary stat once again, particularly the id we checked earlier


filter(dat1,
       grepl("435010110",hhid)) %>% 
          select(hhid,MSL1:AGE1) %>%
                   arrange(hhid,MSL1) 

# Source: local data frame [5 x 5]
# 
#           hhid   MSL1   SEX1   REL1   AGE1
#          (chr) (fctr) (fctr) (fctr) (fctr)
# 1 092435010110     01      2      1     30
# 2 092435010110     04      2      6     24
# 3 113435010110     01      1      1     50
# 4 113435010110     04      1      3     17
# 5 124435010110     01      1      1     39

#From the above it is clear how the duplicates were created with 435010110 id, previously i thought it was just one household, now we see there are actually three households: 092435010110, 113435010110, 124435010110

# Since I got a pretty good idea on how the data is observed, what I am going to do now is that I am going to create a separate data frame with just the household member information. This data frame will be in the wide form as in the original which we will have to transform into long form, only then we will be able to understand the true size of the household.

# So the first step is select required variables

hhdat11 <- select(dat1, hhid,UR,DIV,MSL1:IND1) %>% 
                    set_names(sub("\\d$","",names(hhdat11))) %>% 
		    janitor::clean_names()
names(hhdat11) <- sub("\\d$","",names(hhdat11))

hhdat12 <- select(dat1, hhid,UR,DIV,MSL2:IND2)
names(hhdat12) <- sub("\\d$","",names(hhdat12))

hhdat13 <- select(dat1, hhid,UR,DIV,MSL3:IND3)
names(hhdat13) <- sub("\\d$","",names(hhdat13))

hhdat1 <- rbind(hhdat11,hhdat12,hhdat13)  %>%
                  filter(!MSL=="00") %>%
                    arrange(hhid,MSL)    
 
hhdat1$MSL <- sub("^0","",hhdat1$MSL)
hhdat1$MSL <- as.numeric(hhdat1$MSL)
hhdat1 <- arrange(hhdat1,hhid,MSL)
                    #save(hhdat1,file=paste0(dir,"hhdat1.RData"))

load(file=paste0(dir,"hhdat1.RData"))
 
                  

#Now time for some household roster statistics

Hsize <- group_by(hhdat1,hhid) %>%
  summarise(hsize=n())
describe(Hsize$hsize)


#Now labelling the Education Variables

hhdat1$EDU <- recode(hhdat1$EDU,
                     "'0'='Never Studied';
                      '1'='Passed 1st-5th Grade 
                           but cannot write letter';
                     '2'='Passed 1st-5th Grade 
                          and can write letter';
                     '3'='Passed 6th-9th Grade';
                     '4'='SSC or equivalent 
                          and higher but not Bachelors';
                     '5'='Bachelors or equivalent 
                          and higher in General Category';
                     '6'='Bachelors or equivalent 
                          and higher in 
                          Eng.,Med.,Agri. Science etc.';
                     '7'='Diploma
                      (Polytechnic,Medicine,Agri Science etc)';
                     '8'='Others'")
                


usethis::use_data(DATASET, overwrite = TRUE)
