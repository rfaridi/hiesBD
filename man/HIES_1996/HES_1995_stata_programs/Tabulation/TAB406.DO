* Poverty headcount rate - age of household head

log using abstract\tab406.log, replace

use c:\wodon\bhesdata\plist, clear
sort HHID
merge HHID using hhlist
keep if _merge==3 & relation==1

gen     agec = 1 if age<= 29
replace agec = 2 if age>= 30 & age <=39
replace agec = 3 if age>= 40 & age <=49
replace agec = 4 if age>= 50 & age <=59
replace agec = 5 if age>= 55

label define sc 1 "<=29 yrs"
label define sc 2 "30-39 yrs", add
label define sc 3 "40-49 yrs", add
label define sc 4 "50-59 yrs", add
label define sc 5 "60+   yrs", add
label values agec sc


format HL HU %3.1f
tab agec urbrural [weight=weight], summ(HL) mean noobs
tab agec urbrural [weight=weight], summ(HU) mean noobs

log close
