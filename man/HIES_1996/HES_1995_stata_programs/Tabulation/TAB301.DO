* Housing - type of walls

log using abstract\tab301.log, replace

use z12, clear
sort HHID
keep HHID S12_31
save temp, replace

use hhlist, clear
merge HHID using temp
keep if _merge==3

sort urbrural
by urbrural: tab S12_31 division [aweight=EXFAC], col nofreq
tab S12_31 division [aweight=EXFAC], col nofreq

count if S12_31~=.

log close
