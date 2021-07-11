log using c:\wodon\bhesdata\log\scr01b, replace
infile using c:\wodon\bhesdata\scr01b
save c:\wodon\bhesdata\Z01, replace
summarize RR
collapse (count) RR, by(HHID)
list if RR>1
log close
clear

