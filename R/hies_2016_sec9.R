library(tidyverse)
library(magrittr)

# load part a data 

load("./data/HIES_2016/hh_sec_9a1.rda")

s9a1 <- hh_sec_9a1  # shorten file name for convenience

s9a1 %>% 
     mutate(hhid=as.character(hhid)) -> s9a1

dim(s9a1)

# around 640k observations

s9a1 %>% 
    pull(hhid) %>% 
    unique() %>% 
    length()

s9a1  <- s9a1 %>% 
           mutate(hhid=as.character(hhid),
		  across(where(~class(.x)=="haven_labelled"),as_factor)
	          )
s9a1 %>% 
    arrange(hhid,quarter,day) %>% 
    print(n=40)

s9a1 %>% 
    filter(quarter==1) %>% 
    pull(hhid) -> q1

s9a1 %>% 
    filter(quarter==2) %>% 
    pull(hhid) -> q2

s9a1 %>% 
    filter(quarter==3) %>% 
    pull(hhid) -> q3

s9a1 %>% 
    filter(quarter==4) %>% 
    pull(hhid) -> q4



intersect(q1,q2)
intersect(q1,q3)
intersect(q2,q3)
intersect(q1,q4)
intersect(q2,q4)
intersect(q3,q4)

# There is no intersection, it means that in each quarter new housheholds were interviewed. Therefore if multiply around 46000 households with 14 (no. of days the information was collected we receive the total no. of observation approximately 


# Now load the second data set in the series

load("./data/HIES_2016/hh_sec_9a2.rda")
s9a2 <- hh_sec_9a2

hh_sec_9a2 %>% 
    arrange(hhid,day) %>% 
    select(-(3:12))%>% 
    print(n=20)


