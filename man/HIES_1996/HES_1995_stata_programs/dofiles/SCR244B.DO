log using c:\wodon\bhesdata\log\scr244b, replace
infile using c:\wodon\bhesdata\scr244b

label define S244_44 1 "Yes"
label define S244_44 2 "No", add
label values S244_44 S244_44
label define S244_45 1 "Relative"
label define S244_45 2 "Friend   ", add
label define S244_45 3 "Other    ", add
label values S244_45 S244_45
label define S244_47 1 "Yes"
label define S244_47 2 "No ", add
label values S244_47 S244_47
label define S244_48 1 "Yes"
label define S244_48 2 "No ", add
label values S244_48 S244_48

save c:\wodon\bhesdata\Z244, replace
summarize
log close
clear

