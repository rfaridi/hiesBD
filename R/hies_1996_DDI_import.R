library(DDIwR)  # used to import DDI XML file 
# The following XML file has been downloaded from https://catalog.ihsn.org/metadata/export/7399/ddi
# The generated setup file may come handy later on 
meta <- getMetadata("./man/HIES_1996/BGD_1995_HES_v01_M.xml")
setupfile(meta, file="./R/hies_1996_DDI_setup.R", type="R")


