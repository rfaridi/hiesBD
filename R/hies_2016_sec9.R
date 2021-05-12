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

# There is no intersection, it means that in each quarter new households were interviewed. Therefore if multiply around 46000 households with 14 (no. of days the information was collected we receive the total no. of observation approximately 


# Now load the second data set in the series

load("./data/HIES_2016/hh_sec_9a2.rda")
s9a2 <- hh_sec_9a2

hh_sec_9a2 %>% 
    mutate(hhid=as_factor(hhid)) %>% 
    arrange(hhid,day)  -> s9a2


# Finding daily expenditure

## Method 1

s9a2 %>% 
    group_by(hhid) %>% 
    mutate(total_value=sum(s9a2q04),
           n=1:n()) %>% 
    select(hhid,day,total_value,n) %>% 
    filter(n==max(n)) %>% 
    mutate(daily_food_exp=round(total_value/day,1)) %>% 
    select(-n)

## Method 2: More elegant

s9a2 %>% 
    group_by(hhid) %>% 
    arrange(hhid,day) %>%  
    mutate(total_value=sum(s9a2q04)) %>% 
    select(hhid,day,total_value) %>% 
    slice(n()) %>% 
    mutate(daily_food_exp=round(total_value/day,1)) 

## Method 3:  using summarize 

s9a2 %>% 
    group_by(hhid) %>% 
    arrange(hhid,day) %>%  
    mutate(total_value=sum(s9a2q04)) %>% 
    select(hhid,day,total_value) %>% 
    summarise(across(everything(),last)) %>% 
    mutate(daily_food_exp=round(total_value/day,1)) 

# Finding no. of cigarette smoking 

## cigarette code is 201, we will first separate those out 

s9a2 %>% 
    filter(s9a2q01==201) %>% 
    group_by(hhid) %>% 
    arrange(hhid,day) %>%  
    mutate(total_quantity=sum(s9a2q02),
           total_value=sum(s9a2q04)) %>% 
    #select(hhid,day,total_quantity,total_value) %>% 
    slice(n()) ->  cigarette

save(cigarette, file="./data/HIES_2016/cigarette.rda")
   
load("./data/HIES_2016/cigarette.rda")

# Finding whether there is any smoker 

hh_sec_9a2 %>% 
    group_by(hhid) %>% 
    mutate(is_smoker=ifelse(s9a2q01==201, 1,0),
	   total_smoker=sum(is_smoker))  %>% 
    slice(n()) %>% 
    mutate(smoker=ifelse(total_smoker > 0 , 1,0)) %>% 
    select(-c(day:total_smoker)) %>% 
    ungroup() -> smoker_2016

save(smoker_2016, file="./data/HIES_2016/smoker_2016.rda")    


