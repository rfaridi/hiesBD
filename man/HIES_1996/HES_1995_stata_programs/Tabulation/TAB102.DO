* Average household size

log using abstract\tab102.log, replace

use c:\wodon\bhesdata\hhlist

format hhsize %4.2f
tab division urbrural [weight=EXFAC], summ(hhsize) mean noobs

log close
