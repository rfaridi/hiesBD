gen wpc = weight

sort PCEXP
gen  wpc1 = wpc
gen swpc1 = sum(wpc1)
egen totwpc = sum(wpc)

gen p20 = 0.2 * totwpc
gen p40 = 0.4 * totwpc
gen p60 = 0.6 * totwpc
gen p80 = 0.8 * totwpc

gen quint1 = 5
replace quint1 = 4 if swpc1 < p80
replace quint1 = 3 if swpc1 < p60
replace quint1 = 2 if swpc1 < p40
replace quint1 = 1 if swpc1 < p20

sort HHID

