cap log using programs\prog05, replace
set more off

* Computing the various poverty measures and preparing the
* geographic poverty profile.

* COMPUTING THE POVERTY MEASURES
* ----------------------------------------------------------------------
use programs\hhdata
sort AREA
merge AREA using programs\zc
tab _merge
drop _merge
sort HHID
gen PCEXPL=PCEXP/ZL
gen     HL=(PCEXPL<=1)
gen    PGL=(1-PCEXPL)*HL
gen   SPGL=(1-PCEXPL)^2*HL
gen   FPGL=(1-PCEXPL)^4*HL
gen PCEXPU=PCEXP/ZU
gen     HU=(PCEXPU<=1)
gen    PGU=(1-PCEXPU)*HU
gen   SPGU=(1-PCEXPU)^2*HU
gen   FPGU=(1-PCEXPU)^4*HU
gen NUMBER=1
drop DIV
gen     DIV=1 if (RR==30)|(RR==40)|(RR==42)|(RR==48)|(RR==60)|(RR==95)
replace DIV=2 if (RR==07)|(RR==15)|(RR==25)|(RR==46)|(RR==65)|(RR==84)|(RR==90)
replace DIV=3 if (RR==45)|(RR==50)|(RR==55)
replace DIV=4 if (RR==10)|(RR==35)|(RR==70)|(RR==80)|(RR==85)
replace DIV=5 if (RR==05) | (RR==75)
gen STRATA=0
replace STRATA=1 if DIV==5 & UR==2
replace STRATA=2 if DIV==5 & UR==1
replace STRATA=3 if DIV==2 & UR==4
replace STRATA=4 if DIV==2 & UR==2
replace STRATA=5 if DIV==2 & UR==1
replace STRATA=6 if DIV==1 & UR==4
replace STRATA=7 if DIV==1 & UR==2
replace STRATA=8 if DIV==1 & UR==1
replace STRATA=9 if DIV==3 & UR==4
replace STRATA=10 if DIV==3 & UR==2
replace STRATA=11 if DIV==3 & UR==1
replace STRATA=12 if DIV==4 & UR==4
replace STRATA=13 if DIV==4 & UR==2
replace STRATA=14 if DIV==4 & UR==1
gen HHID2=HHID/1000
gen PSU=int(HHID2)
* ----------------------------------------------------------------------

* POVERTY MEASURES: BY AREA, BY SECTOR, AND OVERALL
* ----------------------------------------------------------------------
gen WEIGHT=EXFAC*HS
svymean   HL   HU [w=WEIGHT], strata(STRATA) psu(PSU) by(AREA)
svymean  PGL  PGU [w=WEIGHT], strata(STRATA) psu(PSU) by(AREA)
svymean SPGL SPGU [w=WEIGHT], strata(STRATA) psu(PSU) by(AREA)

svymean   HL   HU [w=WEIGHT], strata(STRATA) psu(PSU) by(SECTOR)
svymean  PGL  PGU [w=WEIGHT], strata(STRATA) psu(PSU) by(SECTOR)
svymean SPGL SPGU [w=WEIGHT], strata(STRATA) psu(PSU) by(SECTOR)

svymean   HL   HU [w=WEIGHT], strata(STRATA) psu(PSU)
svymean  PGL  PGU [w=WEIGHT], strata(STRATA) psu(PSU)
svymean SPGL SPGU [w=WEIGHT], strata(STRATA) psu(PSU)
* ----------------------------------------------------------------------

drop MAXED* D1-D14 OH*
save, replace
cap log close
