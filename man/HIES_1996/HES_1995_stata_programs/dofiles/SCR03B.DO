log using c:\wodon\bhesdata\log\scr03b, replace
infile using c:\wodon\bhesdata\scr03b
save c:\wodon\bhesdata\Z03, replace
summarize RR
collapse (count) RR, by(HHID)
list if RR>1
log close
clear

