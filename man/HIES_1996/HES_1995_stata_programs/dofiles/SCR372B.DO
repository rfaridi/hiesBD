log using c:\wodon\bhesdata\log\scr372b, replace
infile using c:\wodon\bhesdata\scr372b

label define S372COL1 01 "Regular agric wages in cash"
label define S372COL1 02 "Regular Agric wages in kind", add
label define S372COL1 03 "Regular Non-agric wages in cash", add
label define S372COL1 04 "Regular non-agric wages in kind", add
label define S372COL1 05 "Irreg agric wages in cash", add
label define S372COL1 06 "Irreg agric wages in kind", add
label define S372COL1 07 "Irreg agric wages in cash", add
label define S372COL1 08 "Irreg agric wages in kind", add
label define S372COL1 09 "Retirement allowance", add
label define S372COL1 10 "Professional renumeration", add
label define S372COL1 11 "Income from own farming", add
label define S372COL1 12 "Earning from trading", add
label define S372COL1 13 "Festival/bonus", add
label define S372COL1 14 "Other secondary income", add
label define S372COL1 15 "Retail & wholesale business", add
label define S372COL1 16 "Cottage/household industry", add
label define S372COL1 17 "Ind/productive organization", add
label define S372COL1 18 "Service", add
label define S372COL1 19 "Comunication & store", add
label define S372COL1 20 "Construction", add
label define S372COL1 21 "Other", add
label define S372COL1 22 "Land property rent", add
label define S372COL1 23 "Income from social insurance", add
label define S372COL1 24 "Interest received", add
label define S372COL1 25 "Profit share", add
label define S372COL1 26 "Lottery &c", add
label define S372COL1 27 "Fitra", add
label define S372COL1 28 "Remittances received", add
label define S372COL1 29 "Annual imputed income", add
label define S372COL1 30 "Homemade goods consmmed", add
label define S372COL1 31 "Rent of owner-occupied house", add
label define S372COL1 32 "Rent of rent-free house", add
label define S372COL1 33 "Other imputed income", add
label define S372COL1 34 "Charity and gifts received", add
label define S372COL1 35 "Articles from relative", add
label define S372COL1 36 "Sale of property assets", add
label define S372COL1 37 "Sales of cows/buffaloes", add
label define S372COL1 38 "Sales of goats/sheeps", add
label define S372COL1 39 "Sales of poultry", add
label define S372COL1 40 "Withdrawal from working capital", add
label define S372COL1 41 "Withdrawal from savings fund", add
label define S372COL1 42 "Receipt of loaned money", add
label define S372COL1 43 "Loan taken", add
label define S372COL1 44 "Gratuty & Provident Fund", add
label define S372COL1 45 "Others", add
label define S372COL1 46 "Property  purchased", add
label define S372COL1 47 "Savings in NGO", add
label define S372COL1 48 "Savings in Bank", add
label define S372COL1 49 "Savings in cash &c", add
label define S372COL1 50 "Puchase of cows/buffaloes", add
label define S372COL1 51 "Purchase of goats/sheeps", add
label define S372COL1 52 "Purcahase of poultry", add
label define S372COL1 53 "Installment of G.P.Fund", add
label define S372COL1 54 "Installment of life insurance", add
label define S372COL1 55 "Investment", add
label define S372COL1 56 "Loan repayment", add
label values S372COL1 S372COL1

save c:\wodon\bhesdata\Z372, replace
summarize
log close
clear

