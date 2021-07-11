log using c:\wodon\bhesdata\log\scr236b, replace
infile using c:\wodon\bhesdata\scr236b

label define S236_36 1 " Walk"
label define S236_36 2 " Bicycle", add
label define S236_36 3 " Rickshaw/Van", add
label define S236_36 4 " Taxi", add
label define S236_36 5 " Bus", add
label define S236_36 6 " Boat", add
label define S236_36 7 " Train", add
label define S236_36 8 " Other", add
label values S236_36 S236_36
label define S236_38 1 " Yes"
label define S236_38 2 " No", add
label values S236_38 S236_38
label define S236_39 1 " With relative"
label define S236_39 2 " Hostel", add
label define S236_39 3 " Other", add
label values S236_39 S236_39
label define S236_41 1 " Sick"
label define S236_41 2 " Help Housework", add
label define S236_41 3 " Help Farm work", add
label define S236_41 4 " Help Family bs", add
label define S236_41 5 " Bad Weather", add
label define S236_41 6 " unforseen holidays", add
label define S236_41 7 " Other", add
label values S236_41 S236_41

save c:\wodon\bhesdata\Z236, replace
summarize
log close
clear

