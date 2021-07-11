log using c:\wodon\bhesdata\log\scr342b, replace
infile using c:\wodon\bhesdata\scr342b

label define S342COL1 19 "Fee for male student           "
label define S342COL1 20 "Personal teaching exp.-male    ", add
label define S342COL1 21 "Hostel expenses for male       ", add
label define S342COL1 22 "Text book for male           No", add
label define S342COL1 23 "Paper/excersise note book Dista", add
label define S342COL1 24 "Pen/pencil/ink-pot (male)    No", add
label define S342COL1 25 "Other(male)                    ", add
label define S342COL1 26 "Fee for female student         ", add
label define S342COL1 27 "Personal teach. exp.female     ", add
label define S342COL1 28 "Hostel expenses for female     ", add
label define S342COL1 29 "Text book for female         No", add
label define S342COL1 30 "Paper/excersise note book Dista", add
label define S342COL1 31 "Pen/pencil/ink-pot           No", add
label define S342COL1 32 "Other(female)                  ", add
label define S342COL1 33 "Doctor's fee for male          ", add
label define S342COL1 34 "Urine,stool,blood etc. fee     ", add
label define S342COL1 35 "X-ray fee for male             ", add
label define S342COL1 36 "Hospital exp. for male         ", add
label define S342COL1 37 "Medicine exp. for male         ", add
label define S342COL1 38 "Preventive treatment- =< 5     ", add
label define S342COL1 39 "Preventive treat.     > 5      ", add
label define S342COL1 40 "Dental service exp.            ", add
label define S342COL1 41 "Kabiraje/hekimi for male       ", add
label define S342COL1 42 "Homeopathy for male            ", add
label define S342COL1 43 "Other for male                 ", add
label define S342COL1 44 "Doctor's fee for female        ", add
label define S342COL1 45 "Urine,stool,blood for femle    ", add
label define S342COL1 46 "X-ray fee for female           ", add
label define S342COL1 47 "Hospital exp. for female       ", add
label define S342COL1 48 "Medicine exp. for female       ", add
label define S342COL1 49 "Maternity Expense              ", add
label define S342COL1 50 "Preventive treatment- =< 5     ", add
label define S342COL1 51 "Preventive treat.     > 5      ", add
label define S342COL1 52 "Dental service exp.            ", add
label define S342COL1 53 "Kabiraje/hekimi for female     ", add
label define S342COL1 54 "Homeopathy for female          ", add
label define S342COL1 55 "Other for female               ", add
label values S342COL1 S342COL1

save c:\wodon\bhesdata\Z342, replace
summarize
log close
clear

