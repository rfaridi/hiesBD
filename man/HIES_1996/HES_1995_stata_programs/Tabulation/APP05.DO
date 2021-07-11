* Community questionnaire - Government programs

log using abstract\app05.log, replace

use C:\wodon\BHESDATA\HESCOM\Z07.dta, clear

keep PSUID
sort PSUID
save temp, replace

use C:\wodon\BHESDATA\HESCOM\Z07.dta, clear
gen   exist1 = S07_3411
gen   exist2 = S07_3421
gen   exist3 = S07_3431
gen   exist4 = S07_3441
gen   exist5 = S07_3451
gen   exist6 = S07_3461
gen   exist7 = S07_3471
gen   exist8 = S07_3481

keep PSUID exist1 exist2 exist3 exist4 exist5 exist6 exist7 exist8

reshape groups program 1-8
reshape var exist
reshape cons PSUID

reshape long

sort PSUID
save temp1, replace

use C:\wodon\BHESDATA\HESCOM\Z07.dta, clear
gen   partic1 = S07_3412
gen   partic2 = S07_3422
gen   partic3 = S07_3432
gen   partic4 = S07_3442
gen   partic5 = S07_3452
gen   partic6 = S07_3462
gen   partic7 = S07_3472
gen   partic8 = S07_3482

keep PSUID partic1 partic2 partic3 partic4 partic5 partic6 partic7 partic8

reshape groups program 1-8
reshape var partic
reshape cons PSUID

reshape long

sort PSUID
save temp2, replace

use temp
merge PSUID using temp1
drop _merge
sort PSUID

merge PSUID using temp2
drop _merge
sort PSUID

replace partic = . if exist==.

gen     present =   0 if exist ==2
replace present = 100 if exist ==1

gen nresp     =   0 if present~=.
replace nresp = 100 if present==.

format present nresp %4.2f
format        partic %4.0f
tab program, summ(present) mean noobs
tab program, summ( partic) mean noobs
tab program, summ(  nresp) mean noobs

log close
