log using c:\wodon\bhesdata\log\scr257b, replace
infile using c:\wodon\bhesdata\scr257b

label define S257_57 1 "Yes"
label define S257_57 2 "No ", add
label values S257_57 S257_57
label define S257_58 01 "Politechnic"
label define S257_58 02 "Typing/Shorthand", add
label define S257_58 03 "Computer        ", add
label define S257_58 04 "Motor Mechanics ", add
label define S257_58 05 "Electric        ", add
label define S257_58 06 "Cloth Making    ", add
label define S257_58 07 "Tyloring        ", add
label define S257_58 08 "Livestock       ", add
label define S257_58 09 "Family Planning ", add
label define S257_58 10 "Small Cortage   ", add
label define S257_58 11 "Others          ", add
label values S257_58 S257_58
label define S257_59 1 "Yes"
label define S257_59 2 "No ", add
label values S257_59 S257_59
label define S257_61 1 "Govt. Inst."
label define S257_61 2 "Pvt.  Inst.", add
label define S257_61 3 "Publ. Sect.", add
label define S257_61 4 "Pvt. Employ", add
label define S257_61 5 "NGO.  Inst.", add
label define S257_61 6 "Family Memb", add
label define S257_61 7 "Other      ", add
label values S257_61 S257_61
label define S257_62 1 "Yes. Very Usefull "
label define S257_62 2 "Yes. Some Usefull ", add
label define S257_62 3 "Not Usefull       ", add
label define S257_62 4 "Currently not Work", add
label values S257_62 S257_62
label define S257_63 1 "Yes"
label define S257_63 2 "No ", add
label values S257_63 S257_63

save c:\wodon\bhesdata\Z257, replace
summarize
log close
clear

