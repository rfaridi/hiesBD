log using c:\wodon\bhesdata\log\scr341b, replace
infile using c:\wodon\bhesdata\scr341b

label define S341COL1 01 "House rent                  "
label define S341COL1 02 "Rent of Owner occupied house", add
label define S341COL1 03 "Rent of rent free house     ", add
label define S341COL1 04 "Water expenses              ", add
label define S341COL1 05 "House repair expenses       ", add
label define S341COL1 06 "House & property  expenses  ", add
label define S341COL1 07 "Insurance of house          ", add
label define S341COL1 08 "Interest for mortgage house ", add
label define S341COL1 09 "Other expenses of house     ", add
label define S341COL1 11 "Land tax                    ", add
label define S341COL1 12 "Income tax                  ", add
label define S341COL1 13 "Interest (Tax)              ", add
label define S341COL1 14 "Watchman-municipality tax   ", add
label define S341COL1 15 "Fine                        ", add
label define S341COL1 16 "Other tax                   ", add
label define S341COL1 17 "Gift,royality,zakat,fetra   ", add
label define S341COL1 18 "Money remitted to relations ", add
label values S341COL1 S341COL1

save c:\wodon\bhesdata\Z341, replace
summarize
log close
clear

