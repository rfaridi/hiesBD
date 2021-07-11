log using c:\wodon\bhesdata\log\scr334b, replace
infile using c:\wodon\bhesdata\scr334b

label define S334COL1 068 "Lungi napkin                 No"
label define S334COL1 069 "Dhooti                       No", add
label define S334COL1 070 "Shirt and pant               No", add
label define S334COL1 071 "Panjabi and trouser          No", add
label define S334COL1 072 "Suit overcoat                No", add
label define S334COL1 073 "Gangy/underware              No", add
label define S334COL1 074 "Sweater pullover             No", add
label define S334COL1 075 "Scare(Chadar)                No", add
label define S334COL1 076 "Others (Men and boy garments No", add
label define S334COL1 077 "Shari thick                  No", add
label define S334COL1 078 "Shari fine                   No", add
label define S334COL1 079 "Salwar/kameez                No", add
label define S334COL1 080 "Ladis gauze scarf (Orna)     No", add
label define S334COL1 081 "Petticoat                    No", add
label define S334COL1 082 "Blouse/brassier              No", add
label define S334COL1 083 "Frock/shirt/pant             No", add
label define S334COL1 084 "Sweater pullover scarf       No", add
label define S334COL1 085 "Other (women & girls garment No", add
label define S334COL1 086 "Bed sheet/bedcover and pillo No", add
label define S334COL1 087 "Screen/table cover and other No", add
label define S334COL1 088 "Quilt                        No", add
label define S334COL1 089 "Mosquito net                 No", add
label define S334COL1 090 "Others (Cloth, dress ...)    No", add
label values S334COL1 S334COL1

save c:\wodon\bhesdata\Z334, replace
summarize
log close
clear

