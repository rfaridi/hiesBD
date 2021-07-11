* Food expenditure as a percentage of total expenditure

log using abstract\tab202.log, replace

use c:\wodon\bhesdata\hhlist, clear
format fshare %3.0f
tab division urbrural [weight=EXFAC], summ(fshare) mean noobs

count if fshare~=.

log close
