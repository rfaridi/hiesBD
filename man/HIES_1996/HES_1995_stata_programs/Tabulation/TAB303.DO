* Housing - type of toilet

log using abstract\tab303.log, replace

use z12, clear
sort HHID
keep HHID S12_5
save temp, replace

use hhlist, clear
merge HHID using temp
keep if _merge==3

sort urbrural
by urbrural: tab S12_5 division [aweight=EXFAC], col nofreq
tab S12_5 division [aweight=EXFAC], col nofreq

count if S12_5~=.

log close
