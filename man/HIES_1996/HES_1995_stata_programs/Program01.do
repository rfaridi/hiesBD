cap log using programs\prog01, replace
set more off

* This program extracts some important household-level characteristics 
* and dummy variables from the various files, and outputs them to a 
* data set called hhdata

* BASIC DEMOGRAPHIC INFORMATION
* ----------------------------------------------------------------------
use z11, clear
gen       HS=1
gen   BABIES=(S11_COL5<=5)
gen CHILDREN=(6<=S11_COL5) & (S11_COL5<=14)
gen   ADULTS=(15<=S11_COL5) | (S11_COL5==.)
collapse (sum) HS BABIES CHILDREN ADULTS, by(HHID)

gen CHECK=HS-BABIES-CHILDREN-ADULTS
list if CHECK~=0
keep HHID HS BABIES CHILDREN ADULTS
sort HHID
summarize
save programs\hhdata, replace
* ----------------------------------------------------------------------

* MAXIMUM EDUCATION LEVEL IN THE HOUSEHOLD
* ----------------------------------------------------------------------
* not currently enrolled
use z209, clear
keep HHID S209_10
collapse (max) S209_10, by(HHID)
rename S209_10 MAXEDUC1
tab MAXEDUC1
sort HHID
save temp1, replace

* currently enrolled
use z223, clear
keep HHID S223_24
collapse (max) S223_24, by(HHID)
rename S223_24 MAXEDUC2
tab MAXEDUC2
sort HHID
save temp2, replace

* merging together the two

merge HHID using temp1
tabulate _merge
drop _merge
sort HHID
gen MAXEDUC=max(MAXEDUC1, MAXEDUC2)
tab MAXEDUC
keep HHID MAXEDUC
save temp3, replace

use programs\hhdata, clear
sort HHID
merge HHID using temp3
tab _merge
drop _merge
sort HHID
save, replace
* ----------------------------------------------------------------------

* OCCUPATION OF HEAD OF THE HOUSEHOLD
* ----------------------------------------------------------------------
use z11, clear
keep if S11_COL4==1 | (HHID==454421077 & S11_MSN==1)
keep HHID S11COL10 RR UR
sort HHID
save temp1, replace

use programs\hhdata, clear
merge HHID using temp1
tab _merge
drop _merge
sort HHID
save, replace
* ----------------------------------------------------------------------

* AREA VARIABLES AND EXPANSION FACTORS
* ----------------------------------------------------------------------
gen     DIV=1 if (RR==30)|(RR==40)|(RR==42)|(RR==48)|(RR==60)|(RR==95)
replace DIV=2 if (RR==07)|(RR==15)|(RR==25)|(RR==46)|(RR==65)|(RR==84)|(RR==90)
replace DIV=3 if (RR==05)|(RR==45)|(RR==50)|(RR==55)|(RR==75)
replace DIV=4 if (RR==10)|(RR==35)|(RR==70)|(RR==80)|(RR==85)

gen AREA=1 if DIV==1 & UR==4
replace AREA=2 if DIV==1 & UR==2
replace AREA=3 if DIV==1 & UR==1 & (RR==30 | RR==60)
replace AREA=4 if DIV==1 & UR==1 & (RR~=30 & RR~=60)
replace AREA=5 if DIV==2 & UR==4
replace AREA=6 if DIV==2 & UR==2
replace AREA=7 if DIV==2 & UR==1 & (RR==25 | RR==90)
replace AREA=8 if DIV==2 & UR==1 & (RR~=25 & RR~=90)
replace AREA=9 if DIV==3 & UR>1
replace AREA=10 if DIV==3 & UR==1 & (RR==05 | RR==75)
replace AREA=11 if DIV==3 & UR==1 & (RR~=05 & RR~=75)
replace AREA=12 if DIV==4 & UR>1
replace AREA=13 if DIV==4 & UR==1 & (RR==70 | RR==80)
replace AREA=14 if DIV==4 & UR==1 & (RR~=70 & RR~=80)

gen EXFAC=0
replace EXFAC=1537.488 if DIV==2 & UR==4
replace EXFAC=1077.005 if DIV==2 & UR==2
replace EXFAC=3815.811 if DIV==2 & UR==1
replace EXFAC=2370.931 if DIV==1 & UR==4
replace EXFAC=1395.135 if DIV==1 & UR==2
replace EXFAC=3702.770 if DIV==1 & UR==1
replace EXFAC=975.964  if DIV==3 & UR==4
replace EXFAC=1005.875 if DIV==3 & UR==2
replace EXFAC=3915.416 if DIV==3 & UR==1
replace EXFAC=926.050  if DIV==4 & UR==4
replace EXFAC=1741.142 if DIV==4 & UR==2
replace EXFAC=3756.915 if DIV==4 & UR==1
replace EXFAC=440.555  if RR==5 & UR==2
replace EXFAC=440.555  if RR==75 & UR==2
replace EXFAC=2742.767 if RR==5 & UR==1
replace EXFAC=2742.767 if RR==75 & UR==1
sort HHID
save, replace
* ----------------------------------------------------------------------

* EDUCATIONAL LEVEL AND OCCUPATION DUMMIES
* ----------------------------------------------------------------------
gen MAXED0=(MAXEDUC==0)
gen MAXED1=(1<=MAXEDUC & MAXEDUC<=4)
gen MAXED2=(5==MAXEDUC)
gen MAXED3=(6<=MAXEDUC & MAXEDUC<=9)
gen MAXED4=(10<=MAXEDUC)

gen D1 = (AREA == 1)
gen D2 = (AREA == 2)
gen D3 = (AREA == 3)
gen D4 = (AREA == 4)
gen D5 = (AREA == 5)
gen D6 = (AREA == 6)
gen D7 = (AREA == 7)
gen D8 = (AREA == 8)
gen D9 = (AREA == 9)
gen D10 = (AREA == 10)
gen D11 = (AREA == 11)
gen D12 = (AREA == 12)
gen D13 = (AREA == 13)
gen D14 = (AREA == 14)

gen occ1h=S11COL10
gen OH00 = (occ1h == 5) | (occ1h == 6) | (occ1h == 11) | (occ1h == 12)
gen OH01 = (occ1h == 3) | (occ1h == 4)
gen OH02 = (occ1h == 9) | (occ1h == 10)
gen OH03 = (occ1h == 7) | (occ1h == 8)
gen OH04 = (occ1h == 1) | (occ1h == 2)
gen OH11 = (occ1h == 29) | (occ1h == 30) | (occ1h == 31)
gen OH12 = ((19 <= occ1h) & (occ1h <= 21)) | ((23 <= occ1h) & (occ1h <= 26))
gen OH13 = occ1h == 28
gen OH14 = (occ1h == 17) | (occ1h == 22) | (occ1h == 27)
gen OH15 = occ1h == 18
gen OH16 = (occ1h == 13) | (occ1h == 14) | (occ1h == 15) | (occ1h == 16)
gen OH19 = (occ1h == 0) | (occ1h==.)

gen SECTOR=(AREA<=2|AREA==5|AREA==6|AREA==9|AREA==12)
sort HHID
save, replace
* ----------------------------------------------------------------------

erase temp1.dta
erase temp2.dta
erase temp3.dta
cap log close
