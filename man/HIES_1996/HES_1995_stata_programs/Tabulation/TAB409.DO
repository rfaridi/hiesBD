* Poverty headcount rate - work status

log using abstract\tab409.log, replace

use c:\wodon\bhesdata\plist, clear
sort HHID
merge HHID using hhlist
keep if _merge==3 & relation==1

format HL HU %3.1f

gen     ruroccup =  1 if (wtype1 == 1 | wtype1== 2) & urbrural==2
replace ruroccup =  2 if (wtype1 == 3 | wtype1== 4) & urbrural==2
replace ruroccup =  3 if (wtype1 == 5 | wtype1== 6) & urbrural==2
replace ruroccup =  4 if (wtype1 == 7 | wtype1== 8) & urbrural==2
replace ruroccup =  5 if (wtype1 == 9 | wtype1==10) & urbrural==2
replace ruroccup =  6 if (wtype1 >=11 & wtype1<=31) & urbrural==2
replace ruroccup =  7 if (wtype1 ==.) & urbrural==2

label define ruroccup  1 "Own farm"
label define ruroccup  2 "Work lan", add
label define ruroccup  3 "W no lan", add
label define ruroccup  4 "Tenant f", add
label define ruroccup  5 "O agri w", add
label define ruroccup  6 "Other   ", add
label define ruroccup  7 "Not work", add
label values ruroccup ruroccup

tab ruroccup urbrural [weight=weight], summ(HL) mean noobs
tab ruroccup urbrural [weight=weight], summ(HU) mean noobs

gen     urboccup =  1 if (wtype1 ==13 | wtype1==14) & urbrural==1
replace urboccup =  1 if (wtype1 ==15 | wtype1==16) & urbrural==1
replace urboccup =  2 if (wtype1 ==17 | wtype1==18) & urbrural==1
replace urboccup =  2 if (wtype1 ==27             ) & urbrural==1
replace urboccup =  3 if (wtype1 ==19 | wtype1==20) & urbrural==1
replace urboccup =  3 if (wtype1 ==21 | wtype1==28) & urbrural==1
replace urboccup =  3 if (wtype1 ==29             ) & urbrural==1
replace urboccup =  4 if (wtype1 >=01 & wtype1<=12) & urbrural==1
replace urboccup =  4 if (wtype1 ==22 | wtype1==23) & urbrural==1
replace urboccup =  4 if (wtype1 ==24 | wtype1==25) & urbrural==1
replace urboccup =  4 if (wtype1 ==26 | wtype1==30) & urbrural==1
replace urboccup =  4 if (wtype1 ==31             ) & urbrural==1
replace urboccup =  5 if (wtype1 ==.) & urbrural==1

label define urboccup  1 "Professi"
label define urboccup  2 "Business", add
label define urboccup  3 "Laborer ", add
label define urboccup  4 "Other   ", add
label define urboccup  5 "Not work", add
label values urboccup urboccup

tab urboccup urbrural [weight=weight], summ(HL) mean noobs
tab urboccup urbrural [weight=weight], summ(HU) mean noobs

log close
