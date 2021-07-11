log using c:\wodon\bhesdata\log\scr208b, replace
infile using c:\wodon\bhesdata\scr208b

label define S208_08A 01 " No school/far away"
label define S208_08A 02 " Too Expensive", add
label define S208_08A 03 " Help at home", add
label define S208_08A 04 " Help farm work", add
label define S208_08A 05 " Help family business", add
label define S208_08A 06 " Poor school/teacher", add
label define S208_08A 07 " No girls school", add
label define S208_08A 08 " All male teachers", add
label define S208_08A 09 " Education not usefull", add
label define S208_08A 10 " Other", add
label values S208_08A S208_08A
label define S208_08B 01 " No school/far away"
label define S208_08B 02 " Too Expensive", add
label define S208_08B 03 " Help at home", add
label define S208_08B 04 " Help farm work", add
label define S208_08B 05 " Help family business", add
label define S208_08B 06 " Poor school/teacher", add
label define S208_08B 07 " No girls school", add
label define S208_08B 08 " All male teachers", add
label define S208_08B 09 " Education not usefull", add
label define S208_08B 10 " Other", add
label values S208_08B S208_08B

save c:\wodon\bhesdata\Z208, replace
summarize
log close
clear
