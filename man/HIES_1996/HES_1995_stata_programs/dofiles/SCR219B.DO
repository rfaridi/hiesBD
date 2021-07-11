log using c:\wodon\bhesdata\log\scr219b, replace
infile using c:\wodon\bhesdata\scr219b

label define S219_19 01 " Do not need to"
label define S219_19 02 " Too young to work", add
label define S219_19 03 " Too old to work", add
label define S219_19 04 " Plan to study ", add
label define S219_19 05 " Housework   ", add
label define S219_19 06 " Look after child/fam", add
label define S219_19 07 " Resistance Hus/fam", add
label define S219_19 08 " Not possible get job", add
label define S219_19 09 " Suitable self-emp not avai", add
label define S219_19 10 " Other       ", add
label values S219_19 S219_19
label define S219_22 1 " Yes "
label define S219_22 2 " No  ", add
label define S219_22 3 " Don't know", add
label values S219_22 S219_22

save c:\wodon\bhesdata\Z219, replace
summarize
log close
clear

