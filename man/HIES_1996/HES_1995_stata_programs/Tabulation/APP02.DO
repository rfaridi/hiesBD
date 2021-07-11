* Community questionnaire - Access to facilities

log using abstract\app02.log, replace

use C:\wodon\BHESDATA\HESCOM\Z07.dta, clear

keep PSUID
sort PSUID
save temp, replace

use C:\wodon\BHESDATA\HESCOM\Z07.dta, clear
gen   exist1 = S07_311
gen   exist2 = S07_321
gen   exist3 = S07_331
gen   exist4 = S07_341
gen   exist5 = S07_351
gen   exist6 = S07_361
gen   exist7 = S07_371
gen   exist8 = S07_381
gen   exist9 = S07_391
gen  exist10 = S07_3101
gen  exist11 = S07_3111
gen  exist12 = S07_3121
gen  exist13 = S07_3131
gen  exist14 = S07_3141

keep PSUID exist1 exist2 exist3 exist4 exist5 exist6 exist7 exist8 exist9 exist10 exist11 exist12 exist13 exist14

reshape groups facility 1-14
reshape var exist
reshape cons PSUID

reshape long

sort PSUID
save temp1, replace

use C:\wodon\BHESDATA\HESCOM\Z07.dta, clear
gen   dist1 = S07_312
gen   dist2 = S07_322
gen   dist3 = S07_332
gen   dist4 = S07_342
gen   dist5 = S07_352
gen   dist6 = S07_362
gen   dist7 = S07_372
gen   dist8 = S07_382
gen   dist9 = S07_392
gen  dist10 = S07_3102
gen  dist11 = S07_3112
gen  dist12 = S07_3122
gen  dist13 = S07_3132
gen  dist14 = S07_3142

keep PSUID dist1 dist2 dist3 dist4 dist5 dist6 dist7 dist8 dist9 dist10 dist11 dist12 dist13 dist14

reshape groups facility 1-14
reshape var dist
reshape cons PSUID

reshape long

sort PSUID
save temp2, replace

use C:\wodon\BHESDATA\HESCOM\Z07.dta, clear
gen   hrs1 = S07_313
gen   hrs2 = S07_323
gen   hrs3 = S07_333
gen   hrs4 = S07_343
gen   hrs5 = S07_353
gen   hrs6 = S07_363
gen   hrs7 = S07_373
gen   hrs8 = S07_383
gen   hrs9 = S07_393
gen  hrs10 = S07_3103
gen  hrs11 = S07_3113
gen  hrs12 = S07_3123
gen  hrs13 = S07_3133
gen  hrs14 = S07_3143

keep PSUID hrs1 hrs2 hrs3 hrs4 hrs5 hrs6 hrs7 hrs8 hrs9 hrs10 hrs11 hrs12 hrs13 hrs14

reshape groups facility 1-14
reshape var hrs
reshape cons PSUID

reshape long

sort PSUID
save temp3, replace

use C:\wodon\BHESDATA\HESCOM\Z07.dta, clear
gen   min1 = S07_314
gen   min2 = S07_324
gen   min3 = S07_334
gen   min4 = S07_344
gen   min5 = S07_354
gen   min6 = S07_364
gen   min7 = S07_374
gen   min8 = S07_384
gen   min9 = S07_394
gen  min10 = S07_3104
gen  min11 = S07_3114
gen  min12 = S07_3124
gen  min13 = S07_3134
gen  min14 = S07_3144

keep PSUID min1 min2 min3 min4 min5 min6 min7 min8 min9 min10 min11 min12 min13 min14

reshape groups facility 1-14
reshape var min
reshape cons PSUID

reshape long

sort PSUID
save temp4, replace

use temp
merge PSUID using temp1
drop _merge
sort PSUID

merge PSUID using temp2
drop _merge
sort PSUID

merge PSUID using temp3
drop _merge
sort PSUID

merge PSUID using temp4
drop _merge
replace dist = 0 if exist==1

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
tab facility, summ(nresp) mean noobs
tab facility, summ(  hrs) mean noobs

tab facility dclass, nofreq row

erase  temp.dta
erase temp1.dta
erase temp2.dta
erase temp3.dta
erase temp4.dta

log close
