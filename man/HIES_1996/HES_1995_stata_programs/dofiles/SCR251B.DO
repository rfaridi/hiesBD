log using c:\wodon\bhesdata\log\scr251b, replace
infile using c:\wodon\bhesdata\scr251b

label define S251_51 1 "Yes"
label define S251_51 2 "No ", add
label values S251_51 S251_51
label define S251_53 1 "Government"
label define S251_53 2 "Private   ", add
label define S251_53 3 "NGO       ", add
label define S251_53 4 "School    ", add
label define S251_53 5 "Other     ", add
label values S251_53 S251_53
label define S251_54 1 "Very Difficult"
label define S251_54 2 "Some Difficult", add
label define S251_54 3 "Not  Difficult", add
label values S251_54 S251_54
label define S251_55 1 "Yes"
label define S251_55 2 "No ", add
label values S251_55 S251_55

save c:\wodon\bhesdata\Z251, replace
summarize
log close
clear

