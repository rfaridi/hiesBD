* Primary school attendance - by type of school

log using abstract\tab506.log, replace

use educatn, clear
keep if S201_07==3 & S223_24>=1 & S223_24<=24

tab S223_23 division [aweight=EXFAC], col nofreq
sort sex
by sex: tab S223_23 division [aweight=EXFAC], col nofreq
sort urbrural
by urbrural: tab S223_23 division [aweight=EXFAC], col nofreq

count if S223_23~=.

log close
