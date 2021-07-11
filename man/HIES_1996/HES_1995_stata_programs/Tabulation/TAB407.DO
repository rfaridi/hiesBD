* Poverty headcount rate - selected household characteristics

log using abstract\tab407.log, replace

use c:\wodon\bhesdata\plist, clear
sort HHID
merge HHID using hhlist
keep if _merge==3 & relation==1
replace  mstatus=3 if  mstatus==4
replace religion=2 if religion>=3

format HL HU %3.1f

tab sex urbrural [weight=weight], summ(HL) mean noobs
tab mstatus urbrural [weight=weight], summ(HL) mean noobs
tab religion urbrural [weight=weight], summ(HL) mean noobs

tab sex urbrural [weight=weight], summ(HU) mean noobs
tab mstatus urbrural [weight=weight], summ(HU) mean noobs
tab religion urbrural [weight=weight], summ(HU) mean noobs

log close
