* Housing - percentage of households with electricity connection

log using abstract\tab305.log, replace

use z12, clear
sort HHID
keep HHID S12_7
save temp, replace

use hhlist, clear
merge HHID using temp
keep if _merge==3

gen     electric =   0 if S12_7=="2"
replace electric = 100 if S12_7=="1"

format electric %3.1f
tab division urbrural [aweight=EXFAC], summ(electric) mean noobs

count if electric~=.

log close
