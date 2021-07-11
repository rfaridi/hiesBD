* Structure of the population by age and sex

log using abstract\tab103.log, replace

use c:\wodon\bhesdata\plist

sort urbrural
by urbrural: tab agecat sex [aweight=EXFAC], col nofreq
tab agecat sex [aweight=EXFAC], col nofreq

log close
