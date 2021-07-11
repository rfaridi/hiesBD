* Community questionnaire - General characteristics

log using abstract\app01.log, replace

use "C:\wodon\BHESDATA\HESCOM\Z01c.dta", clear

gen chair = 1 if  S01_I141==1
gen member = 1 if  S01_I42==1
gen secret = 1 if  S01_I43==1

replace  S01_I132= 0 if  S01_I132==.
replace  S01_I133= 0 if  S01_I133==.
replace  S01_I134= 0 if  S01_I134==.
replace  S01_I135= 0 if  S01_I135==.

gen     totshare =  S01_I131+ S01_I132+ S01_I133+ S01_I134+ S01_I135
replace  S01_I135=0 if totshare==200
replace totshare = 100 if totshare==200

gen muslim =  S01_I131*  S01_I12/100
gen hindu =  S01_I132*  S01_I12/100
gen other =  (S01_I133+  S01_I134+  S01_I135)*  S01_I12/100
gen all = muslim + hindu + other

collapse (sum)  S01_I11 S01_I12 chair member secret muslim hindu other all

list

log close
