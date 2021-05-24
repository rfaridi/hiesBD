library(haven)
library(DDIwR)  # used to import DDI XML file 
# The following XML file has been downloaded from https://catalog.ihsn.org/metadata/export/7399/ddi
# The generated setup file may come handy later on 
meta <- getMetadata("./data-raw/BGD_2016_HIES_v01_M.xml")
setupfile(meta, file="./R/setup.R", type="R")


# The conversion from dta files to rda files were done in "hies_2016_summarystats_report.R" in a loop.

# Here we can rename the variables and value labels. 
