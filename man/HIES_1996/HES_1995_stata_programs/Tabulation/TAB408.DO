* Poverty headcount rate - educational background

log using abstract\tab408.log, replace

use c:\wodon\bhesdata\plist, clear
sort HHID
merge HHID using hhlist
keep if _merge==3 & relation==1
ren S11_MSN idcode
sort HHID idcode
drop _merge
merge HHID idcode using educatn
keep if _merge==3
drop _merge

format HL HU %3.1f

gen     literate =   0 if S201_02==2 | S201_03==2
replace literate = 100 if S201_02==1 | S201_03==1

gen     educ = 1 if S201_07==1
replace educ = 2 if S201_07==2 &  S209_10<=4
replace educ = 2 if S201_07==3 &  S223_24<=5
replace educ = 3 if S201_07==2 & (S209_10>=5 & S209_10<=9)
replace educ = 3 if S201_07==3 & (S223_24>=6 & S223_24<=10)
replace educ = 4 if S201_07==2 & (S209_10>=10)
replace educ = 4 if S201_07==3 & (S223_24>=11)

tab literate urbrural [weight=weight], summ(HL) mean noobs
tab     educ urbrural [weight=weight], summ(HL) mean noobs

tab literate urbrural [weight=weight], summ(HU) mean noobs
tab     educ urbrural [weight=weight], summ(HU) mean noobs

log close
