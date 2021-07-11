* Poverty headcount rate - household size

log using abstract\tab405.log, replace

use c:\wodon\bhesdata\hhlist, clear

gen     sizecat = 1 if hhsize <= 2
replace sizecat = 2 if hhsize >= 3 & hhsize <= 4
replace sizecat = 3 if hhsize >= 5 & hhsize <= 6
replace sizecat = 4 if hhsize >= 7 & hhsize <= 8
replace sizecat = 5 if hhsize >= 9 & hhsize <=10
replace sizecat = 6 if hhsize >=11

label define sc 1 " 1- 2 members"
label define sc 2 " 3- 4 members", add
label define sc 3 " 5- 6 members", add
label define sc 4 " 7- 8 members", add
label define sc 5 " 9-10 members", add
label define sc 6 " 11+  members", add
label values sizecat sc


format HL HU %3.1f
tab sizecat urbrural [weight=weight], summ(HL) mean noobs
tab sizecat urbrural [weight=weight], summ(HU) mean noobs

log close
