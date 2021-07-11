log using c:\wodon\bhesdata\log\scr209b, replace
infile using c:\wodon\bhesdata\scr209b

label define S209_09 1 " Government"
label define S209_09 2 " Government Aided   ", add
label define S209_09 3 " Pvt. Bengali Medium", add
label define S209_09 4 " Pvt. English Medium", add
label define S209_09 5 " NGO - RUN", add
label define S209_09 6 " Madrasha", add
label define S209_09 7 " Other", add
label values S209_09 S209_09
label define S209_10 00 " No class passed"
label define S209_10 01 " Class I", add
label define S209_10 02 " Class II", add
label define S209_10 03 " Class III", add
label define S209_10 04 " Class IV", add
label define S209_10 05 " Class V", add
label define S209_10 06 " Class VI", add
label define S209_10 07 " Class VII", add
label define S209_10 08 " Class VIII", add
label define S209_10 09 " Class IX", add
label define S209_10 10 " S.S.C", add
label define S209_10 12 " H.S.C", add
label define S209_10 14 " Bac.Degree General", add
label define S209_10 15 " Bac.Degree Honours", add
label define S209_10 16 " Master Degre/above", add
label values S209_10 S209_10
label define S209_14A 01 " Compl. Desired educ"
label define S209_14A 02 " Too far away", add
label define S209_14A 03 " Too Expensive", add
label define S209_14A 04 " Help at Home", add
label define S209_14A 05 " Help with farm work", add
label define S209_14A 06 " Help with family bu", add
label define S209_14A 07 " Poor sch.or teacher", add
label define S209_14A 08 " No girl school area", add
label define S209_14A 09 " All male teacher", add
label define S209_14A 10 " Education unusefull", add
label define S209_14A 11 " Got a Job", add
label define S209_14A 12 " Got married", add
label define S209_14A 13 " Girl edu.discuraged", add
label define S209_14A 14 " Poor Academic progr", add
label define S209_14A 15 " Lack of security", add
label define S209_14A 16 " Others", add
label values S209_14A S209_14A
label define S209_14B 01 " Compl. Desired educ"
label define S209_14B 02 " Too far away", add
label define S209_14B 03 " Too Expensive", add
label define S209_14B 04 " Help at Home", add
label define S209_14B 05 " Help with farm work", add
label define S209_14B 06 " Help with family bu", add
label define S209_14B 07 " Poor sch.or teacher", add
label define S209_14B 08 " No girl school area", add
label define S209_14B 09 " All male teacher", add
label define S209_14B 10 " Education unusefull", add
label define S209_14B 11 " Got a Job", add
label define S209_14B 12 " Got married", add
label define S209_14B 13 " Girl edu.discuraged", add
label define S209_14B 14 " Poor Academic progr", add
label define S209_14B 15 " Lack of security", add
label define S209_14B 16 " Others", add
label values S209_14B S209_14B

save c:\wodon\bhesdata\Z209, replace
summarize
log close
clear

