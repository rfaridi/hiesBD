log using c:\wodon\bhesdata\log\scr35b, replace
infile using c:\wodon\bhesdata\scr35b

label define S35_COL2 01 "Desi Aus                      kg"
label define S35_COL2 02 "HYV  Aus                      kg", add
label define S35_COL2 03 "Desi Aman                     kg", add
label define S35_COL2 04 "HYV  Aman                     kg", add
label define S35_COL2 05 "Desi Boro                     kg", add
label define S35_COL2 06 "HYV  Boro                     kg", add
label define S35_COL2 07 "Wheat                         kg", add
label define S35_COL2 08 "Jute                          kg", add
label define S35_COL2 09 "Sugar cane                    kg", add
label define S35_COL2 10 "Pafesee/oil                   kg", add
label define S35_COL2 11 "Seramum                       kg", add
label define S35_COL2 12 "Pulses                        kg", add
label define S35_COL2 13 "Cotton                        kg", add
label define S35_COL2 14 "Other crops                   kg", add
label define S35_COL2 15 "Spices                        kg", add
label define S35_COL2 16 "Potato                        kg", add
label define S35_COL2 17 "Brinjol                       kg", add
label define S35_COL2 18 "Gourd/pumkin                  kg", add
label define S35_COL2 19 "Arum                          kg", add
label define S35_COL2 20 "Snake-gourd                   kg", add
label define S35_COL2 21 "Other green leaves            kg", add
label define S35_COL2 22 "Mango                         No", add
label define S35_COL2 23 "Jackfruit                     No", add
label define S35_COL2 24 "Banana                        No", add
label define S35_COL2 25 "Lichi                         No", add
label define S35_COL2 26 "Pineapple                     No", add
label define S35_COL2 27 "Other (papia, etc.)             ", add
label define S35_COL2 28 "Cow                           No", add
label define S35_COL2 29 "Goat/Sheep                    No", add
label define S35_COL2 30 "Buffaloes                     No", add
label define S35_COL2 31 "Milk (cow, goat, buff)        lt", add
label define S35_COL2 32 "Others                          ", add
label define S35_COL2 33 "Duck                          No", add
label define S35_COL2 34 "Hen                           No", add
label define S35_COL2 35 "Egg                           No", add
label define S35_COL2 36 "Others Animals                  ", add
label define S35_COL2 37 "Fish                          kg", add
label define S35_COL2 38 "Meat                          kg", add
label define S35_COL2 39 "Feeds of livestock            kg", add
label define S35_COL2 40 "Forest products                 ", add
label define S35_COL2 41 "Other products (husk, wood)     ", add
label values S35_COL2 S35_COL2

save c:\wodon\bhesdata\Z35, replace
summarize
log close
clear

