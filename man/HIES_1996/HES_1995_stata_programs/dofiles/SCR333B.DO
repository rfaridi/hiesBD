log using c:\wodon\bhesdata\log\scr333b, replace
infile using c:\wodon\bhesdata\scr333b

label define S333COL1 052 "Male   Longcloth                yd"
label define S333COL1 053 "Male   Engraved satin           yd", add
label define S333COL1 054 "Male   Drill and other cloth    yd", add
label define S333COL1 055 "Male   Woolen cloth             yd", add
label define S333COL1 056 "Male   Artificial fibre cloth   yd", add
label define S333COL1 057 "Male   Silk and artificial silk yd", add
label define S333COL1 058 "Male   Tailoring expenses         ", add
label define S333COL1 059 "Male   Other Clothing             ", add
label define S333COL1 060 "Female Longcloth                yd", add
label define S333COL1 061 "Female Engraved satin           yd", add
label define S333COL1 062 "Female Drill and other cloth    yd", add
label define S333COL1 063 "Female Woolen cloth             yd", add
label define S333COL1 064 "Female Artificial fibre cloth   yd", add
label define S333COL1 065 "Female Silk and artificial silk yd", add
label define S333COL1 066 "Female Tailoring expenses         ", add
label define S333COL1 067 "Female Other Clothing             ", add
label values S333COL1 S333COL1

save c:\wodon\bhesdata\Z333, replace
summarize
log close
clear

