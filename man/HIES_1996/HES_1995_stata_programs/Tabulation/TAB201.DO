* Level of expenditure per household

log using abstract\tab201.log, replace

use c:\wodon\bhesdata\hhlist, clear
format HHEXP %6.0f
tab division urbrural [weight=EXFAC], summ(HHEXP) mean noobs

count if HHEXP~=.

log close
