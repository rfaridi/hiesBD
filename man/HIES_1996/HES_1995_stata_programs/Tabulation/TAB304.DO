* Housing - source of drinking water

log using abstract\tab304.log, replace

use z12, clear
sort HHID
keep HHID S12_6
save temp, replace

use hhlist, clear
merge HHID using temp
keep if _merge==3

sort urbrural
by urbrural: tab S12_6 division [aweight=EXFAC], col nofreq
tab S12_6 division [aweight=EXFAC], col nofreq

count if S12_6~=.

log close
