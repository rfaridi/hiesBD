* Housing - type of roof

log using abstract\tab302.log, replace

use z12, clear
sort HHID
keep HHID S12_32
save temp, replace

use hhlist, clear
merge HHID using temp
keep if _merge==3

sort urbrural
gen temp = S12_32
replace temp = 2 if S12_32==3
replace temp = 3 if S12_32==4
replace temp = 4 if S12_32==5


by urbrural: tab temp division [aweight=EXFAC], col nofreq
tab temp division [aweight=EXFAC], col nofreq

count if S12_32~=.

log close
