log using c:\wodon\bhesdata\log\scr36b, replace
infile using c:\wodon\bhesdata\scr36b

label define S36_COL2 01 "Seed                 Kg"
label define S36_COL2 02 "Fertilizer           Kg", add
label define S36_COL2 03 "Foods of livestock   Kg", add
label define S36_COL2 04 "Tractor/power tiller   ", add
label define S36_COL2 05 "Irrigation expenses    ", add
label define S36_COL2 06 "Insecticides           ", add
label define S36_COL2 07 "Tax for land           ", add
label define S36_COL2 08 "Carriage charge        ", add
label define S36_COL2 09 "Salary & waves         ", add
label define S36_COL2 10 "Insurance expenses     ", add
label define S36_COL2 11 "Power and fuel         ", add
label define S36_COL2 12 "Bees,fish culture exp  ", add
label define S36_COL2 13 "Fish production exp    ", add
label define S36_COL2 14 "Livestock Takecare Exp.", add
label define S36_COL2 15 "Poultry Takecare Exp.  ", add
label define S36_COL2 16 "Other expenses         ", add
label define S36_COL2 17 "(1)                    ", add
label define S36_COL2 18 "(2)                    ", add
label values S36_COL2 S36_COL2

save c:\wodon\bhesdata\Z36, replace
summarize
log close
clear

