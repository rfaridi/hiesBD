log using c:\wodon\bhesdata\log\scr11b, replace
infile using c:\wodon\bhesdata\scr11b
label define S11_COL3 1 "Male  "
label define S11_COL3 2 "Female", add
label values S11_COL3 S11_COL3
label define S11_COL4 1 "Household head"
label define S11_COL4 2 "Spouse        ", add
label define S11_COL4 3 "Children      ", add
label define S11_COL4 4 "Brother/Sister", add
label define S11_COL4 5 "Parent        ", add
label define S11_COL4 6 "Other         ", add
label values S11_COL4 S11_COL4
label define S11_COL6 1 "Married      "
label define S11_COL6 2 "Unmarried    ", add
label define S11_COL6 3 "Widow        ", add
label define S11_COL6 4 "Divorced     ", add
label values S11_COL6 S11_COL6
label define S11_COL8 1 "Employed              "
label define S11_COL8 2 "Employed, did not work", add
label define S11_COL8 3 "Household work        ", add
label define S11_COL8 4 "Unemployed,looking for", add
label define S11_COL8 5 "Unemployed,not seeking", add
label define S11_COL8 6 "Student               ", add
label define S11_COL8 7 "Not working           ", add
label define S11_COL8 8 "Others                ", add
label values S11_COL8 S11_COL8
label define S11COL10 01 "Owner farmer (Not work)           "
label define S11COL10 02 "Owner farmer (Who works)          ", add
label define S11COL10 03 "Agri. worker(family land)         ", add
label define S11COL10 04 "Agri. worker(Family land & others)", add
label define S11COL10 05 "Agricultural labour(No family land", add
label define S11COL10 06 "Contractual Agricultutal Labour   ", add
label define S11COL10 07 "Tenant farmer (including own land)", add
label define S11COL10 08 "Tenant (Others land)              ", add
label define S11COL10 09 "Fisherman                         ", add
label define S11COL10 10 "Forestry & live-stock             ", add
label define S11COL10 11 "Servant/maid Servant (Agri.)      ", add
label define S11COL10 12 "Other (Agricultural Act.)         ", add
label define S11COL10 13 "Professional Person               ", add
label define S11COL10 14 "Executive/Admin. Officer          ", add
label define S11COL10 15 "Other Officials                   ", add
label define S11COL10 16 "Teacher                           ", add
label define S11COL10 17 "Salesman                          ", add
label define S11COL10 18 "Businessman                       ", add
label define S11COL10 19 "Production labour                 ", add
label define S11COL10 20 "Labour Employment(Elc.Gas)        ", add
label define S11COL10 21 "Labour (Construction work)        ", add
label define S11COL10 22 "Sports & Cultural Act.            ", add
label define S11COL10 23 "Smith                             ", add
label define S11COL10 24 "Potter                            ", add
label define S11COL10 25 "Carpenter                         ", add
label define S11COL10 26 "Weaver                            ", add
label define S11COL10 27 "Broker/Middlemen                  ", add
label define S11COL10 28 "Transportation                    ", add
label define S11COL10 29 "Day-labour                        ", add
label define S11COL10 30 "Servant/maid servant(non.Agri     ", add
label define S11COL10 31 "Others                            ", add
label values S11COL10 S11COL10
label define S11COL12 11 "Agriculture                "
label define S11COL12 12 "Forestry                   ", add
label define S11COL12 13 "Livestock                  ", add
label define S11COL12 14 "Fisheries                  ", add
label define S11COL12 15 "Poltry                     ", add
label define S11COL12 20 "Mineral                    ", add
label define S11COL12 30 "Industry/Mill Manufacturing", add
label define S11COL12 40 "House/Road Constraction    ", add
label define S11COL12 50 "Business/Hotel/Resturant   ", add
label define S11COL12 60 "Transport                  ", add
label define S11COL12 70 "Money/Asset/Service        ", add
label define S11COL12 80 "Social Work                ", add
label define S11COL12 90 "Others                     ", add
label values S11COL12 S11COL12
label define S11COL13 01 "Owner Farmer                   "
label define S11COL13 02 "Tenant Farmer                  ", add
label define S11COL13 03 "Tenant                         ", add
label define S11COL13 04 "Self-employment(Forest & Fish) ", add
label define S11COL13 05 "Agricultural Labour            ", add
label define S11COL13 06 "Unpaid family worker (Agri.)   ", add
label define S11COL13 11 "Self employed( non Agri.)      ", add
label define S11COL13 12 "Employer                       ", add
label define S11COL13 13 "Official of NGO                ", add
label define S11COL13 14 "Official of Govt.              ", add
label define S11COL13 15 "Non Agricultural labour        ", add
label define S11COL13 16 "Unpaid family worker(non Agri.)", add
label values S11COL13 S11COL13
label define S11COL15 01 "Owner farmer (Not work)           "
label define S11COL15 02 "Owner farmer (Who works)          ", add
label define S11COL15 03 "Agri. worker(family land)         ", add
label define S11COL15 04 "Agri. worker(Family land & others)", add
label define S11COL15 05 "Agricultural labour(No family land", add
label define S11COL15 06 "Contractual Agricultutal Labour   ", add
label define S11COL15 07 "Tenant farmer (including own land)", add
label define S11COL15 08 "Tenant (Others land)              ", add
label define S11COL15 09 "Fisherman                         ", add
label define S11COL15 10 "Forestry & live-stock             ", add
label define S11COL15 11 "Servant/maid Servant (Agri.)      ", add
label define S11COL15 12 "Other (Agricultural Act.)         ", add
label define S11COL15 13 "Professional Person               ", add
label define S11COL15 14 "Executive/Admin. Officer          ", add
label define S11COL15 15 "Other Officials                   ", add
label define S11COL15 16 "Teacher                           ", add
label define S11COL15 17 "Salesman                          ", add
label define S11COL15 18 "Businessman                       ", add
label define S11COL15 19 "Production labour                 ", add
label define S11COL15 20 "Labour Employment(Elc.Gas)        ", add
label define S11COL15 21 "Labour (Construction work)        ", add
label define S11COL15 22 "Sports & Cultural Act.            ", add
label define S11COL15 23 "Smith                             ", add
label define S11COL15 24 "Potter                            ", add
label define S11COL15 25 "Carpenter                         ", add
label define S11COL15 26 "Weaver                            ", add
label define S11COL15 27 "Broker/Middlemen                  ", add
label define S11COL15 28 "Transportation                    ", add
label define S11COL15 29 "Day-labour                        ", add
label define S11COL15 30 "Servant/maid servant(non.Agri     ", add
label define S11COL15 31 "Others                            ", add
label values S11COL15 S11COL15
label define S11COL16 11 "Agriculture                "
label define S11COL16 12 "Forestry                   ", add
label define S11COL16 13 "Livestock                  ", add
label define S11COL16 14 "Fisheries                  ", add
label define S11COL16 15 "Poltry                     ", add
label define S11COL16 20 "Mineral                    ", add
label define S11COL16 30 "Industry/Mill Manufacturing", add
label define S11COL16 40 "House/Road Constraction    ", add
label define S11COL16 50 "Business/Hotel/Resturant   ", add
label define S11COL16 60 "Transport                  ", add
label define S11COL16 70 "Money/Asset/Service        ", add
label define S11COL16 80 "Social Work                ", add
label define S11COL16 90 "Others                     ", add
label values S11COL16 S11COL16

save c:\wodon\bhesdata\Z11, replace
summarize
log close
clear
