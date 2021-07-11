* Community questionnaire - Access to health facilities

log using abstract\app03.log, replace

use C:\wodon\BHESDATA\HESCOM\Z05.dta, clear

keep PSUID
sort PSUID
save temp, replace

use C:\wodon\BHESDATA\HESCOM\Z05.dta, clear
gen   dist1 = S05_25A1
gen   dist2 = S05_25B1
gen   dist3 = S05_25C1
gen   dist4 = S05_25D1
gen   dist5 = S05_25E1
gen   dist6 = S05_25F1
gen   dist7 = S05_25G1
gen   dist8 = S05_25H1
gen   dist9 = S05_25I1
gen  dist10 = S05_25J1
gen  dist11 = S05_25K1

keep PSUID dist1 dist2 dist3 dist4 dist5 dist6 dist7 dist8 dist9 dist10 dist11

reshape groups hfacil 1-11
reshape var dist
reshape cons PSUID

reshape long

sort PSUID
save temp1, replace

use C:\wodon\BHESDATA\HESCOM\Z05.dta, clear
gen   hrs1 = S05_25A2
gen   hrs2 = S05_25B2
gen   hrs3 = S05_25C2
gen   hrs4 = S05_25D2
gen   hrs5 = S05_25E2
gen   hrs6 = S05_25F2
gen   hrs7 = S05_25G2
gen   hrs8 = S05_25H2
gen   hrs9 = S05_25I2
gen  hrs10 = S05_25J2
gen  hrs11 = S05_25K2

keep PSUID hrs1 hrs2 hrs3 hrs4 hrs5 hrs6 hrs7 hrs8 hrs9 hrs10 hrs11

reshape groups hfacil 1-11
reshape var hrs
reshape cons PSUID

reshape long

sort PSUID
save temp2, replace

use C:\wodon\BHESDATA\HESCOM\Z05.dta, clear
gen   min1 = S05_25A3
gen   min2 = S05_25B3
gen   min3 = S05_25C3
gen   min4 = S05_25D3
gen   min5 = S05_25E3
gen   min6 = S05_25F3
gen   min7 = S05_25G3
gen   min8 = S05_25H3
gen   min9 = S05_25I3
gen  min10 = S05_25J3
gen  min11 = S05_25K3

keep PSUID min1 min2 min3 min4 min5 min6 min7 min8 min9 min10 min11

reshape groups hfacil 1-11
reshape var min
reshape cons PSUID

reshape long

sort PSUID
save temp3, replace

use temp
merge PSUID using temp1
drop _merge
sort PSUID

merge PSUID using temp2
drop _merge
sort PSUID

merge PSUID using temp3
drop _merge

gen     dclass = 1 if dist == 0
replace dclass = 2 if dist >= 1 & dist <= 3
replace dclass = 3 if dist >= 4 & dist <= 5
replace dclass = 4 if dist >= 6 & dist <= 9
replace dclass = 5 if dist >= 9 & dist ~= .

gen nresp     =   0 if dclass~=.
replace nresp = 100 if dclass==.

replace min = . if nresp==100
replace hrs = . if nresp==100
replace hrs = 0 if hrs==. & min~=.
replace hrs = hrs + (min/60)

format hrs nresp %4.2f
tab hfacil, summ(nresp) mean noobs
tab hfacil, summ(  hrs) mean noobs

tab hfacil dclass, nofreq row

log close
