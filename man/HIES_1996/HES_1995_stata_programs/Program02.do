cap log using programs\prog02, replace
set more off

* This program computes total expenditures from various files,  
* and then aggregates the results into the file hhdata

* FOOD CONSUMPTION
* ----------------------------------------------------------------------
use z192, clear
collapse (sum) S192COL6, by(HHID)
rename S192COL6 FEXPTOT
summarize FEXPTOT
sort HHID
save temp1, replace

use z191
collapse (count) S191_DAY, by(HHID)
ren S191_DAY DAYS
sort HHID
save temp2, replace

use temp1, clear
mvencode _all, mv(0) override
sort HHID
merge HHID using temp2
tab _merge
drop _merge
sort HHID

gen FEXP=(30.42/DAYS)*FEXPTOT
summarize FEXP
keep HHID FEXP
sort HHID
save  programs\fexpc, replace
* ----------------------------------------------------------------------

* NON-FOOD EXPENDITURES (CARD 4)
* ----------------------------------------------------------------------
use z341, clear
mvencode _all, mv(0) override
collapse (sum) S341COL2, by(HHID)
rename S341COL2 CARD4A
keep HHID CARD4A
sort HHID
save temp1, replace

use z342
mvencode _all, mv(0) override
collapse (sum) S342COL4, by(HHID)
rename S342COL4 CARD4B
keep HHID CARD4B
sort HHID

merge HHID using temp1
tabulate _merge
drop _merge
sort HHID
save temp1, replace

use z343
* excluding marriages, births, and last rites
drop if 68<=S343COL1 & S343COL1<=70
mvencode _all, mv(0) override
collapse (sum) S343COL2, by(HHID)
rename S343COL2 CARD4C
keep HHID CARD4C
sort HHID

merge HHID using temp1
tabulate _merge
drop _merge

mvencode _all, mv(0) override
gen CARD4=(CARD4A+CARD4B+CARD4C)/12
keep HHID CARD4
sort HHID
save programs\card4, replace
* ----------------------------------------------------------------------

* NON-FOOD EXPENDITURES (CARD 3)
* ----------------------------------------------------------------------
use z331, clear
mvencode _all, mv(0) override
collapse (sum) S331COL8, by(HHID)
rename S331COL8 CARD3A
keep HHID CARD3A
sort HHID
save temp1, replace

use z332, clear
mvencode _all, mv(0) override
collapse (sum) S332COL6, by(HHID)
rename S332COL6 CARD3B
keep HHID CARD3B
sort HHID
merge HHID using temp1
tabulate _merge
drop _merge
sort HHID
save temp1, replace

use z333, clear
mvencode _all, mv(0) override
collapse (sum) S333COL8, by(HHID)
rename S333COL8 CARD3C
keep HHID CARD3C
sort HHID
merge HHID using temp1
tabulate _merge
drop _merge
sort HHID
save temp1, replace

use z334, clear
mvencode _all, mv(0) override
collapse (sum) S334COL8, by(HHID)
rename S334COL8 CARD3D
keep HHID CARD3D
sort HHID
merge HHID using temp1
tabulate _merge
drop _merge
sort HHID
save temp1, replace

use z335, clear
mvencode _all, mv(0) override
collapse (sum) S335COL4, by(HHID)
rename S335COL4 CARD3E
keep HHID CARD3E
sort HHID
merge HHID using temp1
tabulate _merge
drop _merge
mvencode _all, mv(0) override
gen CARD3=CARD3A+CARD3B+(CARD3C+CARD3D+CARD3E)/12
keep HHID CARD3
sort HHID
save programs\card3, replace
* ----------------------------------------------------------------------

* AGGREGATING TOGETHER THE VARIOUS TOTALS
* ----------------------------------------------------------------------
use programs\fexpc
merge HHID using programs\card3
tab _merge
drop _merge
sort HHID
merge HHID using programs\card4
tab _merge
drop _merge
sort HHID
mvencode _all, mv(0) override
summarize
gen HHEXP=CARD3+CARD4+FEXP
summarize FEXP, detail
summarize CARD3, detail
summarize CARD4, detail
sort HHID
save temp1, replace

use programs\hhdata, clear
merge HHID using temp1
tab _merge
drop _merge
sort HHID
gen PCEXP=HHEXP/HS
summarize PCEXP, detail
gen  LOGPC=log(PCEXP)
gen LOGPC2=LOGPC*LOGPC
save, replace

* ----------------------------------------------------------------------

erase temp1.dta
erase temp2.dta
erase programs\card3.dta
erase programs\card4.dta
erase programs\fexpc.dta
cap log close
