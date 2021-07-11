log using c:\wodon\bhesdata\log\scr215b, replace
infile using c:\wodon\bhesdata\scr215b

label define S215_15 01 " Science"
label define S215_15 02 " Humanities", add
label define S215_15 03 " Commerce", add
label define S215_15 04 " Agriculture", add
label define S215_15 05 " Home Economics", add
label define S215_15 06 " Other (SSC/HSC)", add
label define S215_15 07 " Arts", add
label define S215_15 08 " Social Science", add
label define S215_15 09 " Science", add
label define S215_15 10 " Commerce", add
label define S215_15 11 " Law", add
label define S215_15 12 " Engineering", add
label define S215_15 13 " Medicine", add
label define S215_15 14 " Agriculture", add
label define S215_15 15 " Achitecture", add
label define S215_15 16 " Business Administra", add
label define S215_15 17 " Arts and crafts", add
label define S215_15 18 " Home Economics", add
label define S215_15 19 " Other (BSC & Above)", add
label values S215_15 S215_15
label define S215_16 1 " Yes"
label define S215_16 2 " No", add
label values S215_16 S215_16
label define S215_18 1 " Not seeking work"
label define S215_18 2 " Seeking/not found", add
label define S215_18 3 " Employed wage/salar", add
label define S215_18 4 " Self Employement", add
label values S215_18 S215_18

save c:\wodon\bhesdata\Z215, replace
summarize
log close
clear

