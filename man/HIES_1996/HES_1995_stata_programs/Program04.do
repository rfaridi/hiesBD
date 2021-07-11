set more 1
cap log using programs\prog04, replace
*set more off
clear
set mem 32m

* Computes poverty lines for the various regions of interest.

* COMPUTING THE FOOD POVERTY LINE
* ----------------------------------------------------------------------
use programs\unitval
sort AREA
#delimit 
gen ZF=30.42*(0.397*UV003
	+0.040*UV004
	+0.040*UV020
	+0.012*UV069
	+0.027*UV077
	+0.058*UV125
	+0.020*UV135
	+0.020*UV155
	+0.020*UV187
	+0.048*UVFISH
	+0.150*UVVEG)*(2122/2154.205);
#delimit cr


keep AREA ZF
drop if AREA==.
save fline, replace
* ----------------------------------------------------------------------

* EXCLUDING TOBACCO AND MISC. ITEMS FROM FOOD CONSUMPTION AGGREGATE
* ----------------------------------------------------------------------
use z192 if S192COL3>=220
collapse S192COL6, by(HHID)
gen NOTFOOD=4*S192COL6
sort HHID
save temp1, replace

use programs\hhdata, clear
merge HHID using temp1
tab _merge
drop _merge
sort AREA
merge AREA using fline
tab _merge
drop _merge
sort HHID
replace NOTFOOD=0 if NOTFOOD==.
replace FEXP=FEXP-NOTFOOD
gen    NFEXP=HHEXP-FEXP
gen  PCNFEXP=NFEXP/HS
gen   PCFEXP=FEXP/HS
keep HHID HS HHEXP FEXP NFEXP PCEXP PCFEXP PCNFEXP AREA ZF EXFAC

stop

save temp1, replace
* ----------------------------------------------------------------------

* PROGRAM DEFINED: NON-FOOD ALLOWANCE USING NON-PARAMETRIC METHODS
* ----------------------------------------------------------------------
clear
cap program drop nfline
program define nfline
* program parameters are "bands for the non-parametric stuff"
use temp1, clear
gen PCNFL=PCNFEXP if [ PCEXP>=(100-`1')*ZF/100] & [ PCEXP<=(100+`1')*ZF/100]
gen PCNFU=PCNFEXP if [PCFEXP>=(100-`1')*ZF/100] & [PCFEXP<=(100+`1')*ZF/100]

collapse (mean) PCNFL PCNFU, by(AREA)
ren PCNFL PCNFL`1'
ren PCNFU PCNFU`1'
sort AREA
save temp2, replace
end
* ----------------------------------------------------------------------

* PROGRAM DEFINED: ADDON
* ----------------------------------------------------------------------
cap program drop addon
program define addon
use nflines, clear
merge AREA using temp2
tab _merge
drop _merge
sort AREA
save, replace
end
* ----------------------------------------------------------------------

* COMPUTING THE LOWER AND UPPER NON-FOOD POVERTY LINES
* ----------------------------------------------------------------------
nfline 10
save nflines, replace
nfline 09
addon
nfline 08
addon
nfline 07
addon
nfline 06
addon
nfline 05
addon
nfline 04
addon
nfline 03
addon
nfline 02
addon
nfline 01
addon
sort AREA
merge AREA using fline
tab _merge
drop _merge
gen     ZNFL=(PCNFL01+PCNFL02+PCNFL03+PCNFL04+PCNFL05+PCNFL06+PCNFL07+PCNFL08+PCNFL09+PCNFL10)/10
replace ZNFL=(PCNFL03+PCNFL04+PCNFL05+PCNFL06+PCNFL07+PCNFL08+PCNFL09+PCNFL10)/8 if AREA==2
replace ZNFL=(PCNFL02+PCNFL03+PCNFL04+PCNFL05+PCNFL06+PCNFL07+PCNFL08+PCNFL09+PCNFL10)/9 if AREA==5
replace ZNFL=(PCNFL02+PCNFL03+PCNFL04+PCNFL05+PCNFL06+PCNFL07+PCNFL08+PCNFL09+PCNFL10)/9 if AREA==6
gen     ZNFU=(PCNFU01+PCNFU02+PCNFU03+PCNFU04+PCNFU05+PCNFU06+PCNFU07+PCNFU08+PCNFU09+PCNFU10)/10
gen  ZL=ZF+ZNFL
gen  ZU=ZF+ZNFU
list ZF ZNFL ZNFU ZL ZU
sort AREA
keep AREA ZF ZNFL ZNFU ZL ZU
save programs\zc, replace
* ----------------------------------------------------------------------

erase temp1.dta
erase temp2.dta
erase nflines.dta
cap log close
