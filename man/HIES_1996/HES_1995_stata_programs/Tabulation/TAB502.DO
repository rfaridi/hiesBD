* School attendance - Population 6 - 10 years and 11 - 15 years

log using abstract\tab502.log, replace

use educatn, clear
keep if age >=6 & age<=15

gen     cattend =   0 if  S201_07==1 | S201_07==2
replace cattend = 100 if  S201_07==3

sort sex
format cattend %3.1f
tab division urbrural [weight=EXFAC] if age <=10, summ(cattend) mean noobs
by sex: tab division urbrural [weight=EXFAC] if age <=10, summ(cattend) mean noobs

tab division urbrural [weight=EXFAC] if age >=11, summ(cattend) mean noobs
by sex: tab division urbrural [weight=EXFAC] if age >=11, summ(cattend) mean noobs

log close
