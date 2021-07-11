log using c:\wodon\bhesdata\log\scr335b, replace
infile using c:\wodon\bhesdata\scr335b

label define S335COL1 091 "Shoe and sandal (Leather male)pair"
label define S335COL1 092 "Shoe and sandal (Rubber male) pair", add
label define S335COL1 093 "Cloth shoe (male)             pair", add
label define S335COL1 094 "Wooden sandal (male)          pair", add
label define S335COL1 095 "Shoe brass (male)               No", add
label define S335COL1 096 "Maintaining expenses (male)       ", add
label define S335COL1 097 "Other articles (male)             ", add
label define S335COL1 098 "Shoe/sandal(Leather female)   pair", add
label define S335COL1 099 "Shoe/sandal (Rubber female)   pair", add
label define S335COL1 100 "Cloth shoe (female)           pair", add
label define S335COL1 101 "Wooden sandal (female)        pair", add
label define S335COL1 102 "Shoe brass (female)             No", add
label define S335COL1 103 "Maintaining expenses (female)     ", add
label define S335COL1 104 "Other articles (female)           ", add
label define S335COL1 105 "Choki/cot                       No", add
label define S335COL1 106 "Chair table dressing table      No", add
label define S335COL1 107 "Sofa                            No", add
label define S335COL1 108 "Wooden and steel almirah        No", add
label define S335COL1 109 "Matress quilt pillow            No", add
label define S335COL1 110 "Rag (without cover)             No", add
label define S335COL1 111 "Carpet-mat                      No", add
label define S335COL1 112 "Furniture hire charge           No", add
label define S335COL1 113 "Other (Furniture)                 ", add
label define S335COL1 114 "Refrigerator                    No", add
label define S335COL1 115 "Cooker and stove                No", add
label define S335COL1 116 "Electric Stove                  No", add
label define S335COL1 117 "Metal flat dish                 No", add
label define S335COL1 118 "Other articles (Cooking)        No", add
label define S335COL1 119 "Earthen flat dish-plate         No", add
label define S335COL1 120 "Glass and chiana-clay article   No", add
label define S335COL1 121 "Spoon fork knife                No", add
label define S335COL1 122 "Other cooking equipment         No", add
label define S335COL1 123 "Radio/two-in-one                No", add
label define S335COL1 124 "Television set/vdo game         No", add
label define S335COL1 125 "VCP/VCR                         No", add
label define S335COL1 126 "Gitter/arkestra                 No", add
label define S335COL1 127 "VDO tape/casset                 No", add
label define S335COL1 128 "Other(Instrument)                 ", add
label define S335COL1 129 "Book/newspaper                  No", add
label define S335COL1 130 "Cinema/charity show               ", add
label define S335COL1 131 "Sports expenses                   ", add
label define S335COL1 132 "Photographing                     ", add
label define S335COL1 133 "Recreation articles               ", add
label define S335COL1 134 "Other(Recreation)                 ", add
label define S335COL1 135 "Washing machine                 No", add
label define S335COL1 136 "Iron                            No", add
label define S335COL1 137 "Other (Washing)                   ", add
label define S335COL1 138 "Trunk suitcase                  No", add
label define S335COL1 139 "Lantern/chimney/Lamp            No", add
label define S335COL1 140 "Electric lamp bulb              No", add
label define S335COL1 141 "Electric fan air condition      No", add
label define S335COL1 142 "Typewriter/computer             No", add
label define S335COL1 143 "Swing machine                   No", add
label define S335COL1 144 "Equipment made of iron          No", add
label define S335COL1 145 "Battery cell                    No", add
label define S335COL1 146 "Other (Household material)        ", add
label define S335COL1 147 "Home knitted cloth (rep. exp.)    ", add
label define S335COL1 148 "Electrical equipment              ", add
label define S335COL1 149 "Repairing enamal plate            ", add
label define S335COL1 150 "Bell-metal/brass pot rep.         ", add
label define S335COL1 151 "Other kitchen equipment           ", add
label define S335COL1 152 "Furniture(cleaning & rep.)        ", add
label define S335COL1 153 "Trunk suitcase(repairing)         ", add
label define S335COL1 154 "Other (Sewing & knitting)         ", add
label define S335COL1 155 "Hand-bag (male/female)          No", add
label define S335COL1 156 "Tie-pin /Caflings               No", add
label define S335COL1 157 "Belt                            No", add
label define S335COL1 158 "Umbrella/stick                  No", add
label define S335COL1 159 "Specticles                      No", add
label define S335COL1 160 "Cigarette case/lighter          No", add
label define S335COL1 161 "Wrist and pocket watch          No", add
label define S335COL1 162 "Other ornament                  No", add
label values S335COL1 S335COL1

save c:\wodon\bhesdata\Z335, replace
summarize
log close
clear

