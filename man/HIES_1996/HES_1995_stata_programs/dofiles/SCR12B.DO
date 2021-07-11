log using c:\wodon\bhesdata\log\scr12b, replace
infile using c:\wodon\bhesdata\scr12b
gen byte S12_7b=(S12_7=="1")
label define S12_31 1 "Brick/Cement     "
label define S12_31 2 "C.I. Sheet/Wood  ", add
label define S12_31 3 "Mud/Unburnt Brick", add
label define S12_31 4 "Hay/Bamboo/Leaf  ", add
label define S12_31 5 "Others           ", add
label values S12_31 S12_31
label define S12_32 1 "Cement              "
label define S12_32 2 "C.I. Sheet/Wood     ", add
label define S12_32 3 "C.I. Sheet/Tali/Wood", add
label define S12_32 4 "Hamp/hay/Bamboo     ", add
label define S12_32 5 "Other               ", add
label values S12_32 S12_32
label define S12_4 1 "Muslim   "
label define S12_4 2 "Hindu    ", add
label define S12_4 3 "Buddhist ", add
label define S12_4 4 "Christian", add
label define S12_4 5 "Others   ", add
label values S12_4 S12_4
label define S12_5 1 "Pacca with safety tank"
label define S12_5 2 "Pacca but dust can't go outside", add
label define S12_5 3 "Pacca but dust can go outside", add
label define S12_5 4 "Kacha, Parmanent", add
label define S12_5 5 "Open field", add
label values S12_5 S12_5
label define S12_6 1 "Supplied Water "
label define S12_6 2 "Tubewell       ", add
label define S12_6 3 "Water Tank     ", add
label define S12_6 4 "Pond/River     ", add
label values S12_6 S12_6
label define S12_7b 1 "Yes"
label define S12_7b 2 "No ", add
label values S12_7b S12_7b
save c:\wodon\bhesdata\Z12, replace
summarize
log close
clear

