* School attendance - Population 11 - 15 years - By poor / non-poor

log using abstract\tab504.log, replace

use educatn, clear
keep if age >=11 & age<=15

gen     cattend =   0 if  S201_07==1 | S201_07==2
replace cattend = 100 if  S201_07==3

sort sex
format cattend %3.1f
tab division urbrural [weight=EXFAC] if HL==100, summ(cattend) mean noobs
by sex: tab division urbrural [weight=EXFAC] if HL==100, summ(cattend) mean noobs

tab division urbrural [weight=EXFAC] if HL==  0, summ(cattend) mean noobs
by sex: tab division urbrural [weight=EXFAC] if HL==  0, summ(cattend) mean noobs

log close
