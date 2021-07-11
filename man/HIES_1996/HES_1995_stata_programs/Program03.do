cap log using programs\prog03, replace
set more off

* Using the programs UNITVAL and ADDON defined below, this 
* program computes the unit values for a number of different
* food items, and outputs the results to the file: unitval.dta.

* PROGRAM DEFINED: UNITVAL
* ----------------------------------------------------------------------
clear
cap program drop unitval
program define unitval
* program parameters are "1=name of food item" "2=codemin" "3=codemax" "4=exception1" "5=exception2"
use z192 if (S192COL3>=`2' & S192COL3<=`3' & S192COL3~=`4' & S192COL3~=`5')
 
collapse S192COL6 S192COL5, by(HHID)
gen UV`2'=S192COL6/S192COL5*1000
sort HHID
save temp1, replace

* merging in variables for the regression
use programs\hhdata, clear
sort HHID
merge HHID using temp1
tabulate _merge
drop _merge
summarize UV`2' if D3==1, detail
gen UV`2'D3=_result(10)
gen LUV`2'=log(UV`2')

* running unit value regression
#delimit ;
regress LUV`2' D1 D2 D4 D5 D6 D7 D8 D9 D10 D11 D12 D13 D14
               OH01 OH02 OH03 OH04 OH11 OH12 OH13 OH14 OH15 OH16 OH19
	MAXED1 MAXED2 MAXED3 MAXED4 BABIES CHILDREN ADULTS LOGPC LOGPC2, robust;
#delimit cr

replace UV`2'=UV`2'D3 if D3==1
replace UV`2'=UV`2'D3*exp(_b[D1]) if D1==1
replace UV`2'=UV`2'D3*exp(_b[D2]) if D2==1
replace UV`2'=UV`2'D3*exp(_b[D4]) if D4==1
replace UV`2'=UV`2'D3*exp(_b[D5]) if D5==1
replace UV`2'=UV`2'D3*exp(_b[D6]) if D6==1
replace UV`2'=UV`2'D3*exp(_b[D7]) if D7==1
replace UV`2'=UV`2'D3*exp(_b[D8]) if D8==1
replace UV`2'=UV`2'D3*exp(_b[D9]) if D9==1
replace UV`2'=UV`2'D3*exp(_b[D10]) if D10==1
replace UV`2'=UV`2'D3*exp(_b[D11]) if D11==1
replace UV`2'=UV`2'D3*exp(_b[D12]) if D12==1
replace UV`2'=UV`2'D3*exp(_b[D13]) if D13==1
replace UV`2'=UV`2'D3*exp(_b[D14]) if D14==1

keep AREA UV`2'
collapse UV`2', by(AREA)
sort AREA
cap rename UV028 UVFISH
cap rename UV078 UVVEG
save temp1, replace
end
* ----------------------------------------------------------------------

* PROGRAM DEFINED: ADDON
* ----------------------------------------------------------------------
cap program drop addon
program define addon
use programs\unitval, clear
merge AREA using temp1
tab _merge
drop _merge
sort AREA
save, replace
end
* ----------------------------------------------------------------------

* CALCULATING THE VARIOUS UNIT VALUES FOR DIFFERENT FOOD ITEMS
* ----------------------------------------------------------------------
unitval     rice  003 003   0   0
use temp1, clear
save programs\unitval, replace
unitval    wheat  004 004   0   0
addon
unitval    pulse  020 020   0   0
addon
unitval     meat  069 069   0   0
addon
unitval potatoes  077 077   0   0
addon
unitval     milk  125 125   0   0
addon
unitval      oil  135 135   0   0
addon
unitval   banana  155 155   0   0
addon
unitval    sugar  187 187   0   0
addon
unitval     fish  028 037  34  36
addon
unitval vegetbls  078 111   0   0
addon
* ----------------------------------------------------------------------

erase temp1.dta
cap log close
