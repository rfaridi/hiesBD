log using c:\wodon\bhesdata\log\scr331b, replace
infile using c:\wodon\bhesdata\scr331b

label define S331COL1 001 "Fire wood               kg"
label define S331COL1 002 "Cowdung/cake/ghoosi     kg", add
label define S331COL1 003 "Hask and wood powder    kg", add
label define S331COL1 004 "Jute stick              kg", add
label define S331COL1 005 "Kerosene                gr", add
label define S331COL1 006 "Agri. product fuel etc. kg", add
label define S331COL1 007 "Other (specify)         kg", add
label define S331COL1 008 "Gas                     No", add
label define S331COL1 009 "Electricity            kwh", add
label define S331COL1 010 "Pitcoal,coal etc.       kg", add
label define S331COL1 011 "Candles (Others) etc    No", add
label values S331COL1 S331COL1

save c:\wodon\bhesdata\Z331, replace
summarize
log close
clear

