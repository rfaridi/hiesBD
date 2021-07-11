* Location of poverty

log using abstract\tab403.log, replace

use c:\wodon\bhesdata\hhlist, clear

format HL HU %3.1f
tab division urbrural [aweight=weight] if HL==100, nofreq cell
tab division urbrural [aweight=weight] if HU==100, nofreq cell

count if HL~=.
count if HU~=.

log close
