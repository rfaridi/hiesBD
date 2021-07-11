log using c:\wodon\bhesdata\log\scr223b, replace
infile using c:\wodon\bhesdata\scr223b

label define S223_23 1 " Government"
label define S223_23 2 " Government recognised", add
label define S223_23 3 " Private English med", add
label define S223_23 4 " Private Other", add
label define S223_23 5 " NGO Run", add
label define S223_23 6 " Madrasha", add
label define S223_23 7 " Other  ", add
label values S223_23 S223_23
label define S223_24 01 " Class I"
label define S223_24 02 " Class II", add
label define S223_24 03 " Class III", add
label define S223_24 04 " Class IV", add
label define S223_24 05 " Class V", add
label define S223_24 06 " Class VI", add
label define S223_24 07 " Class VII", add
label define S223_24 08 " Class VIII", add
label define S223_24 09 " Class IX", add
label define S223_24 10 " S.S.C", add
label define S223_24 12 " H.S.C", add
label define S223_24 14 " Degree General", add
label define S223_24 15 " Degree Honours", add
label define S223_24 16 " Master or Above", add
label values S223_24 S223_24
label define S223_25 01 " Class I"
label define S223_25 02 " Class II", add
label define S223_25 03 " Class III", add
label define S223_25 04 " Class IV", add
label define S223_25 05 " Class V", add
label define S223_25 06 " Class VI", add
label define S223_25 07 " Class VII", add
label define S223_25 08 " Class VIII", add
label define S223_25 09 " Class IX", add
label define S223_25 10 " S.S.C", add
label define S223_25 12 " H.S.C", add
label define S223_25 14 " Degree General", add
label define S223_25 15 " Degree Honours", add
label define S223_25 16 " Master or Above", add
label define S223_25 17 " Did not attend", add
label values S223_25 S223_25
label define S223_26 1 " Yes"
label define S223_26 2 " NO", add
label values S223_26 S223_26
label define S223_28 1 " Yes"
label define S223_28 2 " NO", add
label values S223_28 S223_28

save c:\wodon\bhesdata\Z223, replace
summarize
log close
clear

