* Gross enrolment rate - primary level

log using abstract\tab505.log, replace

use educatn, clear
keep if age>=5
gen     prim=EXFAC if S223_24>=1 & S223_24<=5 & age~=.
gen   age6_10=EXFAC if   age>=6 & age<=10 & [S201_07==1 | S201_07==2 | (S201_07==3 & S223_24 ~=.)]

count if S223_24>=1 & S223_24<=5 & age~=.
count if age>=6 & age<=10 & [S201_07==1 | S201_07==2 | (S201_07==3 & S223_24 ~=.)]

keep HHID idcode sex division urbrural prim age6_10 EXFAC
save temp, replace

******** Boys ********
use temp
keep if sex==1 & urbrural==1
collapse (sum) xprim=prim xage6_10=age6_10, by(division)
sort division
save t1, replace

use temp
keep if sex==1 & urbrural==2
collapse (sum) yprim=prim yage6_10=age6_10, by(division)
sort division
save t2, replace

use t1, clear
merge division using t2
drop _merge
sort division
save b, replace

collapse (sum) xprim xage6_10 yprim yage6_10
gen division = .
save t, replace

use b
append using t
sort division
gen sex = 1
save, replace

******** Girls ********
use temp
keep if sex==2 & urbrural==1
collapse (sum) xprim=prim xage6_10=age6_10, by(division)
sort division
save t1, replace

use temp
keep if sex==2 & urbrural==2
collapse (sum) yprim=prim yage6_10=age6_10, by(division)
sort division
save t2, replace

use t1, clear
merge division using t2
drop _merge
sort division
save g, replace

collapse (sum) xprim xage6_10 yprim yage6_10
gen division = .
save t, replace

use g
append using t
sort division
gen sex = 2
save, replace

******** Overall ********
use temp
keep if urbrural==1
collapse (sum) xprim=prim xage6_10=age6_10, by(division)
sort division
save t1, replace

use temp
keep if urbrural==2
collapse (sum) yprim=prim yage6_10=age6_10, by(division)
sort division
save t2, replace

use t1, clear
merge division using t2
drop _merge
sort division
save o, replace

collapse (sum) xprim xage6_10 yprim yage6_10
gen division = .
save t, replace

use o
append using t
sort division
gen sex = .
save, replace

use b
append using g
append using o

egen   prim = rsum(xprim yprim)
egen age6_10 = rsum(xage6_10 yage6_10)
gen gerate1 = (xprim / xage6_10)*100
gen gerate2 = (yprim / yage6_10)*100
gen gerate  = ( prim /  age6_10)*100

format gerate1 gerate2 gerate %3.0f
list sex division gerate1 gerate2 gerate

erase    b.dta
erase    g.dta
erase    o.dta
erase    t.dta
erase   t1.dta
erase   t2.dta
erase temp.dta
log close
