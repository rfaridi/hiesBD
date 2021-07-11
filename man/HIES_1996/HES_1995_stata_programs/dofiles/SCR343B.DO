log using c:\wodon\bhesdata\log\scr343b, replace
infile using c:\wodon\bhesdata\scr343b

label define S343COL1 56 "Bycicle                     "
label define S343COL1 57 "Tyer/Tube/Retail parts      ", add
label define S343COL1 58 "Car/Motorcycle              ", add
label define S343COL1 59 "car insurance & driving fee ", add
label define S343COL1 60 "Tyer/Tube (Car/motor cycle) ", add
label define S343COL1 61 "Retail machine parts (car.) ", add
label define S343COL1 62 "Survecing & Celaning charge ", add
label define S343COL1 63 "Boat/carts(bought/repair)   ", add
label define S343COL1 64 "Others (comunication & tr.. ", add
label define S343COL1 65 "Servant/Guard salary        ", add
label define S343COL1 66 "Expenses for safe keeping   ", add
label define S343COL1 67 "Legal expenses              ", add
label define S343COL1 68 "Marriage expenses           ", add
label define S343COL1 69 "Birth anniversary expenses  ", add
label define S343COL1 70 "Last rite expenses          ", add
label define S343COL1 71 "Religious work expenses     ", add
label define S343COL1 72 "Recreation & Trv. expenses  ", add
label values S343COL1 S343COL1

save c:\wodon\bhesdata\Z343, replace
summarize
log close
clear

