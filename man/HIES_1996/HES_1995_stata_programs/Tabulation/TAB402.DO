* Poverty headcount rate - CBN

log using abstract\tab402.log, replace

use c:\wodon\bhesdata\hhlist, clear

format HL HU %3.1f
tab division urbrural [weight=weight], summ(HL) mean noobs
tab division urbrural [weight=weight], summ(HU) mean noobs

count if HL~=.
count if HU~=.

log close
