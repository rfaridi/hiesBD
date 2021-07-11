* Access to electricity: 1995-96 HES

use ..\bhes1995\hhlist, clear
format electric %5.1f
tab quintile urbrural [weight=EXFAC], summ(electric) mean noobs
tab HL urbrural [weight=EXFAC], summ(electric) mean noobs
summ electric [weight=EXFAC]
summ electric [weight=EXFAC] if electric==100

keep if urbrural==2
egen access = sum(electric), by(PSU)
replace access = 1 if access>0
tab access
tab access [weight=EXFAC], summ(PCEXP) mean noobs
format electric %5.1f
tab quintile access [weight=EXFAC], summ(electric) mean noobs
