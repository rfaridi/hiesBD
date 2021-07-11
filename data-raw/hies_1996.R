## code to prepare `DATASET` dataset goes here
library(tidyverse)
library(here)
library(glue)
library(janitor)
library(magrittr)

setwd("../")

setwd("/run/media/arch/0644C7B444C7A4B1/MISC/miscStuff2ARCHIVE/HIES/hies1990_91")

dir_path <- "/run/media/arch/0644C7B444C7A4B1/MISC/miscStuff2ARCHIVE/HIES/hies1995_96/Data"

hesbas_char <- scan(glue("{dir_path}/HESBAS.DAT"),what="")
hesbas_char2 <- hesbas_char[-length(hesbas_char)]

hesbas_tbl <- tibble(bas=hesbas_char2)

hesbas_96 <- hesbas_tbl %>% 
           separate(bas,glue("X{0:220}"),sep="") %>% 
                   select(-1) %>% 
		   as_tibble()

save(hesbas_96, file="./data/HIES_1996/hesbas_96.rda")

load("./data/HIES_1996/hesbas_96.rda")

hesbas1 <- hesbas_95 %>% 
             filter(X13==1)

hies96_rectype_whole <- read_csv("./data-raw/hies96_rectype_whole.csv",skip=6) %>%
    select(1:8) %>% 
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
save(hies96_rectype_whole, file="./data-raw/hies96_rectype_whole.rda")
	
load("./data/HIES_1996/hesbas_96.rda")

load("./data-raw/hies96_rectype_whole.rda")


hs96_extract <- function(x) {

print(glue("Now processing rectype no {x}"))

hesbas_dat <- hesbas_96 %>% 
             filter(X13==x)


rectype <- hies96_rectype_whole %>% 
		     filter(rectype==glue("record-type-{x}") )  

slice_start <- rectype %>% 
                    pull(field_name) %>% 
		    str_which(.,"MON")

slice_end <- rectype %>% 
                    pull(field_description) %>% 
		    str_which(.,"blank") -1

rectype %<>% 
       slice(slice_start:slice_end) %>% 
       filter(!str_detect(field_name,"RECINFO"), !is.na(length)) 

field_position  <- rectype %>% 
                        pull(position_from_to) %>% 
                         str_extract_all( "\\d+")  %>% 
			 .[!is.na(.)]

field_combine <-  field_position %>% 
                       map(~select(hesbas_96,num_range("X",.x[1]:.x[2]))) %>% 
		       map(~unite(.x,"new",sep="")) %>% 
		       map(~pull(.x))

nlist <- rectype %>% 
                  filter(!is.na(field_name)) %>% 
                  pull(field_name) 

field_combine %<>%  # requires magrittr package
    set_names(nlist) 

hs96_dat <- field_combine %>% 
                  list2DF() %>% 
		  as_tibble() %>% 
		  clean_names() %>% 
                  mutate(hhid=paste0(mon,ur,div,region,dist,thana,mouza,hhno))  %>% 
		  relocate(hhid) 

dat_var_names <- names(hs96_dat)
all_var_names <- c("mon","ur","div","region","dist","thana","s-stram","psu","mouza","hhno")
hs96_dat %<>% 
    select(-c(mon,ur,div,region,dist,thana,mouza,hhno))

assign(glue("hs96_dat{x}"), hs96_dat)

save(list=glue("hs96_dat{x}"), file=glue("./data/HIES_1996/hs96_dat{x}.rda"))

}

walk(9, hs96_extract)

load("./data/HIES_1996/hesbas_96.rda")	     
load("./data/HIES_1991/hs91_dat2.RData")
load("./data/HIES_1991/hs91_dat3.rda")
load("./data/HIES_1991/hs91_dat4.rda")
load("./data/HIES_1991/hs91_dat9.rda")

hs91_dat234 <- list(hs91_dat2,hs91_dat3,hs91_dat4)  %>% 
                       reduce(left_join, by="hhid")
save(hs91_dat234, file="./data/hs91_dat234.rda")
# my computer could not handle such large data

