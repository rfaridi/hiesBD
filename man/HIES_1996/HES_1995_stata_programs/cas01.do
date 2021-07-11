log using cas01, replace

* Projecting Poverty Incidence in Bangladesh:

use hhlist, clear

gen c0 = PCEXP*1.14
gen h0 = [c0<ZU]*100

format h0 %5.1f
summ h0 [weight=weight]


* Assuming GDP growth of 4 per cent
gen  c1 =     c0*1.0236
gen  c2 =     c1*1.0236
gen  c3 =     c2*1.0236
gen  c4 =     c3*1.0236
gen  c5 =     c4*1.0236
gen  c6 =     c5*1.0236
gen  c7 =     c6*1.0236
gen  c8 =     c7*1.0236
gen  c9 =     c8*1.0236
gen c10 =     c9*1.0236
gen c11 =    c10*1.0236
gen c12 =    c11*1.0236
gen c13 =    c12*1.0236
gen c14 =    c13*1.0236
gen c15 =    c14*1.0236
gen c16 =    c15*1.0236
gen c17 =    c16*1.0236
gen c18 =    c17*1.0236
gen c19 =    c18*1.0236
gen c20 =    c19*1.0236

gen  h1 = [ c1<ZU]*100
gen  h2 = [ c2<ZU]*100
gen  h3 = [ c3<ZU]*100
gen  h4 = [ c4<ZU]*100
gen  h5 = [ c5<ZU]*100
gen  h6 = [ c6<ZU]*100
gen  h7 = [ c7<ZU]*100
gen  h8 = [ c8<ZU]*100
gen  h9 = [ c9<ZU]*100
gen h10 = [c10<ZU]*100
gen h11 = [c11<ZU]*100
gen h12 = [c12<ZU]*100
gen h13 = [c13<ZU]*100
gen h14 = [c14<ZU]*100
gen h15 = [c15<ZU]*100
gen h16 = [c16<ZU]*100
gen h17 = [c17<ZU]*100
gen h18 = [c18<ZU]*100
gen h19 = [c19<ZU]*100
gen h20 = [c20<ZU]*100


summ h0 h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 [weight=weight]
drop c1 c2 c3 c4 c5 c6 c7 c8 c9 c10 c11 c12 c13 c14 c15 c16 c17 c18 c19 c20
drop h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20



* Assuming GDP growth of 5 per cent
gen  c1 =     c0*1.0335
gen  c2 =     c1*1.0335
gen  c3 =     c2*1.0335
gen  c4 =     c3*1.0335
gen  c5 =     c4*1.0335
gen  c6 =     c5*1.0335
gen  c7 =     c6*1.0335
gen  c8 =     c7*1.0335
gen  c9 =     c8*1.0335
gen c10 =     c9*1.0335
gen c11 =    c10*1.0335
gen c12 =    c11*1.0335
gen c13 =    c12*1.0335
gen c14 =    c13*1.0335
gen c15 =    c14*1.0335
gen c16 =    c15*1.0335
gen c17 =    c16*1.0335
gen c18 =    c17*1.0335
gen c19 =    c18*1.0335
gen c20 =    c19*1.0335

gen  h1 = [ c1<ZU]*100
gen  h2 = [ c2<ZU]*100
gen  h3 = [ c3<ZU]*100
gen  h4 = [ c4<ZU]*100
gen  h5 = [ c5<ZU]*100
gen  h6 = [ c6<ZU]*100
gen  h7 = [ c7<ZU]*100
gen  h8 = [ c8<ZU]*100
gen  h9 = [ c9<ZU]*100
gen h10 = [c10<ZU]*100
gen h11 = [c11<ZU]*100
gen h12 = [c12<ZU]*100
gen h13 = [c13<ZU]*100
gen h14 = [c14<ZU]*100
gen h15 = [c15<ZU]*100
gen h16 = [c16<ZU]*100
gen h17 = [c17<ZU]*100
gen h18 = [c18<ZU]*100
gen h19 = [c19<ZU]*100
gen h20 = [c20<ZU]*100


summ h0 h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 [weight=weight]
drop c1 c2 c3 c4 c5 c6 c7 c8 c9 c10 c11 c12 c13 c14 c15 c16 c17 c18 c19 c20
drop h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20




* Assuming GDP growth of 7 per cent
gen  c1 =     c0*1.0531
gen  c2 =     c1*1.0531
gen  c3 =     c2*1.0531
gen  c4 =     c3*1.0531
gen  c5 =     c4*1.0531
gen  c6 =     c5*1.0531
gen  c7 =     c6*1.0531
gen  c8 =     c7*1.0531
gen  c9 =     c8*1.0531
gen c10 =     c9*1.0531
gen c11 =    c10*1.0531
gen c12 =    c11*1.0531
gen c13 =    c12*1.0531
gen c14 =    c13*1.0531
gen c15 =    c14*1.0531
gen c16 =    c15*1.0531
gen c17 =    c16*1.0531
gen c18 =    c17*1.0531
gen c19 =    c18*1.0531
gen c20 =    c19*1.0531

gen  h1 = [ c1<ZU]*100
gen  h2 = [ c2<ZU]*100
gen  h3 = [ c3<ZU]*100
gen  h4 = [ c4<ZU]*100
gen  h5 = [ c5<ZU]*100
gen  h6 = [ c6<ZU]*100
gen  h7 = [ c7<ZU]*100
gen  h8 = [ c8<ZU]*100
gen  h9 = [ c9<ZU]*100
gen h10 = [c10<ZU]*100
gen h11 = [c11<ZU]*100
gen h12 = [c12<ZU]*100
gen h13 = [c13<ZU]*100
gen h14 = [c14<ZU]*100
gen h15 = [c15<ZU]*100
gen h16 = [c16<ZU]*100
gen h17 = [c17<ZU]*100
gen h18 = [c18<ZU]*100
gen h19 = [c19<ZU]*100
gen h20 = [c20<ZU]*100


summ h0 h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 [weight=weight]
drop c1 c2 c3 c4 c5 c6 c7 c8 c9 c10 c11 c12 c13 c14 c15 c16 c17 c18 c19 c20
drop h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20


log close

