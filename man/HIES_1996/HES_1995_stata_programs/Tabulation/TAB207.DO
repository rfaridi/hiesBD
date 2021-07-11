* Land ownership

log using abstract\tab207.log, replace

use c:\wodon\bhesdata\hhlist, clear

gen     sizecat = 1 if owned == 0.00
replace sizecat = 2 if owned >  0.00 & owned <  0.05
replace sizecat = 3 if owned >= 0.05 & owned <= 0.49
replace sizecat = 4 if owned >= 0.50 & owned <= 1.49
replace sizecat = 5 if owned >= 1.50 & owned <= 2.49
replace sizecat = 6 if owned >= 2.50 & owned <= 7.49
replace sizecat = 7 if owned >= 7.50

label define sc 1 "No land"
label define sc 2 "< .05", add
label define sc 3 ".05-0.49 a", add
label define sc 4 ".50-1.49 a", add
label define sc 5 ".50-2.49 a", add
label define sc 6 "2.50-7.49 a", add
label define sc 7 "  7.50 +  a", add
label values sizecat sc


tab sizecat urbrural [aweight=EXFAC], col nofreq

log close
