log using c:\wodon\bhesdata\log\scr229b, replace
infile using c:\wodon\bhesdata\scr229b

label define S229_30 1 "Yes"
label define S229_30 2 "No ", add
label values S229_30 S229_30
label define S229_32 1 "Yes"
label define S229_32 2 "No ", add
label values S229_32 S229_32
label define S229_34 01 "Science    "
label define S229_34 02 "Humanities ", add
label define S229_34 03 "Commerce   ", add
label define S229_34 04 "Agriculture", add
label define S229_34 05 "Home Economics ", add
label define S229_34 06 "Other (SSC/HSC)", add
label define S229_34 07 "Arts           ", add
label define S229_34 08 "Social Science ", add
label define S229_34 09 "Science        ", add
label define S229_34 10 "Commerce       ", add
label define S229_34 11 "Law            ", add
label define S229_34 12 "Engineering    ", add
label define S229_34 13 "Medicine       ", add
label define S229_34 14 "Agriculture    ", add
label define S229_34 15 "Architecture   ", add
label define S229_34 16 "Business Admins", add
label define S229_34 17 "Arts and Crafts", add
label define S229_34 18 "Home Economics ", add
label define S229_34 19 "Other (Degree) ", add
label values S229_34 S229_34

save c:\wodon\bhesdata\Z229, replace
summarize
log close
clear

