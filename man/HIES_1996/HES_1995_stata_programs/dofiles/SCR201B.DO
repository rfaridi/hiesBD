log using c:\wodon\bhesdata\log\scr201b, replace
infile using c:\wodon\bhesdata\scr201b

label define S201_02 1 " Yes"
label define S201_02 2 " No", add
label values S201_02 S201_02
label define S201_03 1 " Yes"
label define S201_03 2 " No", add
label values S201_03 S201_03
label define S201_04 1 " Formal Schooling"
label define S201_04 2 " Taught by family", add
label define S201_04 3 " Govt. Adult Literacy course", add
label define S201_04 4 "NGO Literacy course", add
label define S201_04 5 " Other (Specify)", add
label values S201_04 S201_04
label define S201_05 00 " No Class  "
label define S201_05 01 " Class I   ", add
label define S201_05 02 " Class II  ", add
label define S201_05 03 " Class III ", add
label define S201_05 04 " Class IV  ", add
label define S201_05 05 " Class V   ", add
label define S201_05 06 " Class VI  ", add
label define S201_05 07 " Class VII ", add
label define S201_05 08 " Class VIII", add
label define S201_05 09 " Class IX  ", add
label define S201_05 10 " S.S.C     ", add
label define S201_05 12 " H.S.C     ", add
label define S201_05 14 " Bachelor Degree General", add
label define S201_05 15 " Bachelor Degree Honours", add
label define S201_05 16 " Master Degree or above", add
label values S201_05 S201_05
label define S201_06 00 " No Class  "
label define S201_06 01 " Class I   ", add
label define S201_06 02 " Class II  ", add
label define S201_06 03 " Class III ", add
label define S201_06 04 " Class IV  ", add
label define S201_06 05 " Class V   ", add
label define S201_06 06 " Class VI  ", add
label define S201_06 07 " Class VII ", add
label define S201_06 08 " Class VIII", add
label define S201_06 09 " Class IX  ", add
label define S201_06 10 " S.S.C     ", add
label define S201_06 12 " H.S.C     ", add
label define S201_06 14 " Bachelor Degree General", add
label define S201_06 15 " Bachelor Degree Honours", add
label define S201_06 16 " Master Degree or above", add
label values S201_06 S201_06
label define S201_07 1 "Never Attended School   "
label define S201_07 2 "Attended School in the Past", add
label define S201_07 3 "Currently attending School", add
label values S201_07 S201_07

save c:\wodon\bhesdata\Z201, replace
summarize
log close
clear
