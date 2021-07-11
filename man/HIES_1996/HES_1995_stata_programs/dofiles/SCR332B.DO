log using c:\wodon\bhesdata\log\scr332b, replace
infile using c:\wodon\bhesdata\scr332b

label define S332COL1 012 "Bath Soap               No"
label define S332COL1 013 "Snow Cream              No", add
label define S332COL1 014 "Powder                  No", add
label define S332COL1 015 "Perfumes                No", add
label define S332COL1 016 "Shampoo                 No", add
label define S332COL1 017 "Tooth powder paste      No", add
label define S332COL1 018 "Hair cutting            No", add
label define S332COL1 019 "Hair dressing           No", add
label define S332COL1 020 "Hair brass              No", add
label define S332COL1 021 "Hair oil                ml", add
label define S332COL1 022 "Hair cream              No", add
label define S332COL1 023 "Comb clip etc.          No", add
label define S332COL1 024 "Other                   No", add
label define S332COL1 025 "Razor                   No", add
label define S332COL1 026 "Razor blade             No", add
label define S332COL1 027 "Shaving cream           No", add
label define S332COL1 028 "Shaving lotion          No", add
label define S332COL1 029 "Lipstick                No", add
label define S332COL1 030 "Nailpolish              No", add
label define S332COL1 031 "Others beautifing       No", add
label define S332COL1 032 "Other                   No", add
label define S332COL1 033 "Washing soap            No", add
label define S332COL1 034 "Soap Powder             No", add
label define S332COL1 035 "Washing expenses          ", add
label define S332COL1 036 "Bleaching powder       Lbs", add
label define S332COL1 037 "Soda                    gr", add
label define S332COL1 038 "Spray                   No", add
label define S332COL1 039 "Vim                     No", add
label define S332COL1 040 "Finish                  No", add
label define S332COL1 041 "Other (Washing)           ", add
label define S332COL1 042 "Garage rent               ", add
label define S332COL1 043 "Petrol motor oil etc.   lt", add
label define S332COL1 044 "Drivers salary and wage   ", add
label define S332COL1 045 "Drivers pocket money      ", add
label define S332COL1 046 "Other (Transport)         ", add
label define S332COL1 047 "Servant salary            ", add
label define S332COL1 048 "Telephone bills           ", add
label define S332COL1 049 "Telegram                  ", add
label define S332COL1 050 "Postal Storage            ", add
label define S332COL1 051 "Others                    ", add
label values S332COL1 S332COL1

save c:\wodon\bhesdata\Z332, replace
summarize
log close
clear

