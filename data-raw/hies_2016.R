library(haven)
library(DDIwR)  # used to import DDI XML file 
# The following XML file has been downloaded from https://catalog.ihsn.org/metadata/export/7399/ddi
# The generated setup file may come handy later on 
meta <- getMetadata("./data-raw/BGD_2016_HIES_v01_M.xml")
setupfile(meta, file="./R/setup.R", type="R")
#cover
cover_hies_2016 <- read_dta("/run/media/arch/0644C7B444C7A4B1/MISC/miscStuff2ARCHIVE/HIES/HIES2016_V3/COVER.dta")
save(cover_hies_2016, file="./data/HIES_2016/cover_hies_2016.rda")
#hh_sec_1a
hh_sec_1a <- read_dta("/run/media/arch/0644C7B444C7A4B1/MISC/miscStuff2ARCHIVE/HIES/HIES2016_V3/HH_SEC_1A.dta")
save(hh_sec_1a, file="./data/HIES_2016/hh_sec_1a.rda")
#hh_sec_1b
hh_sec_1b <- read_dta("/run/media/arch/0644C7B444C7A4B1/MISC/miscStuff2ARCHIVE/HIES/HIES2016_V3/HH_SEC_1B.dta")
save(hh_sec_1b, file=here("./data/HIES_2016/hh_sec_1b.rda"))

dta_files <- list.files("/run/media/arch/0644C7B444C7A4B1/MISC/miscStuff2ARCHIVE/HIES/HIES2016_V3/", pattern="dta")



