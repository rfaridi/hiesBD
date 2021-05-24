library(glue)
library(haven)
library(stringr)
library(here)

dta_files <- list.files("/run/media/arch/0644C7B444C7A4B1/MISC/miscStuff2ARCHIVE/HIES/HIES2016_V3/", pattern="dta")
dta_files_clean <- tolower(str_replace(dta_files,"\\.dta",""))
dir_path <- "/run/media/arch/0644C7B444C7A4B1/MISC/miscStuff2ARCHIVE/HIES/HIES2016_V3"
dta_files_full <- glue("{dir_path}/{dta_files}")
dta_files_clean

for(i in 1:length(dta_files)){
    dat_file <- read_dta(dta_files_full[i]) 
    assign(dta_files_clean[i], dat_file) 
    save(list=dta_files_clean[i], file=here(glue("./data/HIES_2016/{dta_files_clean[i]}.rda")))
}


walk(21:33, function(i) {
    rmarkdown::render(here('man/HIES_2016/script_files/hies2016_summary_stats.Rmd'),  # file 2
               output_file =  glue("hies2016_{dta_files_clean[i]}.html"), 
               output_dir = here("./man/HIES_2016/html_summary_stats/"))
})

