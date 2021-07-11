* Poverty gap and squared poverty gap - CBN

log using abstract\tab404.log, replace

use c:\wodon\bhesdata\hhlist, clear

format PGL SPGL PGU SPGU %6.5f
tab division urbrural [weight=weight], summ( PGL) mean noobs
tab division urbrural [weight=weight], summ( PGU) mean noobs

tab division urbrural [weight=weight], summ(SPGL) mean noobs
tab division urbrural [weight=weight], summ(SPGU) mean noobs

log close
