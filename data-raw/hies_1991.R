## code to prepare `DATASET` dataset goes here
library(tidyverse)
library(magrittr)
library(glue)
library(janitor)

setwd("/run/media/arch/0644C7B444C7A4B1/MISC/miscStuff2ARCHIVE/HIES/hies1990_91")

dir_path <- "/run/media/arch/0644C7B444C7A4B1/MISC/miscStuff2ARCHIVE/HIES/hies1990_91/Data"

hesbas.char <- scan(glue("{dir_path}/HESBAS.DAT"),what="")
hesbas.char2 <- hesbas.char[-length(hesbas.char)]

bas <- tibble(bas=hesbas.char2)

hesbas <- separate(bas,bas,glue("X{0:80}"),sep="") %>% 
                   select(-1) %>% 
		   as_tibble()

save(hesbas, file="./data/HIES_1991/hesbas.rda")

load("./data/HIES_1991/hesbas.rda")

hesbas1 <- hesbas %>% 
             filter(X13==1)

load("./data-raw/hies91_rectype_whole.rda")

rectype <- rectype_whole %>% 
		     filter(rectype==glue("record-type-{x}") )  

slice_start <- rectype %>% 
                    pull(field_description) %>% 
		    str_which(.,"MONTH")

slice_end <- rectype %>% 
                    pull(field_description) %>% 
		    str_which(.,"blank") -1

rectype %<>% 
       slice(slice_start:slice_end) %>% 
       filter(!str_detect(field_name,"RECINFO")) 

# Now field positions (1-1, 2-3  etc are collected)

field_position <- str_extract_all(
                         rectype$position_from_to
                  [!is.na(rectype$field_name)], "(\\d+)-*"
                            ) 
# tidy version of the above in the following but return 47 elements

 field_position_tidy  <- rectype %>% 
                        pull(position_from_to) %>% 
                         str_extract_all( "(\\d+)-*")  %>% 
			 .[!is.na(.)

# Adding X in front of numbers so that matches with variable names in bas data                 
field_position <- lapply(field_position,function(x) paste0("X",x))

# In the following cold for each item, say X64 X65, it goes to bas2.1, extract 
# those variables and combine those. The output is a list with 46 elements. In 
# each elements, there is vector of those combined digits

field_combine <- lapply(field_position,
             function(x) {
               do.call("paste0",lapply(x,function(v) {
                 with(bas2.1,get(v))
                 })
                 )}
               )
# Tidy version

## Less elegant
field_combine <-  field_position %>% 
                       map(~bas2.1[.x]) %>% 
		       map(~paste0(pull(.x[,1]),pull(.x[,2])))
## More elegant
field_combine <-  field_position %>% 
                       map(~bas2.1[.x]) %>% 
		       map(~pull(unite(.x,"new",names(.x),sep="",remove=T)))

## Even more elegant, extra step but much cleaner

field_combine <-  field_position %>% 
                       map(~bas2.1[.x]) %>% 
		       map(~unite(.x,"new",names(.x),sep="",remove=T)) %>% 
		       map(~pull(.x))
	
# creating a vector of field_names
nlist <- rectype$field_name[!is.na(rectype$field_name)]
# tidy version
nlist_tidy <- rectype %>% 
                  pull(field_name) %>% 
		  .[!is.na(.)]
# More tidy version
nlist_tidy <- rectype %>% 
                  filter(!is.na(field_name)) %>% 
                  pull(field_name) 

# naming the list 
names(field_combine) <- nlist

# tidyversion

field_combine %<>%  # requires magrittr package
    set_names(nlist) 


# Idenfying those fields which have just one digit, like DIV

field_single <- rectype$field_name[rectype$length<2 & 
                             !is.na(rectype$field_name)]

# tidy version
field_single  <- rectype %>% 
                   filter(length < 2, !is.na(field_name)) %>% 
                     pull(field_name) 

# field_combine is a list of 46 elements. Those elements are selected wwhich are single digit. For those digits are repeated, we need to just pick the first one. 

field_combine[names(field_combine) %in% field_single] <- lapply(field_combine[names(field_combine) %in% field_single], 
                                  function(x) 
                                    str_extract(x,"^."))
hs91_dat1 <- list2DF(field_combine) %>% 
                    as_tibble()

# Tidy version

hs91_dat1 <- field_combine %>% 
                  list2DF() %>% 
		  as_tibble() %>% 
		  mutate(across(any_of(field_single), ~str_extract(.x,"^.")))

#save(hs91.dat1,file=paste0(dir,"hs91_dat1.RData"))
load(file=paste0(dir,"hs91_dat1.RData"))

#now the first thing we do is to create a hhid

load("./data/HIES_1991/hs91_dat1.RData")

dat1 <- hs91_dat1  <- hs91.dat1

dat1$hhid <- with(dat1,paste0(DIV,REGION,STRAT,PSU,HHNO))

# tidy version

dat1 %<>% 
    mutate(hhid=paste0(DIV,REGION,STRAT,PSU,HHNO)) %>% 
    relocate(hhid)

#now try to find the unique no. of households

length(unique(dat1$hhid))

# Tidy version

dat1 %>% 
    pull(hhid) %>% 
    unique() %>% 
    length()

# we find that it is only 5248, the unique household number, but according to firstRead.doc it should be 5760, 

dat1 %>% 
    group_by(hhid) %>% 
    count(hhid) %>% 
    ungroup() %>% 
    count(n)

# In the above, we find by how much hhid has been repeated, it might be due to household member. 
# It seems that I do not know the structure yet


dat1 %>% 
    count(hhid,UR) %>% 
    arrange(hhid,UR)


summarise(
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

# we see that quite a few households has more than one, meaning that there are more than one category of ru-ur in the household

table(hsiz$lur)

# Tidy version 

dat1 %>% 
    group_by(hhid) %>% 
    summarize(lur=n_distinct(UR)) %>% 
    count(lur)
    


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

# tidy version 

dat1 %<>% 
    mutate(hhid=paste0(UR,DIV,REGION,STRAT,PSU,HHNO))


by_dat <- group_by(dat1,hhid)
summarise(by_dat,hsize=n(),
                  ur=unique(UR))

# tidy version 

dat1 %>% 
    distinct(hhid) %>% 
    dim()

#Here we end up with 5696 no. of obs, so we are getting but not there yet, let's now add the MON to hhid


dat1 <- hs91.dat1
dat1$hhid <- with(dat1,paste0(MON,UR,DIV,REGION,STRAT,PSU,HHNO))

# tidy vesion

dat1 %<>% 
    mutate(hhid=paste0(MON,UR,DIV,REGION,STRAT,PSU,HHNO))

by_dat <- group_by(dat1,hhid)
stat <- summarise(by_dat,hsize=n(),
                  ur=unique(UR),
                  lur=length(unique(UR)))
table(stat$lur)

# tidy version

dat1 %>% 
    group_by(hhid) %>% 
    summarize(lur=n_distinct(UR)) %>% 
    count(lur)
 

# ok great now, we end up with 5760 no. of hhold as mentioned by the FirsRead doc. And we also see that lur has just value of 1 all through as expected.  Now let's try those summary stat once again, particularly the id we checked earlier


filter(dat1,grepl("435010110",hhid)) %>% 
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

hhdat11 <- select(hs91_dat1,c(hhid,msl1:ind1))
names(hhdat11) <- sub("\\d$","",names(hhdat11))


# tidy version

dat1 %>% 
    select(hhid, UR, DIV, MSL1:IND1) %>% 
    set_names(str_replace(names(.),"\\d$","")) %>% 
    clean_names() -> hhdat11

dat1 %>% 
   pivot_longer(matches("\\d"), names_to="vars") 

hhdat12 <- select(hs91_dat1,c(hhid,msl2:ind2))
names(hhdat12) <- sub("\\d$","",names(hhdat12))

hhdat13 <- select(hs91_dat1,c(hhid,msl3:ind3))
names(hhdat13) <- sub("\\d$","",names(hhdat13))

hhdat1 <- rbind(hhdat11,hhdat12,hhdat13)  %>%
                  filter(!msl=="00") %>%
                    arrange(hhid,msl)    
 
hhdat1$msl <- sub("^0","",hhdat1$msl)
hhdat1$msl <- as.numeric(hhdat1$msl)
hhdat1 <- hhdat1 %>% 
             filter(!sex=="0",!rel=="0") %>% 
             filter(sex=="1" | sex=="2") %>% 
             arrange(hhid,msl) %>% 
	     select(-MSL)
                    #save(hhdat1,file=paste0(dir,"hhdat1.RData"))

hs91_dat1_final <- hhdat1
save(hs91_dat1_final, file="./data/HIES_1991/hs91_dat1_final.rda")

# tidyversion

hs91_dat1 %>% 
    mutate(across(where(is.factor),as.character)) %>%  
    pivot_longer(msl1:ind3, "hhvars") %>% 
    filter(!value =="00" | !value==0 )  %>% 
    mutate(hhvars=str_replace(hhvars,"\\d$","")) %>%  
    filter(hhvars=="sex", value==0)
    group_by(hhid,hhvars) %>% 
    mutate(mem_id=paste0("0",row_number()))  %>% 
    relocate(hhid,mem_id) %>% 
    arrange(hhid,mem_id)  %>% 
	   filter(hhvars!="msl", !value==0) %>% 
    pivot_wider(c(hhid,mem_id), names_from=hhvars, values_from=value)%>% 
	   filter(!is.na(sex))  

save(hs91_dat1, file="./data/HIES_1991/hs91_dat1.rda")

load(hhdat1, "./data/HIES_1991/hies91_hhdat1.rda")

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
                
#===================================================
#============  RECORD TYPE 2 ======================
#===================================================

load("./data/HIES_1991/hesbas.rda")

hesbas2 <- hesbas %>% 
             filter(X13==2)

rectype_whole <- read_csv("./data-raw/hies91_rectype_whole.csv", skip=6) %>% 
                                 clean_names() %>% 
			     mutate(rows=row_number(),
	   rectype=ifelse(str_detect(sl_no,"RECORD TYPE"), 
			  sl_no, NA)) %>% 
            relocate(rows,rectype) %>% 
	    fill(rectype,.direction="down") %>% 
	    mutate(rectype=str_replace(rectype,"-","") %>% 
		   str_squish(.) %>% 
		   str_replace_all(.,"\\s","-") %>% 
		   tolower(.),
	          field_description=str_replace_all(field_description,"BLANK|B L A N K","blank")
	      )
save(rectype_whole, file="./data-raw/hies91_rectype_whole.rda")
	

load("./data-raw/hies91_rectype_whole.rda")

# Extract record type 2

rectype2_start <- str_which(rectype_whole$sl_no, "RECORD TYPE - 2") + 2
rectype2_end <- str_which(rectype_whole$field_description, "LATRINE")


rectype2  <- rectype_whole %>% 
                     slice(rectype2_start:rectype2_end) %>% 
		     filter(!str_detect(field_name,"RECINFO"))

field_position <- rectype2 %>% 
                        pull(position_from_to) %>% 
                         str_extract_all( "\\d+")  %>% 
			 .[!is.na(.)]

field_combine <-  field_position %>% 
                       map(~select(hesbas2,num_range("X",.x[1]:.x[2]))) %>% 
		       map(~unite(.x,"new",sep="")) %>% 
		       map(~pull(.x))

nlist <- rectype2 %>% 
                  filter(!is.na(field_name)) %>% 
                  pull(field_name) 

field_combine %<>%  # requires magrittr package
    set_names(nlist) 


hs91_dat2 <- field_combine %>% 
                  list2DF() %>% 
		  as_tibble() %>% 
		  clean_names() %>% 
                mutate(hhid=paste0(mon,ur,div,region,strat,psu,hhno))  %>% 
		  relocate(hhid) 
hs91_dat2 %>% 
     select(hhid,mon,ur,div,region,strat,psu) -> hs91_svy_info

save(hs91_svy_info, file="./data/HIES_1991/hs91_svy_info.rda")

hs91_dat2 %<>% 
    select(-c(mon,ur,div,region,strat,psu,hhno))

save(hs91_dat2, file="./data/HIES_1991/hs91_dat2.RData")

#===================================================
#============  RECORD TYPE 3 ======================
#===================================================

load("./data/HIES_1991/hesbas.rda")

hesbas3 <- hesbas %>% 
             filter(X13==3)

load("./data-raw/hies91_rectype_whole.rda")

rectype3  <- rectype_whole %>% 
		     filter(rectype=="record-type-3") %>% 
		     filter(!str_detect(field_name,"RECINFO")) %>% 
		     slice(2:29)

field_position  <- rectype3 %>% 
                        pull(position_from_to) %>% 
                         str_extract_all( "\\d+")  %>% 
			 .[!is.na(.)]

field_combine <-  field_position %>% 
                       map(~select(hesbas3,num_range("X",.x[1]:.x[2]))) %>% 
		       map(~unite(.x,"new",sep="")) %>% 
		       map(~pull(.x))

nlist <- rectype3 %>% 
                  filter(!is.na(field_name)) %>% 
                  pull(field_name) 

field_combine %<>%  # requires magrittr package
    set_names(nlist) 


hs91_dat3 <- field_combine %>% 
                  list2DF() %>% 
		  as_tibble() %>% 
		  clean_names() %>% 
                  mutate(hhid=paste0(mon,ur,div,region,strat,psu,hhno))  %>% 
		  relocate(hhid) 
hs91_dat3 %>% 
     select(hhid,mon,ur,div,region,strat,psu) -> hs91_svy_info

save(hs91_svy_info, file="./data/HIES_1991/hs91_svy_info.rda")

hs91_dat3 %<>% 
    select(-c(mon,ur,div,region,strat,psu,hhno))

save(hs91_dat3, file="./data/HIES_1991/hs91_dat3.RData")


#===================================================
#============  RECORD TYPE 4 ======================
#===================================================

load("./data/HIES_1991/hesbas.rda")

load("./data-raw/hies91_rectype_whole.rda")


hs91_extract <- function(x) {

print(glue("Now processing rectype no {x}"))

hesbas_dat <- hesbas %>% 
             filter(X13==x)


rectype <- rectype_whole %>% 
		     filter(rectype==glue("record-type-{x}") )  

slice_start <- rectype %>% 
                    pull(field_description) %>% 
		    str_which(.,"MONTH")

slice_end <- rectype %>% 
                    pull(field_description) %>% 
		    str_which(.,"blank") -1

rectype %<>% 
       slice(slice_start:slice_end) %>% 
       filter(!str_detect(field_name,"RECINFO")) 

field_position  <- rectype %>% 
                        pull(position_from_to) %>% 
                         str_extract_all( "\\d+")  %>% 
			 .[!is.na(.)]

field_combine <-  field_position %>% 
                       map(~select(hesbas,num_range("X",.x[1]:.x[2]))) %>% 
		       map(~unite(.x,"new",sep="")) %>% 
		       map(~pull(.x))

nlist <- rectype %>% 
                  filter(!is.na(field_name)) %>% 
                  pull(field_name) 

field_combine %<>%  # requires magrittr package
    set_names(nlist) 


hs91_dat <- field_combine %>% 
                  list2DF() %>% 
		  as_tibble() %>% 
		  clean_names() %>% 
                  mutate(hhid=paste0(mon,ur,div,region,strat,psu,hhno))  %>% 
		  relocate(hhid) 

hs91_dat %<>% 
    select(-c(mon,ur,div,region,strat,psu,hhno))

assign(glue("hs91_dat{x}"), hs91_dat)

save(list=glue("hs91_dat{x}"), file=glue("./data/HIES_1991/hs91_dat{x}.rda"))

}

hs91_dat1
walk(1, hs91_extract)
	     
load("./data/HIES_1991/hs91_dat2.RData")
load("./data/HIES_1991/hs91_dat3.rda")
load("./data/HIES_1991/hs91_dat4.rda")
test <- list(hs91_dat2,hs91_dat3,hs91_dat4)  %>% 
    reduce(left_join, by="hhid")



