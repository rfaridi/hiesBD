* Literacy rates - Population 10 years and older

log using abstract\tab501.log, replace

use educatn, clear
keep if age > = 7

gen     literate =   0 if  S201_02==2 | S201_03==2
replace literate = 100 if  S201_02==1 & S201_03==1

sort sex
format literate %3.1f
tab division urbrural [weight=EXFAC], summ(literate) mean noobs
by sex: tab division urbrural [weight=EXFAC], summ(literate) mean noobs

count if literate~=.

log close
