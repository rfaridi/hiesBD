# ------------------------------------------------------------------------------

# --- CONFIGURATION SECTION - START ---


# The following command should contain the complete path and
# name of the .csv file to be read (e.g. "C:/CIS 2008/Data/ALL.csv")
# Change CSV_DATA_PATH to your filename, below:

csvpath <- "CSV_DATA_PATH"


# The following command should contain the complete path and
# name of the .Rdata file to be saved (e.g. "C:/CIS 2008/Data/ALL.Rdata")
# Change RDATA_PATH to your filename, below:

rdatapath <- "RDATA_PATH"


# --- Read the raw data ---

# package readr should be installed
rdatafile <- tibble::as_tibble(read.csv(csvpath))

names(rdatafile) <- toupper(names(rdatafile))    # all variable names to upper case


# --- CONFIGURATION SECTION -  END  ---

# There should be nothing to change below this line
# ------------------------------------------------------------------------------



# --- Set the variable metadata attributes --- 
# package haven should be installed

rdatafile[["MM"]] <- haven::labelled_spss(rdatafile[["MM"]],
    labels = c("" = )
)
attr(rdatafile[["MM"]], "label") <- "Month"

rdatafile[["RR"]] <- haven::labelled_spss(rdatafile[["RR"]],
    labels = c("" = )
)
attr(rdatafile[["RR"]], "label") <- "Region"

rdatafile[["DD"]] <- haven::labelled_spss(rdatafile[["DD"]],
    labels = c("Bagerhat" = 1,
               "Barguna" = 4,
               "Barisal" = 6,
               "Bhola" = 9,
               "Bogra" = 10,
               "Brahamanbaria" = 12,
               "Chandpur" = 13,
               "Chittagong" = 15,
               "Chuadanga" = 18,
               "Comilla" = 19,
               "Cox'S Bazar" = 22,
               "Dhaka" = 26,
               "Dinajpur" = 27,
               "Faridpur" = 29,
               "Feni" = 30,
               "Gaibandha" = 32,
               "Gazipur" = 33,
               "Rajbari" = 34,
               "Gopalganj" = 35,
               "Habiganj" = 36,
               "Joypurhat" = 38,
               "Jamalpur" = 39,
               "Jessore" = 41,
               "Jhalokati" = 42,
               "Jhenaidah" = 44,
               "Khagrachhari" = 46,
               "Khulna" = 47,
               "Kishoreganj" = 48,
               "Kurigram" = 49,
               "Kushtia" = 50,
               "Lakshmipur" = 51,
               "Lalmonirhat" = 52,
               "Madaripur" = 54,
               "Magura" = 55,
               "Manikganj" = 56,
               "Meherpur" = 57,
               "Maulvibazar" = 58,
               "Munshiganj" = 59,
               "Mymensingh" = 61,
               "Naogaon" = 64,
               "Narail" = 65,
               "Narayanganj" = 67,
               "Narsingdi" = 68,
               "Natore" = 69,
               "Nawabganj" = 70,
               "Netrakona" = 72,
               "Nilphamari" = 73,
               "Noakhali" = 75,
               "Pabna" = 76,
               "Panchagarh" = 77,
               "Patuakhali" = 78,
               "Pirojpur" = 79,
               "Rajshahi" = 81,
               "Rajbari" = 82,
               "Rangamati" = 84,
               "Rangpur" = 85,
               "Shariatpur" = 86,
               "Satkhira" = 87,
               "Sirajganj" = 88,
               "Sherpur" = 89,
               "Sunamganj" = 90,
               "Sylhet" = 91,
               "Tangail" = 93,
               "Thakurgaon" = 94)
)
attr(rdatafile[["DD"]], "label") <- "District"

rdatafile[["TT"]] <- haven::labelled_spss(rdatafile[["TT"]],
    labels = c("" = )
)
attr(rdatafile[["TT"]], "label") <- "Thana"

attr(rdatafile[["HHID"]], "label") <- "LHHID"

rdatafile[["UW"]] <- haven::labelled_spss(rdatafile[["UW"]],
    labels = c("" = )
)
attr(rdatafile[["UW"]], "label") <- "Union/Ward"

attr(rdatafile[["MA"]], "label") <- "Mauza"

rdatafile[["UR"]] <- haven::labelled_spss(rdatafile[["UR"]],
    labels = c("Rural" = 1)
)
attr(rdatafile[["UR"]], "label") <- "RMO"

attr(rdatafile[["HHH"]], "label") <- "HHID"

rdatafile[["S01_WEEK"]] <- haven::labelled_spss(rdatafile[["S01_WEEK"]],
    labels = c("" = )
)
attr(rdatafile[["S01_WEEK"]], "label") <- "Week"

rdatafile[["MM"]] <- haven::labelled_spss(rdatafile[["MM"]],
    labels = c("" = )
)
attr(rdatafile[["MM"]], "label") <- "MONTH"

rdatafile[["RR"]] <- haven::labelled_spss(rdatafile[["RR"]],
    labels = c("" = )
)
attr(rdatafile[["RR"]], "label") <- "REGION"

rdatafile[["DD"]] <- haven::labelled_spss(rdatafile[["DD"]],
    labels = c("Bagerhat" = 1,
               "Barguna" = 4,
               "Barisal" = 6,
               "Bhola" = 9,
               "Bogra" = 10,
               "Brahamanbaria" = 12,
               "Chandpur" = 13,
               "Chittagong" = 15,
               "Chuadanga" = 18,
               "Comilla" = 19,
               "Cox'S Bazar" = 22,
               "Dhaka" = 26,
               "Dinajpur" = 27,
               "Faridpur" = 29,
               "Feni" = 30,
               "Gaibandha" = 32,
               "Gazipur" = 33,
               "Rajbari" = 34,
               "Gopalganj" = 35,
               "Habiganj" = 36,
               "Joypurhat" = 38,
               "Jamalpur" = 39,
               "Jessore" = 41,
               "Jhalokati" = 42,
               "Jhenaidah" = 44,
               "Khagrachhari" = 46,
               "Khulna" = 47,
               "Kishoreganj" = 48,
               "Kurigram" = 49,
               "Kushtia" = 50,
               "Lakshmipur" = 51,
               "Lalmonirhat" = 52,
               "Madaripur" = 54,
               "Magura" = 55,
               "Manikganj" = 56,
               "Meherpur" = 57,
               "Maulvibazar" = 58,
               "Munshiganj" = 59,
               "Mymensingh" = 61,
               "Naogaon" = 64,
               "Narail" = 65,
               "Narayanganj" = 67,
               "Narsingdi" = 68,
               "Natore" = 69,
               "Nawabganj" = 70,
               "Netrakona" = 72,
               "Nilphamari" = 73,
               "Noakhali" = 75,
               "Pabna" = 76,
               "Panchagarh" = 77,
               "Patuakhali" = 78,
               "Pirojpur" = 79,
               "Rajshahi" = 81,
               "Rajbari" = 82,
               "Rangamati" = 84,
               "Rangpur" = 85,
               "Shariatpur" = 86,
               "Satkhira" = 87,
               "Sirajganj" = 88,
               "Sherpur" = 89,
               "Sunamganj" = 90,
               "Sylhet" = 91,
               "Tangail" = 93,
               "Thakurgaon" = 94)
)
attr(rdatafile[["DD"]], "label") <- "DISTRICT"

rdatafile[["TT"]] <- haven::labelled_spss(rdatafile[["TT"]],
    labels = c("" = )
)
attr(rdatafile[["TT"]], "label") <- "THANA"

attr(rdatafile[["HHID"]], "label") <- "LHHID"

rdatafile[["UW"]] <- haven::labelled_spss(rdatafile[["UW"]],
    labels = c("" = )
)
attr(rdatafile[["UW"]], "label") <- "UNION/WARD"

attr(rdatafile[["MA"]], "label") <- "MAUZA"

rdatafile[["UR"]] <- haven::labelled_spss(rdatafile[["UR"]],
    labels = c("" = )
)
attr(rdatafile[["UR"]], "label") <- "RMO"

attr(rdatafile[["HHH"]], "label") <- "HHID"

attr(rdatafile[["S03S01A4"]], "label") <- "1A Fuel and Light (Natural)"

attr(rdatafile[["S03S01A6"]], "label") <- "1A Fuel    COL6"

attr(rdatafile[["S03S01A8"]], "label") <- "1A Fuel    COL8"

attr(rdatafile[["S03S01B4"]], "label") <- "1B Fuel and Light (Industrial)"

attr(rdatafile[["S03S01B6"]], "label") <- "1B Fuel    COL6"

attr(rdatafile[["S03S01B8"]], "label") <- "1B Fuel    COL8"

attr(rdatafile[["S03S02A4"]], "label") <- "2A Toilet Goods (Male+Female)"

attr(rdatafile[["S03S02A6"]], "label") <- "2A Toil    COL6"

attr(rdatafile[["S03S02B4"]], "label") <- "2B Toilet Goods (Male)"

attr(rdatafile[["S03S02B6"]], "label") <- "2B Toil    COL6"

attr(rdatafile[["S03S02C4"]], "label") <- "2C Toilet Goods (Female)"

attr(rdatafile[["S03S02C6"]], "label") <- "2C Toil    COL6"

attr(rdatafile[["S03S03_4"]], "label") <- "3  Washing and Cleaning"

attr(rdatafile[["S03S03_6"]], "label") <- "3  Wash    COL6"

attr(rdatafile[["S03S04_4"]], "label") <- "4  Transport ant Travel"

attr(rdatafile[["S03S04_6"]], "label") <- "4  Tran    COL6"

attr(rdatafile[["S03S05_4"]], "label") <- "5  Miscellaneous"

attr(rdatafile[["S03S05_6"]], "label") <- "5  Misc    COL6"

attr(rdatafile[["S03S06A4"]], "label") <- "6A Clothing (Male)"

attr(rdatafile[["S03S06A6"]], "label") <- "6A Clot    COL6"

attr(rdatafile[["S03S06A8"]], "label") <- "6A Clot    COL8"

attr(rdatafile[["S03S06B4"]], "label") <- "6B Clothing (Female)"

attr(rdatafile[["S03S06B6"]], "label") <- "6B Clot    COL6"

attr(rdatafile[["S03S06B8"]], "label") <- "6B Clot    COL8"

attr(rdatafile[["S03S07_4"]], "label") <- "7  Garments (Male)"

attr(rdatafile[["S03S07_6"]], "label") <- "7  Garm    COL6"

attr(rdatafile[["S03S07_8"]], "label") <- "7  Garm    COL8"

attr(rdatafile[["S03S08_4"]], "label") <- "8  Garments (Female)"

attr(rdatafile[["S03S08_6"]], "label") <- "8  Garm    COL6"

attr(rdatafile[["S03S08_8"]], "label") <- "8  Garm    COL8"

attr(rdatafile[["S03S09_4"]], "label") <- "9  Knitting clothes &c"

attr(rdatafile[["S03S09_6"]], "label") <- "9  Knit    COL6"

attr(rdatafile[["S03S09_8"]], "label") <- "9  Knit    COL8"

attr(rdatafile[["S03S10A4"]], "label") <- "10A Shoes (Male)"

attr(rdatafile[["S03S10B4"]], "label") <- "10B Shoes (Female)"

attr(rdatafile[["S03S11_4"]], "label") <- "11  Furniture"

attr(rdatafile[["S03S12_4"]], "label") <- "12  Cooking equipment"

attr(rdatafile[["S03S13_4"]], "label") <- "13  Radio and musical"

attr(rdatafile[["S03S14_4"]], "label") <- "14  Recreation and study"

attr(rdatafile[["S03S15_4"]], "label") <- "15  Washing and Cleaning"

attr(rdatafile[["S03S16_4"]], "label") <- "16  Other household materials"

attr(rdatafile[["S03S17_4"]], "label") <- "17  Service & repairs"

attr(rdatafile[["S03S18_4"]], "label") <- "18  Personal articles"

rdatafile[["MM"]] <- haven::labelled_spss(rdatafile[["MM"]],
    labels = c("" = )
)
attr(rdatafile[["MM"]], "label") <- "MONTH"

rdatafile[["RR"]] <- haven::labelled_spss(rdatafile[["RR"]],
    labels = c("" = )
)
attr(rdatafile[["RR"]], "label") <- "REGION"

rdatafile[["DD"]] <- haven::labelled_spss(rdatafile[["DD"]],
    labels = c("Bagerhat" = 1,
               "Barguna" = 4,
               "Barisal" = 6,
               "Bhola" = 9,
               "Bogra" = 10,
               "Brahamanbaria" = 12,
               "Chandpur" = 13,
               "Chittagong" = 15,
               "Chuadanga" = 18,
               "Comilla" = 19,
               "Cox'S Bazar" = 22,
               "Dhaka" = 26,
               "Dinajpur" = 27,
               "Faridpur" = 29,
               "Feni" = 30,
               "Gaibandha" = 32,
               "Gazipur" = 33,
               "Rajbari" = 34,
               "Gopalganj" = 35,
               "Habiganj" = 36,
               "Joypurhat" = 38,
               "Jamalpur" = 39,
               "Jessore" = 41,
               "Jhalokati" = 42,
               "Jhenaidah" = 44,
               "Khagrachhari" = 46,
               "Khulna" = 47,
               "Kishoreganj" = 48,
               "Kurigram" = 49,
               "Kushtia" = 50,
               "Lakshmipur" = 51,
               "Lalmonirhat" = 52,
               "Madaripur" = 54,
               "Magura" = 55,
               "Manikganj" = 56,
               "Meherpur" = 57,
               "Maulvibazar" = 58,
               "Munshiganj" = 59,
               "Mymensingh" = 61,
               "Naogaon" = 64,
               "Narail" = 65,
               "Narayanganj" = 67,
               "Narsingdi" = 68,
               "Natore" = 69,
               "Nawabganj" = 70,
               "Netrakona" = 72,
               "Nilphamari" = 73,
               "Noakhali" = 75,
               "Pabna" = 76,
               "Panchagarh" = 77,
               "Patuakhali" = 78,
               "Pirojpur" = 79,
               "Rajshahi" = 81,
               "Rajbari" = 82,
               "Rangamati" = 84,
               "Rangpur" = 85,
               "Shariatpur" = 86,
               "Satkhira" = 87,
               "Sirajganj" = 88,
               "Sherpur" = 89,
               "Sunamganj" = 90,
               "Sylhet" = 91,
               "Tangail" = 93,
               "Thakurgaon" = 94)
)
attr(rdatafile[["DD"]], "label") <- "DISTRICT"

rdatafile[["TT"]] <- haven::labelled_spss(rdatafile[["TT"]],
    labels = c("" = )
)
attr(rdatafile[["TT"]], "label") <- "THANA"

attr(rdatafile[["HHID"]], "label") <- "LHHID"

rdatafile[["UW"]] <- haven::labelled_spss(rdatafile[["UW"]],
    labels = c("" = )
)
attr(rdatafile[["UW"]], "label") <- "UNION/WARD"

attr(rdatafile[["MA"]], "label") <- "MAUZA"

rdatafile[["UR"]] <- haven::labelled_spss(rdatafile[["UR"]],
    labels = c("" = )
)
attr(rdatafile[["UR"]], "label") <- "RMO"

attr(rdatafile[["HHH"]], "label") <- "HHID"

attr(rdatafile[["S04S19_2"]], "label") <- "19  Household rent"

attr(rdatafile[["S04S20_2"]], "label") <- "20  Tax, interest, fine"

attr(rdatafile[["S04S23A4"]], "label") <- "23A Education (Male)"

attr(rdatafile[["S04S23B4"]], "label") <- "23B Education (Female)"

attr(rdatafile[["S04S24A4"]], "label") <- "24A Health (Male)"

attr(rdatafile[["S04S24B4"]], "label") <- "24B Health (Female)"

attr(rdatafile[["S04S25_2"]], "label") <- "25  Communication & travel"

attr(rdatafile[["S04S26_2"]], "label") <- "26  Miscellaneous"

attr(rdatafile[["S04SGT_2"]], "label") <- "Grand Total"

rdatafile[["MM"]] <- haven::labelled_spss(rdatafile[["MM"]],
    labels = c("" = )
)
attr(rdatafile[["MM"]], "label") <- "MONTH"

rdatafile[["RR"]] <- haven::labelled_spss(rdatafile[["RR"]],
    labels = c("" = )
)
attr(rdatafile[["RR"]], "label") <- "REGION"

rdatafile[["DD"]] <- haven::labelled_spss(rdatafile[["DD"]],
    labels = c("Bagerhat" = 1,
               "Barguna" = 4,
               "Barisal" = 6,
               "Bhola" = 9,
               "Bogra" = 10,
               "Brahamanbaria" = 12,
               "Chandpur" = 13,
               "Chittagong" = 15,
               "Chuadanga" = 18,
               "Comilla" = 19,
               "Cox'S Bazar" = 22,
               "Dhaka" = 26,
               "Dinajpur" = 27,
               "Faridpur" = 29,
               "Feni" = 30,
               "Gaibandha" = 32,
               "Gazipur" = 33,
               "Rajbari" = 34,
               "Gopalganj" = 35,
               "Habiganj" = 36,
               "Joypurhat" = 38,
               "Jamalpur" = 39,
               "Jessore" = 41,
               "Jhalokati" = 42,
               "Jhenaidah" = 44,
               "Khagrachhari" = 46,
               "Khulna" = 47,
               "Kishoreganj" = 48,
               "Kurigram" = 49,
               "Kushtia" = 50,
               "Lakshmipur" = 51,
               "Lalmonirhat" = 52,
               "Madaripur" = 54,
               "Magura" = 55,
               "Manikganj" = 56,
               "Meherpur" = 57,
               "Maulvibazar" = 58,
               "Munshiganj" = 59,
               "Mymensingh" = 61,
               "Naogaon" = 64,
               "Narail" = 65,
               "Narayanganj" = 67,
               "Narsingdi" = 68,
               "Natore" = 69,
               "Nawabganj" = 70,
               "Netrakona" = 72,
               "Nilphamari" = 73,
               "Noakhali" = 75,
               "Pabna" = 76,
               "Panchagarh" = 77,
               "Patuakhali" = 78,
               "Pirojpur" = 79,
               "Rajshahi" = 81,
               "Rajbari" = 82,
               "Rangamati" = 84,
               "Rangpur" = 85,
               "Shariatpur" = 86,
               "Satkhira" = 87,
               "Sirajganj" = 88,
               "Sherpur" = 89,
               "Sunamganj" = 90,
               "Sylhet" = 91,
               "Tangail" = 93,
               "Thakurgaon" = 94)
)
attr(rdatafile[["DD"]], "label") <- "DISTRICT"

rdatafile[["TT"]] <- haven::labelled_spss(rdatafile[["TT"]],
    labels = c("" = )
)
attr(rdatafile[["TT"]], "label") <- "THANA"

attr(rdatafile[["HHID"]], "label") <- "LHHID"

rdatafile[["UW"]] <- haven::labelled_spss(rdatafile[["UW"]],
    labels = c("" = )
)
attr(rdatafile[["UW"]], "label") <- "UNION/WARD"

attr(rdatafile[["MA"]], "label") <- "MAUZA"

rdatafile[["UR"]] <- haven::labelled_spss(rdatafile[["UR"]],
    labels = c("" = )
)
attr(rdatafile[["UR"]], "label") <- "RMO"

attr(rdatafile[["HHH"]], "label") <- "HHID"

attr(rdatafile[["S05S1A05"]], "label") <- "1A Cereals     COL5"

attr(rdatafile[["S05S1A07"]], "label") <- "1A Cerea    COL7"

attr(rdatafile[["S05S1A09"]], "label") <- "1A Cerea    COL9"

attr(rdatafile[["S05S1A11"]], "label") <- "1A Cerea   COL11"

attr(rdatafile[["S05S1B05"]], "label") <- "1B Vegetables  COL5"

attr(rdatafile[["S05S1B07"]], "label") <- "1B Vege   COL7"

attr(rdatafile[["S05S1B09"]], "label") <- "1B Vege   COL9"

attr(rdatafile[["S05S1B11"]], "label") <- "1B Vege  COL11"

attr(rdatafile[["S05S1C05"]], "label") <- "1C Fruits      COL5"

attr(rdatafile[["S05S1C07"]], "label") <- "1C Fruits   COL7"

attr(rdatafile[["S05S1C09"]], "label") <- "1C Fruits   COL9"

attr(rdatafile[["S05S1C11"]], "label") <- "1C Fruits  COL11"

attr(rdatafile[["S05S1_05"]], "label") <- "1  GT (A+B+C)  COL5"

attr(rdatafile[["S05S1_07"]], "label") <- "1  A+B+C    COL7"

attr(rdatafile[["S05S1_09"]], "label") <- "1  A+B+C    COL9"

attr(rdatafile[["S05S1_11"]], "label") <- "1  A+B+C   COL11"

attr(rdatafile[["S05S2_05"]], "label") <- "2  Animals     COL5"

attr(rdatafile[["S05S2_07"]], "label") <- "2  Animal   COL7"

attr(rdatafile[["S05S2_09"]], "label") <- "2  Animal   COL9"

attr(rdatafile[["S05S2_11"]], "label") <- "2  Animal  COL11"

attr(rdatafile[["S05S3_05"]], "label") <- "3  Poultry     COL5"

attr(rdatafile[["S05S3_07"]], "label") <- "3  Poultry   COL7"

attr(rdatafile[["S05S3_09"]], "label") <- "3  Poultry   COL9"

attr(rdatafile[["S05S3_11"]], "label") <- "3  Poultry  COL11"

attr(rdatafile[["S05S4_05"]], "label") <- "4  Misc Prods  COL5"

attr(rdatafile[["S05S4_07"]], "label") <- "4  Misc P   COL7"

attr(rdatafile[["S05S4_09"]], "label") <- "4  Misc P   COL9"

attr(rdatafile[["S05S4_11"]], "label") <- "4  Misc P  COL11"

attr(rdatafile[["S05S__05"]], "label") <- "T (1+2+3+4) COL5"

attr(rdatafile[["S05S__07"]], "label") <- "(1234)   COL7"

attr(rdatafile[["S05S__09"]], "label") <- "(1234)   COL9"

attr(rdatafile[["S05S__11"]], "label") <- "(1234)  COL11"

rdatafile[["MM"]] <- haven::labelled_spss(rdatafile[["MM"]],
    labels = c("" = )
)
attr(rdatafile[["MM"]], "label") <- "MONTH"

rdatafile[["RR"]] <- haven::labelled_spss(rdatafile[["RR"]],
    labels = c("" = )
)
attr(rdatafile[["RR"]], "label") <- "REGION"

rdatafile[["DD"]] <- haven::labelled_spss(rdatafile[["DD"]],
    labels = c("Bagerhat" = 1,
               "Barguna" = 4,
               "Barisal" = 6,
               "Bhola" = 9,
               "Bogra" = 10,
               "Brahamanbaria" = 12,
               "Chandpur" = 13,
               "Chittagong" = 15,
               "Chuadanga" = 18,
               "Comilla" = 19,
               "Cox'S Bazar" = 22,
               "Dhaka" = 26,
               "Dinajpur" = 27,
               "Faridpur" = 29,
               "Feni" = 30,
               "Gaibandha" = 32,
               "Gazipur" = 33,
               "Rajbari" = 34,
               "Gopalganj" = 35,
               "Habiganj" = 36,
               "Joypurhat" = 38,
               "Jamalpur" = 39,
               "Jessore" = 41,
               "Jhalokati" = 42,
               "Jhenaidah" = 44,
               "Khagrachhari" = 46,
               "Khulna" = 47,
               "Kishoreganj" = 48,
               "Kurigram" = 49,
               "Kushtia" = 50,
               "Lakshmipur" = 51,
               "Lalmonirhat" = 52,
               "Madaripur" = 54,
               "Magura" = 55,
               "Manikganj" = 56,
               "Meherpur" = 57,
               "Maulvibazar" = 58,
               "Munshiganj" = 59,
               "Mymensingh" = 61,
               "Naogaon" = 64,
               "Narail" = 65,
               "Narayanganj" = 67,
               "Narsingdi" = 68,
               "Natore" = 69,
               "Nawabganj" = 70,
               "Netrakona" = 72,
               "Nilphamari" = 73,
               "Noakhali" = 75,
               "Pabna" = 76,
               "Panchagarh" = 77,
               "Patuakhali" = 78,
               "Pirojpur" = 79,
               "Rajshahi" = 81,
               "Rajbari" = 82,
               "Rangamati" = 84,
               "Rangpur" = 85,
               "Shariatpur" = 86,
               "Satkhira" = 87,
               "Sirajganj" = 88,
               "Sherpur" = 89,
               "Sunamganj" = 90,
               "Sylhet" = 91,
               "Tangail" = 93,
               "Thakurgaon" = 94)
)
attr(rdatafile[["DD"]], "label") <- "DISTRICT"

rdatafile[["TT"]] <- haven::labelled_spss(rdatafile[["TT"]],
    labels = c("" = )
)
attr(rdatafile[["TT"]], "label") <- "THANA"

attr(rdatafile[["HHID"]], "label") <- "LHHID"

rdatafile[["UW"]] <- haven::labelled_spss(rdatafile[["UW"]],
    labels = c("" = )
)
attr(rdatafile[["UW"]], "label") <- "UNION/WARD"

attr(rdatafile[["MA"]], "label") <- "MAUZA"

rdatafile[["UR"]] <- haven::labelled_spss(rdatafile[["UR"]],
    labels = c("" = )
)
attr(rdatafile[["UR"]], "label") <- "RMO"

attr(rdatafile[["HHH"]], "label") <- "HHID"

attr(rdatafile[["S06_S5T5"]], "label") <- "Total of Col 5 in CARD-5     +"

attr(rdatafile[["S06_S6T5"]], "label") <- "Total of Col 5 in CARD-6     -"

attr(rdatafile[["S06_GINC"]], "label") <- "Gross Income                 ="

attr(rdatafile[["S06_S5T7"]], "label") <- "Total of Col 7 in CARD-5     -"

attr(rdatafile[["S06_NINC"]], "label") <- "Net   Income                 ="

rdatafile[["MM"]] <- haven::labelled_spss(rdatafile[["MM"]],
    labels = c("" = )
)
attr(rdatafile[["MM"]], "label") <- "MONTH"

rdatafile[["RR"]] <- haven::labelled_spss(rdatafile[["RR"]],
    labels = c("" = )
)
attr(rdatafile[["RR"]], "label") <- "REGION"

rdatafile[["DD"]] <- haven::labelled_spss(rdatafile[["DD"]],
    labels = c("Bagerhat" = 1,
               "Barguna" = 4,
               "Barisal" = 6,
               "Bhola" = 9,
               "Bogra" = 10,
               "Brahamanbaria" = 12,
               "Chandpur" = 13,
               "Chittagong" = 15,
               "Chuadanga" = 18,
               "Comilla" = 19,
               "Cox'S Bazar" = 22,
               "Dhaka" = 26,
               "Dinajpur" = 27,
               "Faridpur" = 29,
               "Feni" = 30,
               "Gaibandha" = 32,
               "Gazipur" = 33,
               "Rajbari" = 34,
               "Gopalganj" = 35,
               "Habiganj" = 36,
               "Joypurhat" = 38,
               "Jamalpur" = 39,
               "Jessore" = 41,
               "Jhalokati" = 42,
               "Jhenaidah" = 44,
               "Khagrachhari" = 46,
               "Khulna" = 47,
               "Kishoreganj" = 48,
               "Kurigram" = 49,
               "Kushtia" = 50,
               "Lakshmipur" = 51,
               "Lalmonirhat" = 52,
               "Madaripur" = 54,
               "Magura" = 55,
               "Manikganj" = 56,
               "Meherpur" = 57,
               "Maulvibazar" = 58,
               "Munshiganj" = 59,
               "Mymensingh" = 61,
               "Naogaon" = 64,
               "Narail" = 65,
               "Narayanganj" = 67,
               "Narsingdi" = 68,
               "Natore" = 69,
               "Nawabganj" = 70,
               "Netrakona" = 72,
               "Nilphamari" = 73,
               "Noakhali" = 75,
               "Pabna" = 76,
               "Panchagarh" = 77,
               "Patuakhali" = 78,
               "Pirojpur" = 79,
               "Rajshahi" = 81,
               "Rajbari" = 82,
               "Rangamati" = 84,
               "Rangpur" = 85,
               "Shariatpur" = 86,
               "Satkhira" = 87,
               "Sirajganj" = 88,
               "Sherpur" = 89,
               "Sunamganj" = 90,
               "Sylhet" = 91,
               "Tangail" = 93,
               "Thakurgaon" = 94)
)
attr(rdatafile[["DD"]], "label") <- "DISTRICT"

rdatafile[["TT"]] <- haven::labelled_spss(rdatafile[["TT"]],
    labels = c("" = )
)
attr(rdatafile[["TT"]], "label") <- "THANA"

attr(rdatafile[["HHID"]], "label") <- "LHHID"

rdatafile[["UW"]] <- haven::labelled_spss(rdatafile[["UW"]],
    labels = c("" = )
)
attr(rdatafile[["UW"]], "label") <- "UNION/WARD"

attr(rdatafile[["MA"]], "label") <- "MAUZA"

rdatafile[["UR"]] <- haven::labelled_spss(rdatafile[["UR"]],
    labels = c("" = )
)
attr(rdatafile[["UR"]], "label") <- "RMO"

attr(rdatafile[["HHH"]], "label") <- "HHID"

attr(rdatafile[["S07_SA03"]], "label") <- "A Quarter Income    (1+..+10)"

attr(rdatafile[["S07_SA04"]], "label") <- "A QI   04"

attr(rdatafile[["S07_SA05"]], "label") <- "A QI   05"

attr(rdatafile[["S07_SA06"]], "label") <- "A QI   06"

attr(rdatafile[["S07_SA07"]], "label") <- "A QI   07"

attr(rdatafile[["S07_SA08"]], "label") <- "A QI   08"

attr(rdatafile[["S07_SA09"]], "label") <- "A QI   09"

attr(rdatafile[["S07_SA10"]], "label") <- "A QI   10"

attr(rdatafile[["S07_SB03"]], "label") <- "B Annual  Income    (11+.+28)"

attr(rdatafile[["S07_SB04"]], "label") <- "B AI   04"

attr(rdatafile[["S07_SB05"]], "label") <- "B AI   05"

attr(rdatafile[["S07_SB06"]], "label") <- "B AI   06"

attr(rdatafile[["S07_SB07"]], "label") <- "B AI   07"

attr(rdatafile[["S07_SB08"]], "label") <- "B AI   08"

attr(rdatafile[["S07_SB09"]], "label") <- "B AI   09"

attr(rdatafile[["S07_SB10"]], "label") <- "B AI   10"

attr(rdatafile[["S07_SX03"]], "label") <- "Total               (4A+B)"

attr(rdatafile[["S07_SX04"]], "label") <- "4A+B   04"

attr(rdatafile[["S07_SX05"]], "label") <- "4A+B   05"

attr(rdatafile[["S07_SX06"]], "label") <- "4A+B   06"

attr(rdatafile[["S07_SX07"]], "label") <- "4A+B   07"

attr(rdatafile[["S07_SX08"]], "label") <- "4A+B   08"

attr(rdatafile[["S07_SX09"]], "label") <- "4A+B   09"

attr(rdatafile[["S07_SX10"]], "label") <- "4A+B   10"

attr(rdatafile[["S07_SC03"]], "label") <- "C Imputed Income    (29+.+35)"

attr(rdatafile[["S07_SC04"]], "label") <- "C II   04"

attr(rdatafile[["S07_SC05"]], "label") <- "C II   05"

attr(rdatafile[["S07_SC06"]], "label") <- "C II   06"

attr(rdatafile[["S07_SC07"]], "label") <- "C II   07"

attr(rdatafile[["S07_SC08"]], "label") <- "C II   08"

attr(rdatafile[["S07_SC09"]], "label") <- "C II   09"

attr(rdatafile[["S07_SC10"]], "label") <- "C II   10"

attr(rdatafile[["S07_SY03"]], "label") <- "Grand     Total     (4A+B+C)"

attr(rdatafile[["S07_SY04"]], "label") <- "A+B+C  04"

attr(rdatafile[["S07_SY05"]], "label") <- "A+B+C  05"

attr(rdatafile[["S07_SY06"]], "label") <- "A+B+C  06"

attr(rdatafile[["S07_SY07"]], "label") <- "A+B+C  07"

attr(rdatafile[["S07_SY08"]], "label") <- "A+B+C  08"

attr(rdatafile[["S07_SY09"]], "label") <- "A+B+C  09"

attr(rdatafile[["S07_SY10"]], "label") <- "A+B+C  10"

attr(rdatafile[["S07_SD03"]], "label") <- "D Savings           (36+.+45)"

attr(rdatafile[["S07_SD04"]], "label") <- "D II   04"

attr(rdatafile[["S07_SD05"]], "label") <- "D II   05"

attr(rdatafile[["S07_SD06"]], "label") <- "D II   06"

attr(rdatafile[["S07_SD07"]], "label") <- "D II   07"

attr(rdatafile[["S07_SD08"]], "label") <- "D II   08"

attr(rdatafile[["S07_SD09"]], "label") <- "D II   09"

attr(rdatafile[["S07_SD10"]], "label") <- "D II   10"

attr(rdatafile[["S07_SE03"]], "label") <- "E Wealth  Increase  (46+.+55)"

attr(rdatafile[["S07_SE04"]], "label") <- "E WI   04"

attr(rdatafile[["S07_SE05"]], "label") <- "E WI   05"

attr(rdatafile[["S07_SE06"]], "label") <- "E WI   06"

attr(rdatafile[["S07_SE07"]], "label") <- "E WI   07"

attr(rdatafile[["S07_SE08"]], "label") <- "E WI   08"

attr(rdatafile[["S07_SE09"]], "label") <- "E WI   09"

attr(rdatafile[["S07_SE10"]], "label") <- "E WI   10"

rdatafile[["MM"]] <- haven::labelled_spss(rdatafile[["MM"]],
    labels = c("" = )
)
attr(rdatafile[["MM"]], "label") <- "MONTH"

rdatafile[["RR"]] <- haven::labelled_spss(rdatafile[["RR"]],
    labels = c("" = )
)
attr(rdatafile[["RR"]], "label") <- "REGION"

rdatafile[["DD"]] <- haven::labelled_spss(rdatafile[["DD"]],
    labels = c("Bagerhat" = 1,
               "Barguna" = 4,
               "Barisal" = 6,
               "Bhola" = 9,
               "Bogra" = 10,
               "Brahamanbaria" = 12,
               "Chandpur" = 13,
               "Chittagong" = 15,
               "Chuadanga" = 18,
               "Comilla" = 19,
               "Cox'S Bazar" = 22,
               "Dhaka" = 26,
               "Dinajpur" = 27,
               "Faridpur" = 29,
               "Feni" = 30,
               "Gaibandha" = 32,
               "Gazipur" = 33,
               "Rajbari" = 34,
               "Gopalganj" = 35,
               "Habiganj" = 36,
               "Joypurhat" = 38,
               "Jamalpur" = 39,
               "Jessore" = 41,
               "Jhalokati" = 42,
               "Jhenaidah" = 44,
               "Khagrachhari" = 46,
               "Khulna" = 47,
               "Kishoreganj" = 48,
               "Kurigram" = 49,
               "Kushtia" = 50,
               "Lakshmipur" = 51,
               "Lalmonirhat" = 52,
               "Madaripur" = 54,
               "Magura" = 55,
               "Manikganj" = 56,
               "Meherpur" = 57,
               "Maulvibazar" = 58,
               "Munshiganj" = 59,
               "Mymensingh" = 61,
               "Naogaon" = 64,
               "Narail" = 65,
               "Narayanganj" = 67,
               "Narsingdi" = 68,
               "Natore" = 69,
               "Nawabganj" = 70,
               "Netrakona" = 72,
               "Nilphamari" = 73,
               "Noakhali" = 75,
               "Pabna" = 76,
               "Panchagarh" = 77,
               "Patuakhali" = 78,
               "Pirojpur" = 79,
               "Rajshahi" = 81,
               "Rajbari" = 82,
               "Rangamati" = 84,
               "Rangpur" = 85,
               "Shariatpur" = 86,
               "Satkhira" = 87,
               "Sirajganj" = 88,
               "Sherpur" = 89,
               "Sunamganj" = 90,
               "Sylhet" = 91,
               "Tangail" = 93,
               "Thakurgaon" = 94)
)
attr(rdatafile[["DD"]], "label") <- "DISTRICT"

rdatafile[["TT"]] <- haven::labelled_spss(rdatafile[["TT"]],
    labels = c("" = )
)
attr(rdatafile[["TT"]], "label") <- "THANA"

attr(rdatafile[["HHID"]], "label") <- "LHHID"

rdatafile[["UW"]] <- haven::labelled_spss(rdatafile[["UW"]],
    labels = c("" = )
)
attr(rdatafile[["UW"]], "label") <- "UNION/WARD"

attr(rdatafile[["MA"]], "label") <- "MAUZA"

rdatafile[["UR"]] <- haven::labelled_spss(rdatafile[["UR"]],
    labels = c("" = )
)
attr(rdatafile[["UR"]], "label") <- "RMO"

attr(rdatafile[["HHH"]], "label") <- "HHID"

rdatafile[["S11_MSN"]] <- haven::labelled_spss(rdatafile[["S11_MSN"]],
    labels = c("" = )
)
attr(rdatafile[["S11_MSN"]], "label") <- "COL 1. Member Serial Number"

rdatafile[["S11_COL3"]] <- haven::labelled_spss(rdatafile[["S11_COL3"]],
    labels = c("Male" = 1,
               "Female" = 2)
)
attr(rdatafile[["S11_COL3"]], "label") <- "COL 3. Sex"

rdatafile[["S11_COL4"]] <- haven::labelled_spss(rdatafile[["S11_COL4"]],
    labels = c("Head" = 1,
               "Spouse" = 2,
               "Children" = 3,
               "Brother/Sister" = 4,
               "Parent" = 5,
               "Other" = 6)
)
attr(rdatafile[["S11_COL4"]], "label") <- "COL 4. Relation with H/H Head"

attr(rdatafile[["S11_COL5"]], "label") <- "COL 5. Age"

rdatafile[["S11_COL6"]] <- haven::labelled_spss(rdatafile[["S11_COL6"]],
    labels = c("Married" = 1,
               "Unmarried" = 2,
               "Widow" = 3,
               "Divorced" = 4)
)
attr(rdatafile[["S11_COL6"]], "label") <- "COL 6. Marital Status"

rdatafile[["S11_COL8"]] <- haven::labelled_spss(rdatafile[["S11_COL8"]],
    labels = c("Employed" = 1,
               "Employed but not working" = 2,
               "Household work" = 3,
               "Seeking work but not getting work" = 4,
               "Not seeking work" = 5,
               "Student" = 6,
               "Not working" = 7,
               "Others" = 8)
)
attr(rdatafile[["S11_COL8"]], "label") <- "COL 8. Normal Work Status/Activ"

rdatafile[["S11COL10"]] <- haven::labelled_spss(rdatafile[["S11COL10"]],
    labels = c("Owner farmer (not working)" = 1,
               "Owner farmer (working)" = 2,
               "Agricultural worker (works in family land)" = 3,
               "Agricultural worker (working in family land and others)" = 4,
               "Agricultural labor (not land owner)" = 5,
               "Contract basis agricultural labor (not land owner)" = 6,
               "Tenant (share cropper including own land)" = 7,
               "Tenant (only share cropper)" = 8,
               "Fisherman" = 9,
               "Forest/Livestock" = 10,
               "Servant/Maid servant - agricultural" = 11,
               "Others - agricultural" = 12,
               "Professional administrator" = 13,
               "Executive/Administrator" = 14,
               "Other officials" = 15,
               "Teacher" = 16,
               "Salesman" = 17,
               "Business" = 18,
               "Production labor" = 19,
               "Labour engaged in electricity, gas and water" = 20,
               "Labour engaged in construction" = 21,
               "Sports & other cultural activities" = 22,
               "Blacksmith" = 23,
               "Potter" = 24,
               "Carpenter" = 25,
               "Weaver" = 26,
               "Broker/Middleman" = 27,
               "Transport and communications labourer" = 28,
               "Day labourer" = 29,
               "Servant/Maid servant - non agricultural" = 30,
               "Others - non-agricultural" = 31)
)
attr(rdatafile[["S11COL10"]], "label") <- "COL10. Type of Occupation"

rdatafile[["S11COL12"]] <- haven::labelled_spss(rdatafile[["S11COL12"]],
    labels = c("Agriculture" = 11,
               "Forestry" = 12,
               "Livestock" = 13,
               "Fisheries" = 14,
               "Poultry" = 15,
               "Mineral" = 20,
               "Industry" = 30,
               "Housing/Construction" = 40,
               "Business" = 50,
               "Transportation" = 60,
               "Money/As" = 70,
               "Social Welfare" = 80,
               "Others" = 90)
)
attr(rdatafile[["S11COL12"]], "label") <- "COL12. Industrial Code"

rdatafile[["S11COL13"]] <- haven::labelled_spss(rdatafile[["S11COL13"]],
    labels = c("Agric - Owner farmer" = 1)
)
attr(rdatafile[["S11COL13"]], "label") <- "COL13. Work Status"

rdatafile[["S11COL15"]] <- haven::labelled_spss(rdatafile[["S11COL15"]],
    labels = c("Owner farmer (not working)" = 1)
)
attr(rdatafile[["S11COL15"]], "label") <- "COL15. Secondary Occupation"

rdatafile[["S11COL16"]] <- haven::labelled_spss(rdatafile[["S11COL16"]],
    labels = c("Agriculture" = 11,
               "Forestry" = 12,
               "Livestock" = 13,
               "Fisheries" = 14,
               "Poultry" = 15,
               "Mineral" = 20,
               "Industry" = 30,
               "Housing/Construction" = 40,
               "Business" = 50,
               "Transportation" = 60,
               "Money/As" = 70,
               "Social Welfare" = 80,
               "Others" = 90)
)
attr(rdatafile[["S11COL16"]], "label") <- "COL16. Industrial Code"

rdatafile[["MM"]] <- haven::labelled_spss(rdatafile[["MM"]],
    labels = c("" = )
)
attr(rdatafile[["MM"]], "label") <- "MONTH"

rdatafile[["RR"]] <- haven::labelled_spss(rdatafile[["RR"]],
    labels = c("" = )
)
attr(rdatafile[["RR"]], "label") <- "REGION"

rdatafile[["DD"]] <- haven::labelled_spss(rdatafile[["DD"]],
    labels = c("Bagerhat" = 1,
               "Barguna" = 4,
               "Barisal" = 6,
               "Bhola" = 9,
               "Bogra" = 10,
               "Brahamanbaria" = 12,
               "Chandpur" = 13,
               "Chittagong" = 15,
               "Chuadanga" = 18,
               "Comilla" = 19,
               "Cox'S Bazar" = 22,
               "Dhaka" = 26,
               "Dinajpur" = 27,
               "Faridpur" = 29,
               "Feni" = 30,
               "Gaibandha" = 32,
               "Gazipur" = 33,
               "Rajbari" = 34,
               "Gopalganj" = 35,
               "Habiganj" = 36,
               "Joypurhat" = 38,
               "Jamalpur" = 39,
               "Jessore" = 41,
               "Jhalokati" = 42,
               "Jhenaidah" = 44,
               "Khagrachhari" = 46,
               "Khulna" = 47,
               "Kishoreganj" = 48,
               "Kurigram" = 49,
               "Kushtia" = 50,
               "Lakshmipur" = 51,
               "Lalmonirhat" = 52,
               "Madaripur" = 54,
               "Magura" = 55,
               "Manikganj" = 56,
               "Meherpur" = 57,
               "Maulvibazar" = 58,
               "Munshiganj" = 59,
               "Mymensingh" = 61,
               "Naogaon" = 64,
               "Narail" = 65,
               "Narayanganj" = 67,
               "Narsingdi" = 68,
               "Natore" = 69,
               "Nawabganj" = 70,
               "Netrakona" = 72,
               "Nilphamari" = 73,
               "Noakhali" = 75,
               "Pabna" = 76,
               "Panchagarh" = 77,
               "Patuakhali" = 78,
               "Pirojpur" = 79,
               "Rajshahi" = 81,
               "Rajbari" = 82,
               "Rangamati" = 84,
               "Rangpur" = 85,
               "Shariatpur" = 86,
               "Satkhira" = 87,
               "Sirajganj" = 88,
               "Sherpur" = 89,
               "Sunamganj" = 90,
               "Sylhet" = 91,
               "Tangail" = 93,
               "Thakurgaon" = 94)
)
attr(rdatafile[["DD"]], "label") <- "DISTRICT"

rdatafile[["TT"]] <- haven::labelled_spss(rdatafile[["TT"]],
    labels = c("" = )
)
attr(rdatafile[["TT"]], "label") <- "THANA"

attr(rdatafile[["HHID"]], "label") <- "LHHID"

rdatafile[["UW"]] <- haven::labelled_spss(rdatafile[["UW"]],
    labels = c("" = )
)
attr(rdatafile[["UW"]], "label") <- "UNION/WARD"

attr(rdatafile[["MA"]], "label") <- "MAUZA"

rdatafile[["UR"]] <- haven::labelled_spss(rdatafile[["UR"]],
    labels = c("" = )
)
attr(rdatafile[["UR"]], "label") <- "RMO"

attr(rdatafile[["HHH"]], "label") <- "HHID"

attr(rdatafile[["S12_211A"]], "label") <- "1 Total area of own land - acre"

attr(rdatafile[["S12_211B"]], "label") <- "1 Total area of own land - decimal"

attr(rdatafile[["S12_221A"]], "label") <- "2 Land given to others - acre"

attr(rdatafile[["S12_221B"]], "label") <- "2 Land given to others  - decimal"

attr(rdatafile[["S12_231A"]], "label") <- "3 Land taken from others (on any term) - acre"

attr(rdatafile[["S12_231B"]], "label") <- "3 Land taken from others (on any term) - decimal"

attr(rdatafile[["S12_241A"]], "label") <- "Total area of land operated - acre"

attr(rdatafile[["S12_241B"]], "label") <- "Total area of land operated - decimal"

attr(rdatafile[["S12_251A"]], "label") <- "Net land with temporary crops - acre"

attr(rdatafile[["S12_251B"]], "label") <- "Net land with temporary crops - decimal"

rdatafile[["S12_31"]] <- haven::labelled_spss(rdatafile[["S12_31"]],
    labels = c("Brick/Cement" = 1,
               "C.I. Sheet/Brick/Cement" = 2,
               "Mud/Unburned brick" = 3,
               "Hay/Bamboo/Leaf" = 4,
               "Others" = 5)
)
attr(rdatafile[["S12_31"]], "label") <- "Material of Walls"

rdatafile[["S12_32"]] <- haven::labelled_spss(rdatafile[["S12_32"]],
    labels = c("Cement" = 1,
               "C.I. Sheet/Wood" = 2,
               "C.I. Sheet/Tali/Wood" = 3,
               "Hamp/Hay/Bamboo" = 4,
               "Others" = 5)
)
attr(rdatafile[["S12_32"]], "label") <- "Material of Roof"

rdatafile[["S12_4"]] <- haven::labelled_spss(rdatafile[["S12_4"]],
    labels = c("Muslim" = 1,
               "Hindu" = 2,
               "Buddhist" = 3,
               "Christian" = 4,
               "Others" = 5)
)
attr(rdatafile[["S12_4"]], "label") <- "Q4. Religion of Household Head"

rdatafile[["S12_5"]] <- haven::labelled_spss(rdatafile[["S12_5"]],
    labels = c("Latrine with septic tank" = 1,
               "Pit latrine with water seal" = 2,
               "Pit latrine without water seal" = 3,
               "Hang latrine" = 4,
               "Open field" = 5)
)
attr(rdatafile[["S12_5"]], "label") <- "Q5. Latrine Arrangement"

rdatafile[["S12_6"]] <- haven::labelled_spss(rdatafile[["S12_6"]],
    labels = c("Supplied water" = 1,
               "Tubewell" = 2,
               "Well/Idara" = 3,
               "Pond/River" = 4)
)
attr(rdatafile[["S12_6"]], "label") <- "Q6. Sources of Water of Household"

rdatafile[["S12_7"]] <- haven::labelled_spss(rdatafile[["S12_7"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S12_7"]], "label") <- "Q7. Availability of Electricity"

rdatafile[["S12_7B"]] <- haven::labelled_spss(rdatafile[["S12_7B"]],
    labels = c("No" = "1",
               "Yes" = "NA")
)
attr(rdatafile[["S12_7B"]], "label") <- "NA"

rdatafile[["MM"]] <- haven::labelled_spss(rdatafile[["MM"]],
    labels = c("" = )
)
attr(rdatafile[["MM"]], "label") <- "MONTH"

rdatafile[["RR"]] <- haven::labelled_spss(rdatafile[["RR"]],
    labels = c("" = )
)
attr(rdatafile[["RR"]], "label") <- "REGION"

rdatafile[["DD"]] <- haven::labelled_spss(rdatafile[["DD"]],
    labels = c("Bagerhat" = 1,
               "Barguna" = 4,
               "Barisal" = 6,
               "Bhola" = 9,
               "Bogra" = 10,
               "Brahamanbaria" = 12,
               "Chandpur" = 13,
               "Chittagong" = 15,
               "Chuadanga" = 18,
               "Comilla" = 19,
               "Cox'S Bazar" = 22,
               "Dhaka" = 26,
               "Dinajpur" = 27,
               "Faridpur" = 29,
               "Feni" = 30,
               "Gaibandha" = 32,
               "Gazipur" = 33,
               "Rajbari" = 34,
               "Gopalganj" = 35,
               "Habiganj" = 36,
               "Joypurhat" = 38,
               "Jamalpur" = 39,
               "Jessore" = 41,
               "Jhalokati" = 42,
               "Jhenaidah" = 44,
               "Khagrachhari" = 46,
               "Khulna" = 47,
               "Kishoreganj" = 48,
               "Kurigram" = 49,
               "Kushtia" = 50,
               "Lakshmipur" = 51,
               "Lalmonirhat" = 52,
               "Madaripur" = 54,
               "Magura" = 55,
               "Manikganj" = 56,
               "Meherpur" = 57,
               "Maulvibazar" = 58,
               "Munshiganj" = 59,
               "Mymensingh" = 61,
               "Naogaon" = 64,
               "Narail" = 65,
               "Narayanganj" = 67,
               "Narsingdi" = 68,
               "Natore" = 69,
               "Nawabganj" = 70,
               "Netrakona" = 72,
               "Nilphamari" = 73,
               "Noakhali" = 75,
               "Pabna" = 76,
               "Panchagarh" = 77,
               "Patuakhali" = 78,
               "Pirojpur" = 79,
               "Rajshahi" = 81,
               "Rajbari" = 82,
               "Rangamati" = 84,
               "Rangpur" = 85,
               "Shariatpur" = 86,
               "Satkhira" = 87,
               "Sirajganj" = 88,
               "Sherpur" = 89,
               "Sunamganj" = 90,
               "Sylhet" = 91,
               "Tangail" = 93,
               "Thakurgaon" = 94)
)
attr(rdatafile[["DD"]], "label") <- "DISTRICT"

rdatafile[["TT"]] <- haven::labelled_spss(rdatafile[["TT"]],
    labels = c("" = )
)
attr(rdatafile[["TT"]], "label") <- "THANA"

attr(rdatafile[["HHID"]], "label") <- "LHHID"

rdatafile[["UW"]] <- haven::labelled_spss(rdatafile[["UW"]],
    labels = c("" = )
)
attr(rdatafile[["UW"]], "label") <- "UNION/WARD"

attr(rdatafile[["MA"]], "label") <- "MAUZA"

rdatafile[["UR"]] <- haven::labelled_spss(rdatafile[["UR"]],
    labels = c("" = )
)
attr(rdatafile[["UR"]], "label") <- "RMO"

attr(rdatafile[["HHH"]], "label") <- "HHID"

rdatafile[["S35_COL2"]] <- haven::labelled_spss(rdatafile[["S35_COL2"]],
    labels = c("Desi Aus" = 1,
               "HYV  Aus" = 2,
               "Desi Aman" = 3,
               "HYV  Aman" = 4,
               "Desi Boro" = 5,
               "HYV  Boro" = 6,
               "Wheat" = 7,
               "Jute" = 8,
               "Sugar cane" = 9,
               "Pafesee/" = 10,
               "Seramum" = 11,
               "Pulses" = 12,
               "Cotton" = 13,
               "Other crops" = 14,
               "Spices (turmeric, chili, onion, etc)" = 15,
               "Potato" = 16,
               "Brinjol" = 17,
               "Gourd/pumpkin" = 18,
               "Arum" = 19,
               "Snake-gourd/bitter gourd" = 20,
               "Other green leaves" = 21,
               "Mango" = 22,
               "Jackfruit" = 23,
               "Banana" = 24,
               "Lichu" = 25,
               "Pineapple" = 26,
               "Other (papia, etc.)" = 27,
               "Cow" = 28,
               "Goat/Sheep" = 29,
               "Buffalos" = 30,
               "Milk (cow, goat, buffalo)" = 31,
               "Other animals and its products" = 32,
               "Duck" = 33,
               "Hen" = 34,
               "Egg" = 35,
               "Other poultry and its products" = 36,
               "Fish" = 37,
               "Meat" = 38,
               "Feeds of livestock" = 39,
               "Forest products (bamboo can and wood etc)" = 40,
               "Other products (husk, wood, powder, hay, etc.)" = 41)
)
attr(rdatafile[["S35_COL2"]], "label") <- "COL2 : Code Number"

attr(rdatafile[["S35_COL4"]], "label") <- "COL4 : Total Quantity"

attr(rdatafile[["S35_COL5"]], "label") <- "COL5 : Total Value"

attr(rdatafile[["S35_COL6"]], "label") <- "COL6 : Consume Quantity"

attr(rdatafile[["S35_COL7"]], "label") <- "COL7 : Consume value"

attr(rdatafile[["S35_COL8"]], "label") <- "COL8 : Sold Quantity"

attr(rdatafile[["S35_COL9"]], "label") <- "COL9 : Sold Value"

attr(rdatafile[["S35COL10"]], "label") <- "COL10: Surplus Quantity"

attr(rdatafile[["S35COL11"]], "label") <- "COL11: Surplus Value"

rdatafile[["MM"]] <- haven::labelled_spss(rdatafile[["MM"]],
    labels = c("" = )
)
attr(rdatafile[["MM"]], "label") <- "MONTH"

rdatafile[["RR"]] <- haven::labelled_spss(rdatafile[["RR"]],
    labels = c("" = )
)
attr(rdatafile[["RR"]], "label") <- "REGION"

rdatafile[["DD"]] <- haven::labelled_spss(rdatafile[["DD"]],
    labels = c("Bagerhat" = 1,
               "Barguna" = 4,
               "Barisal" = 6,
               "Bhola" = 9,
               "Bogra" = 10,
               "Brahamanbaria" = 12,
               "Chandpur" = 13,
               "Chittagong" = 15,
               "Chuadanga" = 18,
               "Comilla" = 19,
               "Cox'S Bazar" = 22,
               "Dhaka" = 26,
               "Dinajpur" = 27,
               "Faridpur" = 29,
               "Feni" = 30,
               "Gaibandha" = 32,
               "Gazipur" = 33,
               "Rajbari" = 34,
               "Gopalganj" = 35,
               "Habiganj" = 36,
               "Joypurhat" = 38,
               "Jamalpur" = 39,
               "Jessore" = 41,
               "Jhalokati" = 42,
               "Jhenaidah" = 44,
               "Khagrachhari" = 46,
               "Khulna" = 47,
               "Kishoreganj" = 48,
               "Kurigram" = 49,
               "Kushtia" = 50,
               "Lakshmipur" = 51,
               "Lalmonirhat" = 52,
               "Madaripur" = 54,
               "Magura" = 55,
               "Manikganj" = 56,
               "Meherpur" = 57,
               "Maulvibazar" = 58,
               "Munshiganj" = 59,
               "Mymensingh" = 61,
               "Naogaon" = 64,
               "Narail" = 65,
               "Narayanganj" = 67,
               "Narsingdi" = 68,
               "Natore" = 69,
               "Nawabganj" = 70,
               "Netrakona" = 72,
               "Nilphamari" = 73,
               "Noakhali" = 75,
               "Pabna" = 76,
               "Panchagarh" = 77,
               "Patuakhali" = 78,
               "Pirojpur" = 79,
               "Rajshahi" = 81,
               "Rajbari" = 82,
               "Rangamati" = 84,
               "Rangpur" = 85,
               "Shariatpur" = 86,
               "Satkhira" = 87,
               "Sirajganj" = 88,
               "Sherpur" = 89,
               "Sunamganj" = 90,
               "Sylhet" = 91,
               "Tangail" = 93,
               "Thakurgaon" = 94)
)
attr(rdatafile[["DD"]], "label") <- "DISTRICT"

rdatafile[["TT"]] <- haven::labelled_spss(rdatafile[["TT"]],
    labels = c("" = )
)
attr(rdatafile[["TT"]], "label") <- "THANA"

attr(rdatafile[["HHID"]], "label") <- "LHHID"

rdatafile[["UW"]] <- haven::labelled_spss(rdatafile[["UW"]],
    labels = c("" = )
)
attr(rdatafile[["UW"]], "label") <- "UNION/WARD"

attr(rdatafile[["MA"]], "label") <- "MAUZA"

rdatafile[["UR"]] <- haven::labelled_spss(rdatafile[["UR"]],
    labels = c("" = )
)
attr(rdatafile[["UR"]], "label") <- "RMO"

attr(rdatafile[["HHH"]], "label") <- "HHID"

rdatafile[["S36_COL2"]] <- haven::labelled_spss(rdatafile[["S36_COL2"]],
    labels = c("Seed" = 1,
               "Fertilizer" = 2,
               "Foods of livestock" = 3,
               "Tractor/Power tiller" = 4,
               "Irrigation expenses" = 5,
               "Insecticides" = 6,
               "Tax for agricultural land" = 7,
               "Carriage charge of goods and communications" = 8,
               "Salary & wages of labourer" = 9,
               "Insurance expenses" = 10,
               "Power and fuel" = 11,
               "Bees culture" = 12,
               "Fish production" = 13,
               "Livestock rearing" = 14,
               "Poultry rearing" = 15,
               "Others" = 16,
               "(1)" = 17,
               "(2)" = 18)
)
attr(rdatafile[["S36_COL2"]], "label") <- "COL2 : Code Number"

attr(rdatafile[["S36_COL4"]], "label") <- "COL4 : Quantity"

attr(rdatafile[["S36_COL5"]], "label") <- "COL5 : Value"

rdatafile[["MM"]] <- haven::labelled_spss(rdatafile[["MM"]],
    labels = c("" = )
)
attr(rdatafile[["MM"]], "label") <- "MONTH"

rdatafile[["RR"]] <- haven::labelled_spss(rdatafile[["RR"]],
    labels = c("" = )
)
attr(rdatafile[["RR"]], "label") <- "REGION"

rdatafile[["DD"]] <- haven::labelled_spss(rdatafile[["DD"]],
    labels = c("Bagerhat" = 1,
               "Barguna" = 4,
               "Barisal" = 6,
               "Bhola" = 9,
               "Bogra" = 10,
               "Brahamanbaria" = 12,
               "Chandpur" = 13,
               "Chittagong" = 15,
               "Chuadanga" = 18,
               "Comilla" = 19,
               "Cox'S Bazar" = 22,
               "Dhaka" = 26,
               "Dinajpur" = 27,
               "Faridpur" = 29,
               "Feni" = 30,
               "Gaibandha" = 32,
               "Gazipur" = 33,
               "Rajbari" = 34,
               "Gopalganj" = 35,
               "Habiganj" = 36,
               "Joypurhat" = 38,
               "Jamalpur" = 39,
               "Jessore" = 41,
               "Jhalokati" = 42,
               "Jhenaidah" = 44,
               "Khagrachhari" = 46,
               "Khulna" = 47,
               "Kishoreganj" = 48,
               "Kurigram" = 49,
               "Kushtia" = 50,
               "Lakshmipur" = 51,
               "Lalmonirhat" = 52,
               "Madaripur" = 54,
               "Magura" = 55,
               "Manikganj" = 56,
               "Meherpur" = 57,
               "Maulvibazar" = 58,
               "Munshiganj" = 59,
               "Mymensingh" = 61,
               "Naogaon" = 64,
               "Narail" = 65,
               "Narayanganj" = 67,
               "Narsingdi" = 68,
               "Natore" = 69,
               "Nawabganj" = 70,
               "Netrakona" = 72,
               "Nilphamari" = 73,
               "Noakhali" = 75,
               "Pabna" = 76,
               "Panchagarh" = 77,
               "Patuakhali" = 78,
               "Pirojpur" = 79,
               "Rajshahi" = 81,
               "Rajbari" = 82,
               "Rangamati" = 84,
               "Rangpur" = 85,
               "Shariatpur" = 86,
               "Satkhira" = 87,
               "Sirajganj" = 88,
               "Sherpur" = 89,
               "Sunamganj" = 90,
               "Sylhet" = 91,
               "Tangail" = 93,
               "Thakurgaon" = 94)
)
attr(rdatafile[["DD"]], "label") <- "DISTRICT"

rdatafile[["TT"]] <- haven::labelled_spss(rdatafile[["TT"]],
    labels = c("" = )
)
attr(rdatafile[["TT"]], "label") <- "THANA"

attr(rdatafile[["HHID"]], "label") <- "LHHID"

rdatafile[["UW"]] <- haven::labelled_spss(rdatafile[["UW"]],
    labels = c("" = )
)
attr(rdatafile[["UW"]], "label") <- "UNION/WARD"

attr(rdatafile[["MA"]], "label") <- "MAUZA"

rdatafile[["UR"]] <- haven::labelled_spss(rdatafile[["UR"]],
    labels = c("" = )
)
attr(rdatafile[["UR"]], "label") <- "RMO"

attr(rdatafile[["HHH"]], "label") <- "HHID"

rdatafile[["S191_DAY"]] <- haven::labelled_spss(rdatafile[["S191_DAY"]],
    labels = c("" = )
)
attr(rdatafile[["S191_DAY"]], "label") <- "Day"

attr(rdatafile[["S191DATE"]], "label") <- "Date"

attr(rdatafile[["S191_MCH"]], "label") <- "001 Number of males  < 10 years"

attr(rdatafile[["S191_MAD"]], "label") <- "001 Number of males  >= 10 years"

attr(rdatafile[["S191_FCH"]], "label") <- "002 Number of females  < 10 years"

attr(rdatafile[["S191_FAD"]], "label") <- "002 Number of females  >= 10 years"

attr(rdatafile[["S191TOVA"]], "label") <- "Total value (Tk)"

attr(rdatafile[["S191TOVB"]], "label") <- "Total value (Ps)"

rdatafile[["MM"]] <- haven::labelled_spss(rdatafile[["MM"]],
    labels = c("" = )
)
attr(rdatafile[["MM"]], "label") <- "MONTH"

rdatafile[["RR"]] <- haven::labelled_spss(rdatafile[["RR"]],
    labels = c("" = )
)
attr(rdatafile[["RR"]], "label") <- "REGION"

rdatafile[["DD"]] <- haven::labelled_spss(rdatafile[["DD"]],
    labels = c("Bagerhat" = 1,
               "Barguna" = 4,
               "Barisal" = 6,
               "Bhola" = 9,
               "Bogra" = 10,
               "Brahamanbaria" = 12,
               "Chandpur" = 13,
               "Chittagong" = 15,
               "Chuadanga" = 18,
               "Comilla" = 19,
               "Cox'S Bazar" = 22,
               "Dhaka" = 26,
               "Dinajpur" = 27,
               "Faridpur" = 29,
               "Feni" = 30,
               "Gaibandha" = 32,
               "Gazipur" = 33,
               "Rajbari" = 34,
               "Gopalganj" = 35,
               "Habiganj" = 36,
               "Joypurhat" = 38,
               "Jamalpur" = 39,
               "Jessore" = 41,
               "Jhalokati" = 42,
               "Jhenaidah" = 44,
               "Khagrachhari" = 46,
               "Khulna" = 47,
               "Kishoreganj" = 48,
               "Kurigram" = 49,
               "Kushtia" = 50,
               "Lakshmipur" = 51,
               "Lalmonirhat" = 52,
               "Madaripur" = 54,
               "Magura" = 55,
               "Manikganj" = 56,
               "Meherpur" = 57,
               "Maulvibazar" = 58,
               "Munshiganj" = 59,
               "Mymensingh" = 61,
               "Naogaon" = 64,
               "Narail" = 65,
               "Narayanganj" = 67,
               "Narsingdi" = 68,
               "Natore" = 69,
               "Nawabganj" = 70,
               "Netrakona" = 72,
               "Nilphamari" = 73,
               "Noakhali" = 75,
               "Pabna" = 76,
               "Panchagarh" = 77,
               "Patuakhali" = 78,
               "Pirojpur" = 79,
               "Rajshahi" = 81,
               "Rajbari" = 82,
               "Rangamati" = 84,
               "Rangpur" = 85,
               "Shariatpur" = 86,
               "Satkhira" = 87,
               "Sirajganj" = 88,
               "Sherpur" = 89,
               "Sunamganj" = 90,
               "Sylhet" = 91,
               "Tangail" = 93,
               "Thakurgaon" = 94)
)
attr(rdatafile[["DD"]], "label") <- "DISTRICT"

rdatafile[["TT"]] <- haven::labelled_spss(rdatafile[["TT"]],
    labels = c("" = )
)
attr(rdatafile[["TT"]], "label") <- "THANA"

attr(rdatafile[["HHID"]], "label") <- "LHHID"

rdatafile[["UW"]] <- haven::labelled_spss(rdatafile[["UW"]],
    labels = c("" = )
)
attr(rdatafile[["UW"]], "label") <- "UNION/WARD"

attr(rdatafile[["MA"]], "label") <- "MAUZA"

rdatafile[["UR"]] <- haven::labelled_spss(rdatafile[["UR"]],
    labels = c("" = )
)
attr(rdatafile[["UR"]], "label") <- "RMO"

attr(rdatafile[["HHH"]], "label") <- "HHID"

rdatafile[["S191_DAY"]] <- haven::labelled_spss(rdatafile[["S191_DAY"]],
    labels = c("" = )
)
attr(rdatafile[["S191_DAY"]], "label") <- "Day"

rdatafile[["S192COL3"]] <- haven::labelled_spss(rdatafile[["S192COL3"]],
    labels = c("Crops; Rice" = 3,
               "Wheat & wheat flour" = 4,
               "Beaten rice/Fried rice" = 5,
               "Vermicelli/Suji" = 6,
               "Bread / Bonrul" = 7,
               "Biscuit / Cake" = 8,
               "Other crops, etc." = 9,
               "Pulses : Lentil" = 20,
               "Chickling - Vetch" = 21,
               "Green gram" = 22,
               "Pea / gram" = 23,
               "Other pulses" = 24,
               "Fish; Hilsa" = 28,
               "Kai/Magur/Sh_ngi/Khalisha" = 29,
               "Shoal/Gajar/Taki" = 30,
               "Punti/Big Punti/Talapia" = 31,
               "Mala-Kachki/Chala-Chapila" = 32,
               "Shrimp" = 33,
               "Dried fish" = 34,
               "Tangra/Ellish" = 35,
               "Sea fish" = 36,
               "Other fishes, etc," = 37,
               "Hen egg" = 65,
               "Duck egg" = 66,
               "Other eggs" = 67,
               "Meat; Beef/buffalo" = 69,
               "Mutton/Sheep" = 70,
               "Duck/Hen" = 71,
               "Other meats" = 72,
               "Vegetables; Potato" = 77,
               "Brinjal" = 78,
               "White gourd/Pumpkin" = 79,
               "Water gourd" = 80,
               "Balsam apple" = 81,
               "Perbol" = 82,
               "Snake gourd/Ribbed gourd" = 83,
               "Green Banana/Green papya" = 84,
               "Arum/Calcachu/Kachur-muki" = 85,
               "Cauliflower/Cabbage" = 86,
               "Bean/Lobey" = 87,
               "Tomato" = 88,
               "Ladies finger" = 89,
               "Other vegetables" = 90,
               "Vegetables; Spinach (Amarania/Ba  )" = 110,
               "Others" = 111,
               "Milk & Milk products; Cow milk/Buffalo milk/Goat milk/Liquid milk (packet)" = 125,
               "Powder Milk" = 126,
               "Curd/Casine (Ponir)/Butter" = 127,
               "Drinks of milk" = 128,
               "Other milk" = 129,
               "Sweetmeat: Rasogotla/Chamch Sandesh/Kalojam" = 130,
               "Jilapi/Bundia/Amriti" = 131,
               "Halua/Batasha/Kadma" = 132,
               "Other sweetmeat etc" = 133,
               "Oil & Fats; Mustard oil" = 135,
               "Soyabean oil" = 136,
               "Dalda/Ghee/Vanaspati" = 137,
               "Other oils and fats" = 138,
               "Spices; Green chili" = 140,
               "Dried Chili" = 141,
               "Onion" = 142,
               "Garlic" = 143,
               "Turmeric" = 144,
               "Salt" = 145,
               "Other spices" = 146,
               "Fruits; Ripe banana" = 155,
               "Mango" = 156,
               "Jack fruit" = 157,
               "Leechee" = 158,
               "Ripe Papya" = 159,
               "Guava" = 160,
               "Pineapple" = 161,
               "Other fruits" = 162,
               "Drinks; Fanta/Cocacola/Sevenup/Soda/Squash/Sherbat" = 180,
               "Ovaltine/Horlicks" = 181,
               "Tea/Coffee" = 182,
               "Other drinks" = 183,
               "Sugar & Molasses: Sugar/Misri" = 187,
               "Molasses (Sugarcane, Date, Palm, Liquid)" = 188,
               "Khaja/Logenze/Chocolate/Toffee" = 189,
               "Other sugar/molasses" = 190,
               "Betalleaf and chew goods, B. leaf" = 192,
               "Betelnut" = 193,
               "Zorda/Tobacco leaf" = 194,
               "Prepared betelleaf" = 195,
               "Other chewgoods" = 196,
               "Misc. Food: Pickles" = 200,
               "Jelly/Circa" = 201,
               "Amsatta" = 202,
               "Other misc. foods" = 203,
               "Dine-outside expenses: Rice-Curries" = 210,
               "Dine-outside expenses: Sweetmeat" = 211,
               "Other Dine-outside expenses" = 212,
               "Biri/Cigarette" = 220,
               "Tobacco Huka" = 221,
               "Tobacco Leal" = 222,
               "Other tobacco products" = 223,
               "Other expenses: Travelling" = 225,
               "Children pocket expenses" = 226,
               "Others" = 227)
)
attr(rdatafile[["S192COL3"]], "label") <- "COL3 : Commodity code"

attr(rdatafile[["S192COL5"]], "label") <- "COL5: Quantity Consumed"

attr(rdatafile[["S192COL6"]], "label") <- "COL6: Value Consumed"

rdatafile[["S192COL7"]] <- haven::labelled_spss(rdatafile[["S192COL7"]],
    labels = c("Bought" = "2",
               "Home Made" = "3",
               "Gift" = "Sysmiss")
)
attr(rdatafile[["S192COL7"]], "label") <- "COL7: Collection Method"

rdatafile[["MM"]] <- haven::labelled_spss(rdatafile[["MM"]],
    labels = c("" = )
)
attr(rdatafile[["MM"]], "label") <- "MONTH"

rdatafile[["RR"]] <- haven::labelled_spss(rdatafile[["RR"]],
    labels = c("" = )
)
attr(rdatafile[["RR"]], "label") <- "REGION"

rdatafile[["DD"]] <- haven::labelled_spss(rdatafile[["DD"]],
    labels = c("Bagerhat" = 1,
               "Barguna" = 4,
               "Barisal" = 6,
               "Bhola" = 9,
               "Bogra" = 10,
               "Brahamanbaria" = 12,
               "Chandpur" = 13,
               "Chittagong" = 15,
               "Chuadanga" = 18,
               "Comilla" = 19,
               "Cox'S Bazar" = 22,
               "Dhaka" = 26,
               "Dinajpur" = 27,
               "Faridpur" = 29,
               "Feni" = 30,
               "Gaibandha" = 32,
               "Gazipur" = 33,
               "Rajbari" = 34,
               "Gopalganj" = 35,
               "Habiganj" = 36,
               "Joypurhat" = 38,
               "Jamalpur" = 39,
               "Jessore" = 41,
               "Jhalokati" = 42,
               "Jhenaidah" = 44,
               "Khagrachhari" = 46,
               "Khulna" = 47,
               "Kishoreganj" = 48,
               "Kurigram" = 49,
               "Kushtia" = 50,
               "Lakshmipur" = 51,
               "Lalmonirhat" = 52,
               "Madaripur" = 54,
               "Magura" = 55,
               "Manikganj" = 56,
               "Meherpur" = 57,
               "Maulvibazar" = 58,
               "Munshiganj" = 59,
               "Mymensingh" = 61,
               "Naogaon" = 64,
               "Narail" = 65,
               "Narayanganj" = 67,
               "Narsingdi" = 68,
               "Natore" = 69,
               "Nawabganj" = 70,
               "Netrakona" = 72,
               "Nilphamari" = 73,
               "Noakhali" = 75,
               "Pabna" = 76,
               "Panchagarh" = 77,
               "Patuakhali" = 78,
               "Pirojpur" = 79,
               "Rajshahi" = 81,
               "Rajbari" = 82,
               "Rangamati" = 84,
               "Rangpur" = 85,
               "Shariatpur" = 86,
               "Satkhira" = 87,
               "Sirajganj" = 88,
               "Sherpur" = 89,
               "Sunamganj" = 90,
               "Sylhet" = 91,
               "Tangail" = 93,
               "Thakurgaon" = 94)
)
attr(rdatafile[["DD"]], "label") <- "DISTRICT"

rdatafile[["TT"]] <- haven::labelled_spss(rdatafile[["TT"]],
    labels = c("" = )
)
attr(rdatafile[["TT"]], "label") <- "THANA"

attr(rdatafile[["HHID"]], "label") <- "LHHID"

rdatafile[["UW"]] <- haven::labelled_spss(rdatafile[["UW"]],
    labels = c("" = )
)
attr(rdatafile[["UW"]], "label") <- "UNION/WARD"

attr(rdatafile[["MA"]], "label") <- "MAUZA"

rdatafile[["UR"]] <- haven::labelled_spss(rdatafile[["UR"]],
    labels = c("" = )
)
attr(rdatafile[["UR"]], "label") <- "RMO"

attr(rdatafile[["HHH"]], "label") <- "HHID"

attr(rdatafile[["S11_MSN"]], "label") <- "Member Serial Number"

rdatafile[["S201_01"]] <- haven::labelled_spss(rdatafile[["S201_01"]],
    labels = c("" = )
)
attr(rdatafile[["S201_01"]], "label") <- "Q01. Respondent's MSN"

rdatafile[["S201_02"]] <- haven::labelled_spss(rdatafile[["S201_02"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S201_02"]], "label") <- "Q02. Can you read a letter?"

rdatafile[["S201_03"]] <- haven::labelled_spss(rdatafile[["S201_03"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S201_03"]], "label") <- "Q03. Can you write a letter?"

rdatafile[["S201_04"]] <- haven::labelled_spss(rdatafile[["S201_04"]],
    labels = c("Formal schooling" = 1,
               "Taught by family" = 2,
               "Govt. Adult Literacy Course" = 3,
               "NGO Literacy Course" = 4,
               "Other" = 5)
)
attr(rdatafile[["S201_04"]], "label") <- "Q04. Where did you learn to"

rdatafile[["S201_05"]] <- haven::labelled_spss(rdatafile[["S201_05"]],
    labels = c("No Class passed" = "1",
               "Class I" = "2",
               "Class II" = "3",
               "Class III" = "4",
               "Class IV" = "5",
               "Class V" = "6",
               "Class VI" = "7",
               "Class VII" = "8",
               "Class VIII" = "9",
               "Class IX" = "10",
               "S.S.C" = "12",
               "H.S.C" = "14",
               "Bachelor's Degree General" = "15",
               "Bachelor's Degree Honours" = "16",
               "Master's Degree or above" = "NA")
)
attr(rdatafile[["S201_05"]], "label") <- "Q05 Father highest class passed"

rdatafile[["S201_06"]] <- haven::labelled_spss(rdatafile[["S201_06"]],
    labels = c("No Class passed" = "1",
               "Class I" = "2",
               "Class II" = "3",
               "Class III" = "4",
               "Class IV" = "5",
               "Class V" = "6",
               "Class VI" = "7",
               "Class VII" = "8",
               "Class VIII" = "9",
               "Class IX" = "10",
               "S.S.C" = "12",
               "H.S.C" = "14",
               "Bachelor's Degree General" = "15",
               "Bachelor's Degree Honours" = "16",
               "Master's Degree or above" = "NA")
)
attr(rdatafile[["S201_06"]], "label") <- "Q06. Mother highest class passe"

rdatafile[["S201_07"]] <- haven::labelled_spss(rdatafile[["S201_07"]],
    labels = c("Never attended school" = 1,
               "Attended school in the past" = 2,
               "Currently attending school" = 3)
)
attr(rdatafile[["S201_07"]], "label") <- "Q07. Current educational status"

rdatafile[["MM"]] <- haven::labelled_spss(rdatafile[["MM"]],
    labels = c("" = )
)
attr(rdatafile[["MM"]], "label") <- "MONTH"

rdatafile[["RR"]] <- haven::labelled_spss(rdatafile[["RR"]],
    labels = c("" = )
)
attr(rdatafile[["RR"]], "label") <- "REGION"

rdatafile[["DD"]] <- haven::labelled_spss(rdatafile[["DD"]],
    labels = c("Bagerhat" = 1,
               "Barguna" = 4,
               "Barisal" = 6,
               "Bhola" = 9,
               "Bogra" = 10,
               "Brahamanbaria" = 12,
               "Chandpur" = 13,
               "Chittagong" = 15,
               "Chuadanga" = 18,
               "Comilla" = 19,
               "Cox'S Bazar" = 22,
               "Dhaka" = 26,
               "Dinajpur" = 27,
               "Faridpur" = 29,
               "Feni" = 30,
               "Gaibandha" = 32,
               "Gazipur" = 33,
               "Rajbari" = 34,
               "Gopalganj" = 35,
               "Habiganj" = 36,
               "Joypurhat" = 38,
               "Jamalpur" = 39,
               "Jessore" = 41,
               "Jhalokati" = 42,
               "Jhenaidah" = 44,
               "Khagrachhari" = 46,
               "Khulna" = 47,
               "Kishoreganj" = 48,
               "Kurigram" = 49,
               "Kushtia" = 50,
               "Lakshmipur" = 51,
               "Lalmonirhat" = 52,
               "Madaripur" = 54,
               "Magura" = 55,
               "Manikganj" = 56,
               "Meherpur" = 57,
               "Maulvibazar" = 58,
               "Munshiganj" = 59,
               "Mymensingh" = 61,
               "Naogaon" = 64,
               "Narail" = 65,
               "Narayanganj" = 67,
               "Narsingdi" = 68,
               "Natore" = 69,
               "Nawabganj" = 70,
               "Netrakona" = 72,
               "Nilphamari" = 73,
               "Noakhali" = 75,
               "Pabna" = 76,
               "Panchagarh" = 77,
               "Patuakhali" = 78,
               "Pirojpur" = 79,
               "Rajshahi" = 81,
               "Rajbari" = 82,
               "Rangamati" = 84,
               "Rangpur" = 85,
               "Shariatpur" = 86,
               "Satkhira" = 87,
               "Sirajganj" = 88,
               "Sherpur" = 89,
               "Sunamganj" = 90,
               "Sylhet" = 91,
               "Tangail" = 93,
               "Thakurgaon" = 94)
)
attr(rdatafile[["DD"]], "label") <- "DISTRICT"

rdatafile[["TT"]] <- haven::labelled_spss(rdatafile[["TT"]],
    labels = c("" = )
)
attr(rdatafile[["TT"]], "label") <- "THANA"

attr(rdatafile[["HHID"]], "label") <- "LHHID"

rdatafile[["UW"]] <- haven::labelled_spss(rdatafile[["UW"]],
    labels = c("" = )
)
attr(rdatafile[["UW"]], "label") <- "UNION/WARD"

attr(rdatafile[["MA"]], "label") <- "MAUZA"

rdatafile[["UR"]] <- haven::labelled_spss(rdatafile[["UR"]],
    labels = c("" = )
)
attr(rdatafile[["UR"]], "label") <- "RMO"

attr(rdatafile[["HHH"]], "label") <- "HHID"

attr(rdatafile[["S11_MSN"]], "label") <- "Member Serial Number"

rdatafile[["S208_08A"]] <- haven::labelled_spss(rdatafile[["S208_08A"]],
    labels = c("No school in the area or too far away" = 1,
               "Too Expensive" = 2,
               "Had to help at home" = 3,
               "Had to help with farm work" = 4,
               "Had to help with family business" = 5,
               "Poor school on teachers" = 6,
               "No girls school in the area or too far away" = 7,
               "All male teachers" = 8,
               "Education not useful" = 9,
               "Other" = 10)
)
attr(rdatafile[["S208_08A"]], "label") <- "Q08A. Why Never attend School (Primary)"

rdatafile[["S208_08B"]] <- haven::labelled_spss(rdatafile[["S208_08B"]],
    labels = c("No school in the area or too far away" = 1,
               "Too Expensive" = 2,
               "Had to help at home" = 3,
               "Had to help with farm work" = 4,
               "Had to help with family business" = 5,
               "Poor school on teachers" = 6,
               "No girls school in the area or too far away" = 7,
               "All male teachers" = 8,
               "Education not useful" = 9,
               "Other" = 10)
)
attr(rdatafile[["S208_08B"]], "label") <- "Q08B. Why never attend School (Secondary)"

rdatafile[["MM"]] <- haven::labelled_spss(rdatafile[["MM"]],
    labels = c("" = )
)
attr(rdatafile[["MM"]], "label") <- "MONTH"

rdatafile[["RR"]] <- haven::labelled_spss(rdatafile[["RR"]],
    labels = c("" = )
)
attr(rdatafile[["RR"]], "label") <- "REGION"

rdatafile[["DD"]] <- haven::labelled_spss(rdatafile[["DD"]],
    labels = c("Bagerhat" = 1,
               "Barguna" = 4,
               "Barisal" = 6,
               "Bhola" = 9,
               "Bogra" = 10,
               "Brahamanbaria" = 12,
               "Chandpur" = 13,
               "Chittagong" = 15,
               "Chuadanga" = 18,
               "Comilla" = 19,
               "Cox'S Bazar" = 22,
               "Dhaka" = 26,
               "Dinajpur" = 27,
               "Faridpur" = 29,
               "Feni" = 30,
               "Gaibandha" = 32,
               "Gazipur" = 33,
               "Rajbari" = 34,
               "Gopalganj" = 35,
               "Habiganj" = 36,
               "Joypurhat" = 38,
               "Jamalpur" = 39,
               "Jessore" = 41,
               "Jhalokati" = 42,
               "Jhenaidah" = 44,
               "Khagrachhari" = 46,
               "Khulna" = 47,
               "Kishoreganj" = 48,
               "Kurigram" = 49,
               "Kushtia" = 50,
               "Lakshmipur" = 51,
               "Lalmonirhat" = 52,
               "Madaripur" = 54,
               "Magura" = 55,
               "Manikganj" = 56,
               "Meherpur" = 57,
               "Maulvibazar" = 58,
               "Munshiganj" = 59,
               "Mymensingh" = 61,
               "Naogaon" = 64,
               "Narail" = 65,
               "Narayanganj" = 67,
               "Narsingdi" = 68,
               "Natore" = 69,
               "Nawabganj" = 70,
               "Netrakona" = 72,
               "Nilphamari" = 73,
               "Noakhali" = 75,
               "Pabna" = 76,
               "Panchagarh" = 77,
               "Patuakhali" = 78,
               "Pirojpur" = 79,
               "Rajshahi" = 81,
               "Rajbari" = 82,
               "Rangamati" = 84,
               "Rangpur" = 85,
               "Shariatpur" = 86,
               "Satkhira" = 87,
               "Sirajganj" = 88,
               "Sherpur" = 89,
               "Sunamganj" = 90,
               "Sylhet" = 91,
               "Tangail" = 93,
               "Thakurgaon" = 94)
)
attr(rdatafile[["DD"]], "label") <- "DISTRICT"

rdatafile[["TT"]] <- haven::labelled_spss(rdatafile[["TT"]],
    labels = c("" = )
)
attr(rdatafile[["TT"]], "label") <- "THANA"

attr(rdatafile[["HHID"]], "label") <- "LHHID"

rdatafile[["UW"]] <- haven::labelled_spss(rdatafile[["UW"]],
    labels = c("" = )
)
attr(rdatafile[["UW"]], "label") <- "UNION/WARD"

rdatafile[["MA"]] <- haven::labelled_spss(rdatafile[["MA"]],
    labels = c("" = )
)
attr(rdatafile[["MA"]], "label") <- "MAUZA"

rdatafile[["UR"]] <- haven::labelled_spss(rdatafile[["UR"]],
    labels = c("" = )
)
attr(rdatafile[["UR"]], "label") <- "RMO"

attr(rdatafile[["HHH"]], "label") <- "HHID"

attr(rdatafile[["S11_MSN"]], "label") <- "Member Serial Number"

rdatafile[["S209_09"]] <- haven::labelled_spss(rdatafile[["S209_09"]],
    labels = c("Government" = 1,
               "Government-Subsidized" = 2,
               "Private Bengali Medium" = 3,
               "Private English Medium" = 4,
               "NGO - Run" = 5,
               "Madrasha" = 6,
               "Other" = 7)
)
attr(rdatafile[["S209_09"]], "label") <- "Q09. Type of School last attend"

rdatafile[["S209_10"]] <- haven::labelled_spss(rdatafile[["S209_10"]],
    labels = c("No Class passed" = "1",
               "Class I" = "2",
               "Class II" = "3",
               "Class III" = "4",
               "Class IV" = "5",
               "Class V" = "6",
               "Class VI" = "7",
               "Class VII" = "8",
               "Class VIII" = "9",
               "Class IX" = "10",
               "S.S.C" = "12",
               "H.S.C" = "14",
               "Bachelor's Degree General" = "15",
               "Bachelor's Degree Honours" = "16",
               "Master's Degree or above" = "NA")
)
attr(rdatafile[["S209_10"]], "label") <- "Q10. Highest class you passed ?"

rdatafile[["S209_11"]] <- haven::labelled_spss(rdatafile[["S209_11"]],
    labels = c("" = )
)
attr(rdatafile[["S209_11"]], "label") <- "Q11. Year passed highest class"

attr(rdatafile[["S209_12"]], "label") <- "Q12. Years to complete primary"

attr(rdatafile[["S209_13"]], "label") <- "Q13. Years to complete secondary"

rdatafile[["S209_14A"]] <- haven::labelled_spss(rdatafile[["S209_14A"]],
    labels = c("Completed desired education" = 1,
               "Too far away" = 2,
               "Too Expensive" = 3,
               "Had to help at home" = 4,
               "Had to help with farm work" = 5,
               "Had to help with family business" = 6,
               "Poor quality of school or teachers" = 7,
               "No girls school in the area or too far away" = 8,
               "All male teachers" = 9,
               "Education not useful" = 10,
               "Got a job" = 11,
               "Got married" = 12,
               "Girls' education discouraged at that age" = 13,
               "Poor academic progress" = 14,
               "Lack of security" = 15,
               "Others" = 16)
)
attr(rdatafile[["S209_14A"]], "label") <- "Q14A. Reason to leave school (1)"

rdatafile[["S209_14B"]] <- haven::labelled_spss(rdatafile[["S209_14B"]],
    labels = c("Completed desired education" = 1,
               "Too far away" = 2,
               "Too Expensive" = 3,
               "Had to help at home" = 4,
               "Had to help with farm work" = 5,
               "Had to help with family business" = 6,
               "Poor quality of school or teachers" = 7,
               "No girls school in the area or too far away" = 8,
               "All male teachers" = 9,
               "Education not useful" = 10,
               "Got a job" = 11,
               "Got married" = 12,
               "Girls' education discouraged at that age" = 13,
               "Poor academic progress" = 14,
               "Lack of security" = 15,
               "Others" = 16)
)
attr(rdatafile[["S209_14B"]], "label") <- "Q14B. Reason to leave school (2)"

rdatafile[["MM"]] <- haven::labelled_spss(rdatafile[["MM"]],
    labels = c("" = )
)
attr(rdatafile[["MM"]], "label") <- "MONTH"

rdatafile[["RR"]] <- haven::labelled_spss(rdatafile[["RR"]],
    labels = c("" = )
)
attr(rdatafile[["RR"]], "label") <- "REGION"

rdatafile[["DD"]] <- haven::labelled_spss(rdatafile[["DD"]],
    labels = c("Bagerhat" = 1,
               "Barguna" = 4,
               "Barisal" = 6,
               "Bhola" = 9,
               "Bogra" = 10,
               "Brahamanbaria" = 12,
               "Chandpur" = 13,
               "Chittagong" = 15,
               "Chuadanga" = 18,
               "Comilla" = 19,
               "Cox'S Bazar" = 22,
               "Dhaka" = 26,
               "Dinajpur" = 27,
               "Faridpur" = 29,
               "Feni" = 30,
               "Gaibandha" = 32,
               "Gazipur" = 33,
               "Rajbari" = 34,
               "Gopalganj" = 35,
               "Habiganj" = 36,
               "Joypurhat" = 38,
               "Jamalpur" = 39,
               "Jessore" = 41,
               "Jhalokati" = 42,
               "Jhenaidah" = 44,
               "Khagrachhari" = 46,
               "Khulna" = 47,
               "Kishoreganj" = 48,
               "Kurigram" = 49,
               "Kushtia" = 50,
               "Lakshmipur" = 51,
               "Lalmonirhat" = 52,
               "Madaripur" = 54,
               "Magura" = 55,
               "Manikganj" = 56,
               "Meherpur" = 57,
               "Maulvibazar" = 58,
               "Munshiganj" = 59,
               "Mymensingh" = 61,
               "Naogaon" = 64,
               "Narail" = 65,
               "Narayanganj" = 67,
               "Narsingdi" = 68,
               "Natore" = 69,
               "Nawabganj" = 70,
               "Netrakona" = 72,
               "Nilphamari" = 73,
               "Noakhali" = 75,
               "Pabna" = 76,
               "Panchagarh" = 77,
               "Patuakhali" = 78,
               "Pirojpur" = 79,
               "Rajshahi" = 81,
               "Rajbari" = 82,
               "Rangamati" = 84,
               "Rangpur" = 85,
               "Shariatpur" = 86,
               "Satkhira" = 87,
               "Sirajganj" = 88,
               "Sherpur" = 89,
               "Sunamganj" = 90,
               "Sylhet" = 91,
               "Tangail" = 93,
               "Thakurgaon" = 94)
)
attr(rdatafile[["DD"]], "label") <- "DISTRICT"

rdatafile[["TT"]] <- haven::labelled_spss(rdatafile[["TT"]],
    labels = c("" = )
)
attr(rdatafile[["TT"]], "label") <- "THANA"

attr(rdatafile[["HHID"]], "label") <- "LHHID"

rdatafile[["UW"]] <- haven::labelled_spss(rdatafile[["UW"]],
    labels = c("" = )
)
attr(rdatafile[["UW"]], "label") <- "UNION/WARD"

attr(rdatafile[["MA"]], "label") <- "MAUZA"

rdatafile[["UR"]] <- haven::labelled_spss(rdatafile[["UR"]],
    labels = c("" = )
)
attr(rdatafile[["UR"]], "label") <- "RMO"

attr(rdatafile[["HHH"]], "label") <- "HHID"

attr(rdatafile[["S11_MSN"]], "label") <- "Member Serial Number"

rdatafile[["S215_15"]] <- haven::labelled_spss(rdatafile[["S215_15"]],
    labels = c("SSC/HSC Science" = 1,
               "SSC/HSC Humanities" = 2,
               "SSC/HSC Commerce" = 3,
               "SSC/HSC Agriculture" = 4,
               "SSC/HSC Home Economics" = 5,
               "SSC/HSC Others" = 6,
               "Bachelors Degree - Arts" = 7,
               "Bachelors Degree - Social Sciences" = 8,
               "Bachelors Degree - Science" = 9,
               "Bachelors Degree - Commerce" = 10,
               "Law" = 11,
               "Engineering" = 12,
               "Medicine" = 13,
               "Bachelors Degree - Agriculture" = 14,
               "Bachelors Degree - Architecture" = 15,
               "Bachelors Degree - Business Admin" = 16,
               "Arts and Crafts" = 17,
               "Bachelors Degree - Home Economics" = 18,
               "Bachelors Degree - Other" = 19)
)
attr(rdatafile[["S215_15"]], "label") <- "Q15. Main subject for Highest D"

rdatafile[["S215_16"]] <- haven::labelled_spss(rdatafile[["S215_16"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S215_16"]], "label") <- "Q16 14 years or more & wage-earner"

attr(rdatafile[["S215_17A"]], "label") <- "Q17. Work after highest degree? year"

attr(rdatafile[["S215_17B"]], "label") <- "Q17. Work after highest degree? month"

rdatafile[["S215_18"]] <- haven::labelled_spss(rdatafile[["S215_18"]],
    labels = c("Not working and not seeking work" = 1,
               "Not working and seeking work but not able to find work" = 2,
               "Employed for wage/salary" = 3,
               "Self Employed" = 4)
)
attr(rdatafile[["S215_18"]], "label") <- "Q18. Main employ. status last 2"

rdatafile[["MM"]] <- haven::labelled_spss(rdatafile[["MM"]],
    labels = c("" = )
)
attr(rdatafile[["MM"]], "label") <- "MONTH"

rdatafile[["RR"]] <- haven::labelled_spss(rdatafile[["RR"]],
    labels = c("" = )
)
attr(rdatafile[["RR"]], "label") <- "REGION"

rdatafile[["DD"]] <- haven::labelled_spss(rdatafile[["DD"]],
    labels = c("Bagerhat" = 1,
               "Barguna" = 4,
               "Barisal" = 6,
               "Bhola" = 9,
               "Bogra" = 10,
               "Brahamanbaria" = 12,
               "Chandpur" = 13,
               "Chittagong" = 15,
               "Chuadanga" = 18,
               "Comilla" = 19,
               "Cox'S Bazar" = 22,
               "Dhaka" = 26,
               "Dinajpur" = 27,
               "Faridpur" = 29,
               "Feni" = 30,
               "Gaibandha" = 32,
               "Gazipur" = 33,
               "Rajbari" = 34,
               "Gopalganj" = 35,
               "Habiganj" = 36,
               "Joypurhat" = 38,
               "Jamalpur" = 39,
               "Jessore" = 41,
               "Jhalokati" = 42,
               "Jhenaidah" = 44,
               "Khagrachhari" = 46,
               "Khulna" = 47,
               "Kishoreganj" = 48,
               "Kurigram" = 49,
               "Kushtia" = 50,
               "Lakshmipur" = 51,
               "Lalmonirhat" = 52,
               "Madaripur" = 54,
               "Magura" = 55,
               "Manikganj" = 56,
               "Meherpur" = 57,
               "Maulvibazar" = 58,
               "Munshiganj" = 59,
               "Mymensingh" = 61,
               "Naogaon" = 64,
               "Narail" = 65,
               "Narayanganj" = 67,
               "Narsingdi" = 68,
               "Natore" = 69,
               "Nawabganj" = 70,
               "Netrakona" = 72,
               "Nilphamari" = 73,
               "Noakhali" = 75,
               "Pabna" = 76,
               "Panchagarh" = 77,
               "Patuakhali" = 78,
               "Pirojpur" = 79,
               "Rajshahi" = 81,
               "Rajbari" = 82,
               "Rangamati" = 84,
               "Rangpur" = 85,
               "Shariatpur" = 86,
               "Satkhira" = 87,
               "Sirajganj" = 88,
               "Sherpur" = 89,
               "Sunamganj" = 90,
               "Sylhet" = 91,
               "Tangail" = 93,
               "Thakurgaon" = 94)
)
attr(rdatafile[["DD"]], "label") <- "DISTRICT"

rdatafile[["TT"]] <- haven::labelled_spss(rdatafile[["TT"]],
    labels = c("" = )
)
attr(rdatafile[["TT"]], "label") <- "THANA"

attr(rdatafile[["HHID"]], "label") <- "LHHID"

rdatafile[["UW"]] <- haven::labelled_spss(rdatafile[["UW"]],
    labels = c("" = )
)
attr(rdatafile[["UW"]], "label") <- "UNION/WARD"

attr(rdatafile[["MA"]], "label") <- "MAUZA"

rdatafile[["UR"]] <- haven::labelled_spss(rdatafile[["UR"]],
    labels = c("" = )
)
attr(rdatafile[["UR"]], "label") <- "RMO"

attr(rdatafile[["HHH"]], "label") <- "HHID"

attr(rdatafile[["S11_MSN"]], "label") <- "Member Serial Number"

rdatafile[["S219_19"]] <- haven::labelled_spss(rdatafile[["S219_19"]],
    labels = c("Do not need to" = 1,
               "Too young to work" = 2,
               "Too old to work" = 3,
               "Plan to study further" = 4,
               "Housework" = 5,
               "Need to look after children/family" = 6,
               "Resistance from husband/family" = 7,
               "Know that it is not possible to get a job" = 8,
               "Suitable self-employment not available" = 9,
               "Other" = 10)
)
attr(rdatafile[["S219_19"]], "label") <- "Q19. Why not been seeking work?"

attr(rdatafile[["S219_20A"]], "label") <- "Q20. Looking for work? Years"

attr(rdatafile[["S219_20B"]], "label") <- "Q20 Months"

attr(rdatafile[["S219_21A"]], "label") <- "Q21. Total working days employee"

attr(rdatafile[["S219_21B"]], "label") <- "Q21 Self Emp"

rdatafile[["S219_22"]] <- haven::labelled_spss(rdatafile[["S219_22"]],
    labels = c("Yes" = 1,
               "No" = 2,
               "Don't know" = 3)
)
attr(rdatafile[["S219_22"]], "label") <- "Q22. Educationally over-qualified"

rdatafile[["MM"]] <- haven::labelled_spss(rdatafile[["MM"]],
    labels = c("" = )
)
attr(rdatafile[["MM"]], "label") <- "MONTH"

rdatafile[["RR"]] <- haven::labelled_spss(rdatafile[["RR"]],
    labels = c("" = )
)
attr(rdatafile[["RR"]], "label") <- "REGION"

rdatafile[["DD"]] <- haven::labelled_spss(rdatafile[["DD"]],
    labels = c("Bagerhat" = 1,
               "Barguna" = 4,
               "Barisal" = 6,
               "Bhola" = 9,
               "Bogra" = 10,
               "Brahamanbaria" = 12,
               "Chandpur" = 13,
               "Chittagong" = 15,
               "Chuadanga" = 18,
               "Comilla" = 19,
               "Cox'S Bazar" = 22,
               "Dhaka" = 26,
               "Dinajpur" = 27,
               "Faridpur" = 29,
               "Feni" = 30,
               "Gaibandha" = 32,
               "Gazipur" = 33,
               "Rajbari" = 34,
               "Gopalganj" = 35,
               "Habiganj" = 36,
               "Joypurhat" = 38,
               "Jamalpur" = 39,
               "Jessore" = 41,
               "Jhalokati" = 42,
               "Jhenaidah" = 44,
               "Khagrachhari" = 46,
               "Khulna" = 47,
               "Kishoreganj" = 48,
               "Kurigram" = 49,
               "Kushtia" = 50,
               "Lakshmipur" = 51,
               "Lalmonirhat" = 52,
               "Madaripur" = 54,
               "Magura" = 55,
               "Manikganj" = 56,
               "Meherpur" = 57,
               "Maulvibazar" = 58,
               "Munshiganj" = 59,
               "Mymensingh" = 61,
               "Naogaon" = 64,
               "Narail" = 65,
               "Narayanganj" = 67,
               "Narsingdi" = 68,
               "Natore" = 69,
               "Nawabganj" = 70,
               "Netrakona" = 72,
               "Nilphamari" = 73,
               "Noakhali" = 75,
               "Pabna" = 76,
               "Panchagarh" = 77,
               "Patuakhali" = 78,
               "Pirojpur" = 79,
               "Rajshahi" = 81,
               "Rajbari" = 82,
               "Rangamati" = 84,
               "Rangpur" = 85,
               "Shariatpur" = 86,
               "Satkhira" = 87,
               "Sirajganj" = 88,
               "Sherpur" = 89,
               "Sunamganj" = 90,
               "Sylhet" = 91,
               "Tangail" = 93,
               "Thakurgaon" = 94)
)
attr(rdatafile[["DD"]], "label") <- "DISTRICT"

rdatafile[["TT"]] <- haven::labelled_spss(rdatafile[["TT"]],
    labels = c("" = )
)
attr(rdatafile[["TT"]], "label") <- "THANA"

attr(rdatafile[["HHID"]], "label") <- "LHHID"

rdatafile[["UW"]] <- haven::labelled_spss(rdatafile[["UW"]],
    labels = c("" = )
)
attr(rdatafile[["UW"]], "label") <- "UNION/WARD"

attr(rdatafile[["MA"]], "label") <- "MAUZA"

rdatafile[["UR"]] <- haven::labelled_spss(rdatafile[["UR"]],
    labels = c("" = )
)
attr(rdatafile[["UR"]], "label") <- "RMO"

attr(rdatafile[["HHH"]], "label") <- "HHID"

attr(rdatafile[["S11_MSN"]], "label") <- "Member Serial Number"

rdatafile[["S223_23"]] <- haven::labelled_spss(rdatafile[["S223_23"]],
    labels = c("Government" = 1,
               "Government-Subsidized" = 2,
               "Private Bengali Medium" = 3,
               "Private English Medium" = 4,
               "NGO - Run" = 5,
               "Madrasha" = 6,
               "Other" = 7)
)
attr(rdatafile[["S223_23"]], "label") <- "Q23. Type of school attending"

rdatafile[["S223_24"]] <- haven::labelled_spss(rdatafile[["S223_24"]],
    labels = c("Class I" = "2",
               "Class II" = "3",
               "Class III" = "4",
               "Class IV" = "5",
               "Class V" = "6",
               "Class VI" = "7",
               "Class VII" = "8",
               "Class VIII" = "9",
               "Class IX" = "10",
               "S.S.C" = "12",
               "H.S.C" = "14",
               "Bachelor's Degree General" = "15",
               "Bachelor's Degree Honours" = "16",
               "Master's Degree or above" = "NA")
)
attr(rdatafile[["S223_24"]], "label") <- "Q24. Class currently attending"

rdatafile[["S223_25"]] <- haven::labelled_spss(rdatafile[["S223_25"]],
    labels = c("Class I" = "2",
               "Class II" = "3",
               "Class III" = "4",
               "Class IV" = "5",
               "Class V" = "6",
               "Class VI" = "7",
               "Class VII" = "8",
               "Class VIII" = "9",
               "Class IX" = "10",
               "S.S.C" = "12",
               "H.S.C" = "14",
               "Bachelor's Degree General" = "15",
               "Bachelor's Degree Honours" = "16",
               "Master's Degree or above" = "17",
               "Did not read last year" = "Sysmiss")
)
attr(rdatafile[["S223_25"]], "label") <- "Q25. Class you attending last year"

rdatafile[["S223_26"]] <- haven::labelled_spss(rdatafile[["S223_26"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S223_26"]], "label") <- "Q26. More 5 years to complete"

attr(rdatafile[["S223_27"]], "label") <- "Q27. Years to complete primary"

rdatafile[["S223_28"]] <- haven::labelled_spss(rdatafile[["S223_28"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S223_28"]], "label") <- "Q28. A break in primary schooling"

rdatafile[["MM"]] <- haven::labelled_spss(rdatafile[["MM"]],
    labels = c("" = )
)
attr(rdatafile[["MM"]], "label") <- "MONTH"

rdatafile[["RR"]] <- haven::labelled_spss(rdatafile[["RR"]],
    labels = c("" = )
)
attr(rdatafile[["RR"]], "label") <- "REGION"

rdatafile[["DD"]] <- haven::labelled_spss(rdatafile[["DD"]],
    labels = c("Bagerhat" = 1,
               "Barguna" = 4,
               "Barisal" = 6,
               "Bhola" = 9,
               "Bogra" = 10,
               "Brahamanbaria" = 12,
               "Chandpur" = 13,
               "Chittagong" = 15,
               "Chuadanga" = 18,
               "Comilla" = 19,
               "Cox'S Bazar" = 22,
               "Dhaka" = 26,
               "Dinajpur" = 27,
               "Faridpur" = 29,
               "Feni" = 30,
               "Gaibandha" = 32,
               "Gazipur" = 33,
               "Rajbari" = 34,
               "Gopalganj" = 35,
               "Habiganj" = 36,
               "Joypurhat" = 38,
               "Jamalpur" = 39,
               "Jessore" = 41,
               "Jhalokati" = 42,
               "Jhenaidah" = 44,
               "Khagrachhari" = 46,
               "Khulna" = 47,
               "Kishoreganj" = 48,
               "Kurigram" = 49,
               "Kushtia" = 50,
               "Lakshmipur" = 51,
               "Lalmonirhat" = 52,
               "Madaripur" = 54,
               "Magura" = 55,
               "Manikganj" = 56,
               "Meherpur" = 57,
               "Maulvibazar" = 58,
               "Munshiganj" = 59,
               "Mymensingh" = 61,
               "Naogaon" = 64,
               "Narail" = 65,
               "Narayanganj" = 67,
               "Narsingdi" = 68,
               "Natore" = 69,
               "Nawabganj" = 70,
               "Netrakona" = 72,
               "Nilphamari" = 73,
               "Noakhali" = 75,
               "Pabna" = 76,
               "Panchagarh" = 77,
               "Patuakhali" = 78,
               "Pirojpur" = 79,
               "Rajshahi" = 81,
               "Rajbari" = 82,
               "Rangamati" = 84,
               "Rangpur" = 85,
               "Shariatpur" = 86,
               "Satkhira" = 87,
               "Sirajganj" = 88,
               "Sherpur" = 89,
               "Sunamganj" = 90,
               "Sylhet" = 91,
               "Tangail" = 93,
               "Thakurgaon" = 94)
)
attr(rdatafile[["DD"]], "label") <- "DISTRICT"

rdatafile[["TT"]] <- haven::labelled_spss(rdatafile[["TT"]],
    labels = c("" = )
)
attr(rdatafile[["TT"]], "label") <- "THANA"

attr(rdatafile[["HHID"]], "label") <- "LHHID"

rdatafile[["UW"]] <- haven::labelled_spss(rdatafile[["UW"]],
    labels = c("" = )
)
attr(rdatafile[["UW"]], "label") <- "UNION/WARD"

attr(rdatafile[["MA"]], "label") <- "MAUZA"

rdatafile[["UR"]] <- haven::labelled_spss(rdatafile[["UR"]],
    labels = c("" = )
)
attr(rdatafile[["UR"]], "label") <- "RMO"

attr(rdatafile[["HHH"]], "label") <- "HHID"

attr(rdatafile[["S11_MSN"]], "label") <- "Member Serial Number"

attr(rdatafile[["S229_29"]], "label") <- "Q29 Duration of breaks primary"

rdatafile[["S229_30"]] <- haven::labelled_spss(rdatafile[["S229_30"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S229_30"]], "label") <- "Q30 More than 5 years to complete"

attr(rdatafile[["S229_31"]], "label") <- "Q31 Years to complete secondary"

rdatafile[["S229_32"]] <- haven::labelled_spss(rdatafile[["S229_32"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S229_32"]], "label") <- "Q32 A break in Secondary school"

attr(rdatafile[["S229_33"]], "label") <- "Q33 Duration of the break in sec"

rdatafile[["S229_34"]] <- haven::labelled_spss(rdatafile[["S229_34"]],
    labels = c("SSC/HSC Science" = 1,
               "SSC/HSC Humanities" = 2,
               "SSC/HSC Commerce" = 3,
               "SSC/HSC Agriculture" = 4,
               "SSC/HSC Home Economics" = 5,
               "SSC/HSC Others" = 6,
               "Bachelors Degree - Arts" = 7,
               "Bachelors Degree - Social Sciences" = 8,
               "Bachelors Degree - Science" = 9,
               "Bachelors Degree - Commerce" = 10,
               "Law" = 11,
               "Engineering" = 12,
               "Medicine" = 13,
               "Bachelors Degree - Agriculture" = 14,
               "Bachelors Degree - Architecture" = 15,
               "Bachelors Degree - Business Admin" = 16,
               "Arts and Crafts" = 17,
               "Bachelors Degree - Home Economics" = 18,
               "Bachelors Degree - Other" = 19)
)
attr(rdatafile[["S229_34"]], "label") <- "Q34 Main subject group, Highest"

attr(rdatafile[["S229_35"]], "label") <- "Q35 How far is your school (miles)"

rdatafile[["MM"]] <- haven::labelled_spss(rdatafile[["MM"]],
    labels = c("" = )
)
attr(rdatafile[["MM"]], "label") <- "MONTH"

rdatafile[["RR"]] <- haven::labelled_spss(rdatafile[["RR"]],
    labels = c("" = )
)
attr(rdatafile[["RR"]], "label") <- "REGION"

rdatafile[["DD"]] <- haven::labelled_spss(rdatafile[["DD"]],
    labels = c("Bagerhat" = 1,
               "Barguna" = 4,
               "Barisal" = 6,
               "Bhola" = 9,
               "Bogra" = 10,
               "Brahamanbaria" = 12,
               "Chandpur" = 13,
               "Chittagong" = 15,
               "Chuadanga" = 18,
               "Comilla" = 19,
               "Cox'S Bazar" = 22,
               "Dhaka" = 26,
               "Dinajpur" = 27,
               "Faridpur" = 29,
               "Feni" = 30,
               "Gaibandha" = 32,
               "Gazipur" = 33,
               "Rajbari" = 34,
               "Gopalganj" = 35,
               "Habiganj" = 36,
               "Joypurhat" = 38,
               "Jamalpur" = 39,
               "Jessore" = 41,
               "Jhalokati" = 42,
               "Jhenaidah" = 44,
               "Khagrachhari" = 46,
               "Khulna" = 47,
               "Kishoreganj" = 48,
               "Kurigram" = 49,
               "Kushtia" = 50,
               "Lakshmipur" = 51,
               "Lalmonirhat" = 52,
               "Madaripur" = 54,
               "Magura" = 55,
               "Manikganj" = 56,
               "Meherpur" = 57,
               "Maulvibazar" = 58,
               "Munshiganj" = 59,
               "Mymensingh" = 61,
               "Naogaon" = 64,
               "Narail" = 65,
               "Narayanganj" = 67,
               "Narsingdi" = 68,
               "Natore" = 69,
               "Nawabganj" = 70,
               "Netrakona" = 72,
               "Nilphamari" = 73,
               "Noakhali" = 75,
               "Pabna" = 76,
               "Panchagarh" = 77,
               "Patuakhali" = 78,
               "Pirojpur" = 79,
               "Rajshahi" = 81,
               "Rajbari" = 82,
               "Rangamati" = 84,
               "Rangpur" = 85,
               "Shariatpur" = 86,
               "Satkhira" = 87,
               "Sirajganj" = 88,
               "Sherpur" = 89,
               "Sunamganj" = 90,
               "Sylhet" = 91,
               "Tangail" = 93,
               "Thakurgaon" = 94)
)
attr(rdatafile[["DD"]], "label") <- "DISTRICT"

rdatafile[["TT"]] <- haven::labelled_spss(rdatafile[["TT"]],
    labels = c("" = )
)
attr(rdatafile[["TT"]], "label") <- "THANA"

attr(rdatafile[["HHID"]], "label") <- "LHHID"

rdatafile[["UW"]] <- haven::labelled_spss(rdatafile[["UW"]],
    labels = c("" = )
)
attr(rdatafile[["UW"]], "label") <- "UNION/WARD"

attr(rdatafile[["MA"]], "label") <- "MAUZA"

rdatafile[["UR"]] <- haven::labelled_spss(rdatafile[["UR"]],
    labels = c("" = )
)
attr(rdatafile[["UR"]], "label") <- "RMO"

attr(rdatafile[["HHH"]], "label") <- "HHID"

attr(rdatafile[["S11_MSN"]], "label") <- "Member Serial Number"

rdatafile[["S236_36"]] <- haven::labelled_spss(rdatafile[["S236_36"]],
    labels = c("Walk" = 1,
               "Bicycle" = 2,
               "Rickshaw/Rickshaw van" = 3,
               "Taxi" = 4,
               "Bus" = 5,
               "Boat" = 6,
               "Train" = 7,
               "Other" = 8)
)
attr(rdatafile[["S236_36"]], "label") <- "Q36 How do you travel to school"

attr(rdatafile[["S236_37A"]], "label") <- "Q37 How long it take reach school - hrs"

attr(rdatafile[["S236_37B"]], "label") <- "Q37 How long it take reach school - mins"

rdatafile[["S236_38"]] <- haven::labelled_spss(rdatafile[["S236_38"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S236_38"]], "label") <- "Q38 Educ from home"

rdatafile[["S236_39"]] <- haven::labelled_spss(rdatafile[["S236_39"]],
    labels = c("With relative" = 1,
               "Hostel" = 2,
               "Other" = 3)
)
attr(rdatafile[["S236_39"]], "label") <- "Q39 With whom do you go school"

attr(rdatafile[["S236_40"]], "label") <- "Q40 Days absent school, last 3 mos"

rdatafile[["S236_41"]] <- haven::labelled_spss(rdatafile[["S236_41"]],
    labels = c("Sick" = 1,
               "Help in housework" = 2,
               "Help in farmwork" = 3,
               "Help in family business" = 4,
               "Bad weather" = 5,
               "Unscheduled vacation" = 6,
               "Other" = 7)
)
attr(rdatafile[["S236_41"]], "label") <- "Q41 Main reason for longest abs"

attr(rdatafile[["S236_42"]], "label") <- "Q42 Days school closed, last 3"

rdatafile[["MM"]] <- haven::labelled_spss(rdatafile[["MM"]],
    labels = c("" = )
)
attr(rdatafile[["MM"]], "label") <- "MONTH"

rdatafile[["RR"]] <- haven::labelled_spss(rdatafile[["RR"]],
    labels = c("" = )
)
attr(rdatafile[["RR"]], "label") <- "REGION"

rdatafile[["DD"]] <- haven::labelled_spss(rdatafile[["DD"]],
    labels = c("Bagerhat" = 1,
               "Barguna" = 4,
               "Barisal" = 6,
               "Bhola" = 9,
               "Bogra" = 10,
               "Brahamanbaria" = 12,
               "Chandpur" = 13,
               "Chittagong" = 15,
               "Chuadanga" = 18,
               "Comilla" = 19,
               "Cox'S Bazar" = 22,
               "Dhaka" = 26,
               "Dinajpur" = 27,
               "Faridpur" = 29,
               "Feni" = 30,
               "Gaibandha" = 32,
               "Gazipur" = 33,
               "Rajbari" = 34,
               "Gopalganj" = 35,
               "Habiganj" = 36,
               "Joypurhat" = 38,
               "Jamalpur" = 39,
               "Jessore" = 41,
               "Jhalokati" = 42,
               "Jhenaidah" = 44,
               "Khagrachhari" = 46,
               "Khulna" = 47,
               "Kishoreganj" = 48,
               "Kurigram" = 49,
               "Kushtia" = 50,
               "Lakshmipur" = 51,
               "Lalmonirhat" = 52,
               "Madaripur" = 54,
               "Magura" = 55,
               "Manikganj" = 56,
               "Meherpur" = 57,
               "Maulvibazar" = 58,
               "Munshiganj" = 59,
               "Mymensingh" = 61,
               "Naogaon" = 64,
               "Narail" = 65,
               "Narayanganj" = 67,
               "Narsingdi" = 68,
               "Natore" = 69,
               "Nawabganj" = 70,
               "Netrakona" = 72,
               "Nilphamari" = 73,
               "Noakhali" = 75,
               "Pabna" = 76,
               "Panchagarh" = 77,
               "Patuakhali" = 78,
               "Pirojpur" = 79,
               "Rajshahi" = 81,
               "Rajbari" = 82,
               "Rangamati" = 84,
               "Rangpur" = 85,
               "Shariatpur" = 86,
               "Satkhira" = 87,
               "Sirajganj" = 88,
               "Sherpur" = 89,
               "Sunamganj" = 90,
               "Sylhet" = 91,
               "Tangail" = 93,
               "Thakurgaon" = 94)
)
attr(rdatafile[["DD"]], "label") <- "DISTRICT"

rdatafile[["TT"]] <- haven::labelled_spss(rdatafile[["TT"]],
    labels = c("" = )
)
attr(rdatafile[["TT"]], "label") <- "THANA"

attr(rdatafile[["HHID"]], "label") <- "LHHID"

rdatafile[["UW"]] <- haven::labelled_spss(rdatafile[["UW"]],
    labels = c("" = )
)
attr(rdatafile[["UW"]], "label") <- "UNION/WARD"

attr(rdatafile[["MA"]], "label") <- "MAUZA"

rdatafile[["UR"]] <- haven::labelled_spss(rdatafile[["UR"]],
    labels = c("" = )
)
attr(rdatafile[["UR"]], "label") <- "RMO"

attr(rdatafile[["HHH"]], "label") <- "HHID"

attr(rdatafile[["S11_MSN"]], "label") <- "Member Serial Number"

attr(rdatafile[["S243_43A"]], "label") <- "Admission/Registration"

attr(rdatafile[["S243_43B"]], "label") <- "Uniform/Dress/Footwear"

attr(rdatafile[["S243_43C"]], "label") <- "Books/Note Book/Stationery"

attr(rdatafile[["S243_43D"]], "label") <- "Examination fee"

attr(rdatafile[["S243_43E"]], "label") <- "Tution fee"

attr(rdatafile[["S243_43H"]], "label") <- "Transport"

attr(rdatafile[["S243_43K"]], "label") <- "Private  tutor"

attr(rdatafile[["S243_43N"]], "label") <- "Hostel Expense+food"

attr(rdatafile[["S243_43Q"]], "label") <- "Other Exp."

attr(rdatafile[["S243_43R"]], "label") <- "Total Exp."

rdatafile[["MM"]] <- haven::labelled_spss(rdatafile[["MM"]],
    labels = c("" = )
)
attr(rdatafile[["MM"]], "label") <- "MONTH"

rdatafile[["RR"]] <- haven::labelled_spss(rdatafile[["RR"]],
    labels = c("" = )
)
attr(rdatafile[["RR"]], "label") <- "REGION"

rdatafile[["DD"]] <- haven::labelled_spss(rdatafile[["DD"]],
    labels = c("Bagerhat" = 1,
               "Barguna" = 4,
               "Barisal" = 6,
               "Bhola" = 9,
               "Bogra" = 10,
               "Brahamanbaria" = 12,
               "Chandpur" = 13,
               "Chittagong" = 15,
               "Chuadanga" = 18,
               "Comilla" = 19,
               "Cox'S Bazar" = 22,
               "Dhaka" = 26,
               "Dinajpur" = 27,
               "Faridpur" = 29,
               "Feni" = 30,
               "Gaibandha" = 32,
               "Gazipur" = 33,
               "Rajbari" = 34,
               "Gopalganj" = 35,
               "Habiganj" = 36,
               "Joypurhat" = 38,
               "Jamalpur" = 39,
               "Jessore" = 41,
               "Jhalokati" = 42,
               "Jhenaidah" = 44,
               "Khagrachhari" = 46,
               "Khulna" = 47,
               "Kishoreganj" = 48,
               "Kurigram" = 49,
               "Kushtia" = 50,
               "Lakshmipur" = 51,
               "Lalmonirhat" = 52,
               "Madaripur" = 54,
               "Magura" = 55,
               "Manikganj" = 56,
               "Meherpur" = 57,
               "Maulvibazar" = 58,
               "Munshiganj" = 59,
               "Mymensingh" = 61,
               "Naogaon" = 64,
               "Narail" = 65,
               "Narayanganj" = 67,
               "Narsingdi" = 68,
               "Natore" = 69,
               "Nawabganj" = 70,
               "Netrakona" = 72,
               "Nilphamari" = 73,
               "Noakhali" = 75,
               "Pabna" = 76,
               "Panchagarh" = 77,
               "Patuakhali" = 78,
               "Pirojpur" = 79,
               "Rajshahi" = 81,
               "Rajbari" = 82,
               "Rangamati" = 84,
               "Rangpur" = 85,
               "Shariatpur" = 86,
               "Satkhira" = 87,
               "Sirajganj" = 88,
               "Sherpur" = 89,
               "Sunamganj" = 90,
               "Sylhet" = 91,
               "Tangail" = 93,
               "Thakurgaon" = 94)
)
attr(rdatafile[["DD"]], "label") <- "DISTRICT"

rdatafile[["TT"]] <- haven::labelled_spss(rdatafile[["TT"]],
    labels = c("" = )
)
attr(rdatafile[["TT"]], "label") <- "THANA"

attr(rdatafile[["HHID"]], "label") <- "LHHID"

rdatafile[["UW"]] <- haven::labelled_spss(rdatafile[["UW"]],
    labels = c("" = )
)
attr(rdatafile[["UW"]], "label") <- "UNION/WARD"

attr(rdatafile[["MA"]], "label") <- "MAUZA"

rdatafile[["UR"]] <- haven::labelled_spss(rdatafile[["UR"]],
    labels = c("" = )
)
attr(rdatafile[["UR"]], "label") <- "RMO"

attr(rdatafile[["HHH"]], "label") <- "HHID"

attr(rdatafile[["S11_MSN"]], "label") <- "Member Serial Number"

rdatafile[["S244_44"]] <- haven::labelled_spss(rdatafile[["S244_44"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S244_44"]], "label") <- "Did non-member paid last 12 months"

rdatafile[["S244_45"]] <- haven::labelled_spss(rdatafile[["S244_45"]],
    labels = c("Relative" = 1,
               "Friend" = 2,
               "Other" = 3)
)
attr(rdatafile[["S244_45"]], "label") <- "Non-member paid last 12 months"

rdatafile[["S244_46"]] <- haven::labelled_spss(rdatafile[["S244_46"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S244_46"]], "label") <- "Q46 Total paid over last 12 months"

rdatafile[["S244_47"]] <- haven::labelled_spss(rdatafile[["S244_47"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S244_47"]], "label") <- "Q47 Had all SchoolText Books"

rdatafile[["S244_48"]] <- haven::labelled_spss(rdatafile[["S244_48"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S244_48"]], "label") <- "Q48 Had all Required last 12 months"

attr(rdatafile[["S244_49"]], "label") <- "Q49 Free books receive from school"

attr(rdatafile[["S244_50"]], "label") <- "Q50 Books buy from market last 12 months"

rdatafile[["MM"]] <- haven::labelled_spss(rdatafile[["MM"]],
    labels = c("" = )
)
attr(rdatafile[["MM"]], "label") <- "MONTH"

rdatafile[["RR"]] <- haven::labelled_spss(rdatafile[["RR"]],
    labels = c("" = )
)
attr(rdatafile[["RR"]], "label") <- "REGION"

rdatafile[["DD"]] <- haven::labelled_spss(rdatafile[["DD"]],
    labels = c("Bagerhat" = 1,
               "Barguna" = 4,
               "Barisal" = 6,
               "Bhola" = 9,
               "Bogra" = 10,
               "Brahamanbaria" = 12,
               "Chandpur" = 13,
               "Chittagong" = 15,
               "Chuadanga" = 18,
               "Comilla" = 19,
               "Cox'S Bazar" = 22,
               "Dhaka" = 26,
               "Dinajpur" = 27,
               "Faridpur" = 29,
               "Feni" = 30,
               "Gaibandha" = 32,
               "Gazipur" = 33,
               "Rajbari" = 34,
               "Gopalganj" = 35,
               "Habiganj" = 36,
               "Joypurhat" = 38,
               "Jamalpur" = 39,
               "Jessore" = 41,
               "Jhalokati" = 42,
               "Jhenaidah" = 44,
               "Khagrachhari" = 46,
               "Khulna" = 47,
               "Kishoreganj" = 48,
               "Kurigram" = 49,
               "Kushtia" = 50,
               "Lakshmipur" = 51,
               "Lalmonirhat" = 52,
               "Madaripur" = 54,
               "Magura" = 55,
               "Manikganj" = 56,
               "Meherpur" = 57,
               "Maulvibazar" = 58,
               "Munshiganj" = 59,
               "Mymensingh" = 61,
               "Naogaon" = 64,
               "Narail" = 65,
               "Narayanganj" = 67,
               "Narsingdi" = 68,
               "Natore" = 69,
               "Nawabganj" = 70,
               "Netrakona" = 72,
               "Nilphamari" = 73,
               "Noakhali" = 75,
               "Pabna" = 76,
               "Panchagarh" = 77,
               "Patuakhali" = 78,
               "Pirojpur" = 79,
               "Rajshahi" = 81,
               "Rajbari" = 82,
               "Rangamati" = 84,
               "Rangpur" = 85,
               "Shariatpur" = 86,
               "Satkhira" = 87,
               "Sirajganj" = 88,
               "Sherpur" = 89,
               "Sunamganj" = 90,
               "Sylhet" = 91,
               "Tangail" = 93,
               "Thakurgaon" = 94)
)
attr(rdatafile[["DD"]], "label") <- "DISTRICT"

rdatafile[["TT"]] <- haven::labelled_spss(rdatafile[["TT"]],
    labels = c("" = )
)
attr(rdatafile[["TT"]], "label") <- "THANA"

attr(rdatafile[["HHID"]], "label") <- "LHHID"

rdatafile[["UW"]] <- haven::labelled_spss(rdatafile[["UW"]],
    labels = c("" = )
)
attr(rdatafile[["UW"]], "label") <- "UNION/WARD"

attr(rdatafile[["MA"]], "label") <- "MAUZA"

rdatafile[["UR"]] <- haven::labelled_spss(rdatafile[["UR"]],
    labels = c("" = )
)
attr(rdatafile[["UR"]], "label") <- "RMO"

attr(rdatafile[["HHH"]], "label") <- "HHID"

attr(rdatafile[["S11_MSN"]], "label") <- "Member Serial Number"

rdatafile[["S251_51"]] <- haven::labelled_spss(rdatafile[["S251_51"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S251_51"]], "label") <- "Q51 Had stipend, scholarship"

attr(rdatafile[["S251_52"]], "label") <- "Q52 Total amount of benefits"

rdatafile[["S251_53"]] <- haven::labelled_spss(rdatafile[["S251_53"]],
    labels = c("Government" = 1,
               "Private sources" = 2,
               "NGO" = 3,
               "School" = 4,
               "Other" = 5)
)
attr(rdatafile[["S251_53"]], "label") <- "Q53 Largest source of Stipend/Scholarship"

rdatafile[["S251_54"]] <- haven::labelled_spss(rdatafile[["S251_54"]],
    labels = c("Very difficult" = 1,
               "Somewhat difficult" = 2,
               "Not  difficult" = 3)
)
attr(rdatafile[["S251_54"]], "label") <- "Q54 Difficult to meet School Exp"

rdatafile[["S251_55"]] <- haven::labelled_spss(rdatafile[["S251_55"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S251_55"]], "label") <- "Q55 Need borrow/private donation"

attr(rdatafile[["S251_56"]], "label") <- "Q56 Kg Wheat/rice receive 12 mo"

rdatafile[["MM"]] <- haven::labelled_spss(rdatafile[["MM"]],
    labels = c("" = )
)
attr(rdatafile[["MM"]], "label") <- "MONTH"

rdatafile[["RR"]] <- haven::labelled_spss(rdatafile[["RR"]],
    labels = c("" = )
)
attr(rdatafile[["RR"]], "label") <- "REGION"

rdatafile[["DD"]] <- haven::labelled_spss(rdatafile[["DD"]],
    labels = c("Bagerhat" = 1,
               "Barguna" = 4,
               "Barisal" = 6,
               "Bhola" = 9,
               "Bogra" = 10,
               "Brahamanbaria" = 12,
               "Chandpur" = 13,
               "Chittagong" = 15,
               "Chuadanga" = 18,
               "Comilla" = 19,
               "Cox'S Bazar" = 22,
               "Dhaka" = 26,
               "Dinajpur" = 27,
               "Faridpur" = 29,
               "Feni" = 30,
               "Gaibandha" = 32,
               "Gazipur" = 33,
               "Rajbari" = 34,
               "Gopalganj" = 35,
               "Habiganj" = 36,
               "Joypurhat" = 38,
               "Jamalpur" = 39,
               "Jessore" = 41,
               "Jhalokati" = 42,
               "Jhenaidah" = 44,
               "Khagrachhari" = 46,
               "Khulna" = 47,
               "Kishoreganj" = 48,
               "Kurigram" = 49,
               "Kushtia" = 50,
               "Lakshmipur" = 51,
               "Lalmonirhat" = 52,
               "Madaripur" = 54,
               "Magura" = 55,
               "Manikganj" = 56,
               "Meherpur" = 57,
               "Maulvibazar" = 58,
               "Munshiganj" = 59,
               "Mymensingh" = 61,
               "Naogaon" = 64,
               "Narail" = 65,
               "Narayanganj" = 67,
               "Narsingdi" = 68,
               "Natore" = 69,
               "Nawabganj" = 70,
               "Netrakona" = 72,
               "Nilphamari" = 73,
               "Noakhali" = 75,
               "Pabna" = 76,
               "Panchagarh" = 77,
               "Patuakhali" = 78,
               "Pirojpur" = 79,
               "Rajshahi" = 81,
               "Rajbari" = 82,
               "Rangamati" = 84,
               "Rangpur" = 85,
               "Shariatpur" = 86,
               "Satkhira" = 87,
               "Sirajganj" = 88,
               "Sherpur" = 89,
               "Sunamganj" = 90,
               "Sylhet" = 91,
               "Tangail" = 93,
               "Thakurgaon" = 94)
)
attr(rdatafile[["DD"]], "label") <- "DISTRICT"

rdatafile[["TT"]] <- haven::labelled_spss(rdatafile[["TT"]],
    labels = c("" = )
)
attr(rdatafile[["TT"]], "label") <- "THANA"

attr(rdatafile[["HHID"]], "label") <- "LHHID"

rdatafile[["UW"]] <- haven::labelled_spss(rdatafile[["UW"]],
    labels = c("" = )
)
attr(rdatafile[["UW"]], "label") <- "UNION/WARD"

attr(rdatafile[["MA"]], "label") <- "MAUZA"

rdatafile[["UR"]] <- haven::labelled_spss(rdatafile[["UR"]],
    labels = c("" = )
)
attr(rdatafile[["UR"]], "label") <- "RMO"

attr(rdatafile[["HHH"]], "label") <- "HHID"

attr(rdatafile[["S11_MSN"]], "label") <- "Member Serial Number"

rdatafile[["S257_57"]] <- haven::labelled_spss(rdatafile[["S257_57"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S257_57"]], "label") <- "Q57 Received Tech/Vocan. training"

rdatafile[["S257_58"]] <- haven::labelled_spss(rdatafile[["S257_58"]],
    labels = c("Polytechnic" = 1,
               "Typing/Shorthand" = 2,
               "Computer-related" = 3,
               "Motor Mechanic" = 4,
               "Electrical-related work" = 5,
               "Weaving" = 6,
               "Tailoring/Embroidery" = 7,
               "Agriculture/Livestock" = 8,
               "Health & Family Planning" = 9,
               "Cottage industry" = 10,
               "Others" = 11)
)
attr(rdatafile[["S257_58"]], "label") <- "Q58 Type of Training received"

rdatafile[["S257_59"]] <- haven::labelled_spss(rdatafile[["S257_59"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S257_59"]], "label") <- "Q59 Received a certificate"

attr(rdatafile[["S257_60A"]], "label") <- "Q60 How long was this training - yrs"

attr(rdatafile[["S257_60B"]], "label") <- "Q60 How long was this training - mos"

rdatafile[["S257_61"]] <- haven::labelled_spss(rdatafile[["S257_61"]],
    labels = c("Govt. Institution" = 1,
               "Pvt.  Institution" = 2,
               "Public Sector Employer" = 3,
               "Pvt. Employer" = 4,
               "NGO or NGO-supported institution" = 5,
               "From family member" = 6,
               "Other" = 7)
)
attr(rdatafile[["S257_61"]], "label") <- "Q61 Who Provide this training"

rdatafile[["S257_62"]] <- haven::labelled_spss(rdatafile[["S257_62"]],
    labels = c("Yes, very useful" = 1,
               "Yes, somewhat useful" = 2,
               "Not useful" = 3,
               "Currently not working" = 4)
)
attr(rdatafile[["S257_62"]], "label") <- "Q62 Found training usefull"

rdatafile[["S257_63"]] <- haven::labelled_spss(rdatafile[["S257_63"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S257_63"]], "label") <- "Q63 Income higher as a result"

rdatafile[["MM"]] <- haven::labelled_spss(rdatafile[["MM"]],
    labels = c("" = )
)
attr(rdatafile[["MM"]], "label") <- "MONTH"

rdatafile[["RR"]] <- haven::labelled_spss(rdatafile[["RR"]],
    labels = c("" = )
)
attr(rdatafile[["RR"]], "label") <- "REGION"

rdatafile[["DD"]] <- haven::labelled_spss(rdatafile[["DD"]],
    labels = c("Bagerhat" = 1,
               "Barguna" = 4,
               "Barisal" = 6,
               "Bhola" = 9,
               "Bogra" = 10,
               "Brahamanbaria" = 12,
               "Chandpur" = 13,
               "Chittagong" = 15,
               "Chuadanga" = 18,
               "Comilla" = 19,
               "Cox'S Bazar" = 22,
               "Dhaka" = 26,
               "Dinajpur" = 27,
               "Faridpur" = 29,
               "Feni" = 30,
               "Gaibandha" = 32,
               "Gazipur" = 33,
               "Rajbari" = 34,
               "Gopalganj" = 35,
               "Habiganj" = 36,
               "Joypurhat" = 38,
               "Jamalpur" = 39,
               "Jessore" = 41,
               "Jhalokati" = 42,
               "Jhenaidah" = 44,
               "Khagrachhari" = 46,
               "Khulna" = 47,
               "Kishoreganj" = 48,
               "Kurigram" = 49,
               "Kushtia" = 50,
               "Lakshmipur" = 51,
               "Lalmonirhat" = 52,
               "Madaripur" = 54,
               "Magura" = 55,
               "Manikganj" = 56,
               "Meherpur" = 57,
               "Maulvibazar" = 58,
               "Munshiganj" = 59,
               "Mymensingh" = 61,
               "Naogaon" = 64,
               "Narail" = 65,
               "Narayanganj" = 67,
               "Narsingdi" = 68,
               "Natore" = 69,
               "Nawabganj" = 70,
               "Netrakona" = 72,
               "Nilphamari" = 73,
               "Noakhali" = 75,
               "Pabna" = 76,
               "Panchagarh" = 77,
               "Patuakhali" = 78,
               "Pirojpur" = 79,
               "Rajshahi" = 81,
               "Rajbari" = 82,
               "Rangamati" = 84,
               "Rangpur" = 85,
               "Shariatpur" = 86,
               "Satkhira" = 87,
               "Sirajganj" = 88,
               "Sherpur" = 89,
               "Sunamganj" = 90,
               "Sylhet" = 91,
               "Tangail" = 93,
               "Thakurgaon" = 94)
)
attr(rdatafile[["DD"]], "label") <- "DISTRICT"

rdatafile[["TT"]] <- haven::labelled_spss(rdatafile[["TT"]],
    labels = c("" = )
)
attr(rdatafile[["TT"]], "label") <- "THANA"

attr(rdatafile[["HHID"]], "label") <- "LHHID"

rdatafile[["UW"]] <- haven::labelled_spss(rdatafile[["UW"]],
    labels = c("" = )
)
attr(rdatafile[["UW"]], "label") <- "UNION/WARD"

attr(rdatafile[["MA"]], "label") <- "MAUZA"

rdatafile[["UR"]] <- haven::labelled_spss(rdatafile[["UR"]],
    labels = c("" = )
)
attr(rdatafile[["UR"]], "label") <- "RMO"

attr(rdatafile[["HHH"]], "label") <- "HHID"

rdatafile[["S331COL1"]] <- haven::labelled_spss(rdatafile[["S331COL1"]],
    labels = c("Firewood" = 1,
               "Cowdung/cake/ghoosi" = 2,
               "Husk and wood powder" = 3,
               "Jute stick" = 4,
               "Kerosene" = 5,
               "Agri. product fuel" = 6,
               "Others" = 7,
               "Gas (Natural/Bio)" = 8,
               "Electricity" = 9,
               "Pitcoal, coal, woodcoal" = 10,
               "Others (e.g., candles, etc.)" = 11)
)
attr(rdatafile[["S331COL1"]], "label") <- "COL1 : Code number"

attr(rdatafile[["S331COL3"]], "label") <- "COL3 : Quantity Goods Bought"

attr(rdatafile[["S331COL4"]], "label") <- "COL4 : Value Goods Bought"

attr(rdatafile[["S331COL5"]], "label") <- "COL5 : Quantity Home-made"

attr(rdatafile[["S331COL6"]], "label") <- "COL6 : Value Home-made"

attr(rdatafile[["S331COL7"]], "label") <- "COL7 : Quantity Total"

attr(rdatafile[["S331COL8"]], "label") <- "COL8 : Value Total"

rdatafile[["MM"]] <- haven::labelled_spss(rdatafile[["MM"]],
    labels = c("" = )
)
attr(rdatafile[["MM"]], "label") <- "MONTH"

rdatafile[["RR"]] <- haven::labelled_spss(rdatafile[["RR"]],
    labels = c("" = )
)
attr(rdatafile[["RR"]], "label") <- "REGION"

rdatafile[["DD"]] <- haven::labelled_spss(rdatafile[["DD"]],
    labels = c("Bagerhat" = 1,
               "Barguna" = 4,
               "Barisal" = 6,
               "Bhola" = 9,
               "Bogra" = 10,
               "Brahamanbaria" = 12,
               "Chandpur" = 13,
               "Chittagong" = 15,
               "Chuadanga" = 18,
               "Comilla" = 19,
               "Cox'S Bazar" = 22,
               "Dhaka" = 26,
               "Dinajpur" = 27,
               "Faridpur" = 29,
               "Feni" = 30,
               "Gaibandha" = 32,
               "Gazipur" = 33,
               "Rajbari" = 34,
               "Gopalganj" = 35,
               "Habiganj" = 36,
               "Joypurhat" = 38,
               "Jamalpur" = 39,
               "Jessore" = 41,
               "Jhalokati" = 42,
               "Jhenaidah" = 44,
               "Khagrachhari" = 46,
               "Khulna" = 47,
               "Kishoreganj" = 48,
               "Kurigram" = 49,
               "Kushtia" = 50,
               "Lakshmipur" = 51,
               "Lalmonirhat" = 52,
               "Madaripur" = 54,
               "Magura" = 55,
               "Manikganj" = 56,
               "Meherpur" = 57,
               "Maulvibazar" = 58,
               "Munshiganj" = 59,
               "Mymensingh" = 61,
               "Naogaon" = 64,
               "Narail" = 65,
               "Narayanganj" = 67,
               "Narsingdi" = 68,
               "Natore" = 69,
               "Nawabganj" = 70,
               "Netrakona" = 72,
               "Nilphamari" = 73,
               "Noakhali" = 75,
               "Pabna" = 76,
               "Panchagarh" = 77,
               "Patuakhali" = 78,
               "Pirojpur" = 79,
               "Rajshahi" = 81,
               "Rajbari" = 82,
               "Rangamati" = 84,
               "Rangpur" = 85,
               "Shariatpur" = 86,
               "Satkhira" = 87,
               "Sirajganj" = 88,
               "Sherpur" = 89,
               "Sunamganj" = 90,
               "Sylhet" = 91,
               "Tangail" = 93,
               "Thakurgaon" = 94)
)
attr(rdatafile[["DD"]], "label") <- "DISTRICT"

rdatafile[["TT"]] <- haven::labelled_spss(rdatafile[["TT"]],
    labels = c("" = )
)
attr(rdatafile[["TT"]], "label") <- "THANA"

attr(rdatafile[["HHID"]], "label") <- "LHHID"

rdatafile[["UW"]] <- haven::labelled_spss(rdatafile[["UW"]],
    labels = c("" = )
)
attr(rdatafile[["UW"]], "label") <- "UNION/WARD"

attr(rdatafile[["MA"]], "label") <- "MAUZA"

rdatafile[["UR"]] <- haven::labelled_spss(rdatafile[["UR"]],
    labels = c("" = )
)
attr(rdatafile[["UR"]], "label") <- "RMO"

attr(rdatafile[["HHH"]], "label") <- "HHID"

rdatafile[["S331COL1"]] <- haven::labelled_spss(rdatafile[["S331COL1"]],
    labels = c("Bath Soap" = 12,
               "Snow Cream" = 13,
               "Powder" = 14,
               "Perfume" = 15,
               "Shampoo" = 16,
               "Tooth powder/paste" = 17,
               "Hair cutting" = 18,
               "Hair dressing" = 19,
               "Hair brush" = 20,
               "Hair oil" = 21,
               "Hair cream" = 22,
               "Comb, clip, etc." = 23,
               "Other toilet goods for men/women" = 24,
               "Razor" = 25,
               "Razor blade" = 26,
               "Shaving cream" = 27,
               "Shaving lotion" = 28,
               "Lipstick" = 29,
               "Nailpolish" = 30,
               "Others beautifying (hair ribbon, etc.)" = 31,
               "Other toilet goods for women" = 32,
               "Washing soap for clothes" = 33,
               "Soap Powder" = 34,
               "Washing expenses" = 35,
               "Bleaching powder" = 36,
               "Soda" = 37,
               "Spray" = 38,
               "Vim" = 39,
               "Finish/Phenyl" = 40,
               "Other items for washing/cleaning" = 41,
               "Garage rent" = 42,
               "Petrol, motor oil" = 43,
               "Driver's salary and wage" = 44,
               "Driver's pocket money" = 45,
               "Other items for transport and travel" = 46,
               "Servant salary and wage" = 47,
               "Telephone bills (used at home)" = 48,
               "Telegram" = 49,
               "Postal Stamp" = 50,
               "Others miscellaneous items" = 51)
)
attr(rdatafile[["S331COL1"]], "label") <- "COL1 : Code Number"

attr(rdatafile[["S332COL3"]], "label") <- "COL3 : Quantity"

attr(rdatafile[["S332COL4"]], "label") <- "COL4 : Value"

attr(rdatafile[["S332COL5"]], "label") <- "COL5 : Quantity Used"

attr(rdatafile[["S332COL6"]], "label") <- "COL6 : Value Used"

rdatafile[["MM"]] <- haven::labelled_spss(rdatafile[["MM"]],
    labels = c("" = )
)
attr(rdatafile[["MM"]], "label") <- "MONTH"

rdatafile[["RR"]] <- haven::labelled_spss(rdatafile[["RR"]],
    labels = c("" = )
)
attr(rdatafile[["RR"]], "label") <- "REGION"

rdatafile[["DD"]] <- haven::labelled_spss(rdatafile[["DD"]],
    labels = c("Bagerhat" = 1,
               "Barguna" = 4,
               "Barisal" = 6,
               "Bhola" = 9,
               "Bogra" = 10,
               "Brahamanbaria" = 12,
               "Chandpur" = 13,
               "Chittagong" = 15,
               "Chuadanga" = 18,
               "Comilla" = 19,
               "Cox'S Bazar" = 22,
               "Dhaka" = 26,
               "Dinajpur" = 27,
               "Faridpur" = 29,
               "Feni" = 30,
               "Gaibandha" = 32,
               "Gazipur" = 33,
               "Rajbari" = 34,
               "Gopalganj" = 35,
               "Habiganj" = 36,
               "Joypurhat" = 38,
               "Jamalpur" = 39,
               "Jessore" = 41,
               "Jhalokati" = 42,
               "Jhenaidah" = 44,
               "Khagrachhari" = 46,
               "Khulna" = 47,
               "Kishoreganj" = 48,
               "Kurigram" = 49,
               "Kushtia" = 50,
               "Lakshmipur" = 51,
               "Lalmonirhat" = 52,
               "Madaripur" = 54,
               "Magura" = 55,
               "Manikganj" = 56,
               "Meherpur" = 57,
               "Maulvibazar" = 58,
               "Munshiganj" = 59,
               "Mymensingh" = 61,
               "Naogaon" = 64,
               "Narail" = 65,
               "Narayanganj" = 67,
               "Narsingdi" = 68,
               "Natore" = 69,
               "Nawabganj" = 70,
               "Netrakona" = 72,
               "Nilphamari" = 73,
               "Noakhali" = 75,
               "Pabna" = 76,
               "Panchagarh" = 77,
               "Patuakhali" = 78,
               "Pirojpur" = 79,
               "Rajshahi" = 81,
               "Rajbari" = 82,
               "Rangamati" = 84,
               "Rangpur" = 85,
               "Shariatpur" = 86,
               "Satkhira" = 87,
               "Sirajganj" = 88,
               "Sherpur" = 89,
               "Sunamganj" = 90,
               "Sylhet" = 91,
               "Tangail" = 93,
               "Thakurgaon" = 94)
)
attr(rdatafile[["DD"]], "label") <- "DISTRICT"

rdatafile[["TT"]] <- haven::labelled_spss(rdatafile[["TT"]],
    labels = c("" = )
)
attr(rdatafile[["TT"]], "label") <- "THANA"

attr(rdatafile[["HHID"]], "label") <- "LHHID"

rdatafile[["UW"]] <- haven::labelled_spss(rdatafile[["UW"]],
    labels = c("" = )
)
attr(rdatafile[["UW"]], "label") <- "UNION/WARD"

attr(rdatafile[["MA"]], "label") <- "MAUZA"

rdatafile[["UR"]] <- haven::labelled_spss(rdatafile[["UR"]],
    labels = c("" = )
)
attr(rdatafile[["UR"]], "label") <- "RMO"

attr(rdatafile[["HHH"]], "label") <- "HHID"

rdatafile[["S331COL1"]] <- haven::labelled_spss(rdatafile[["S331COL1"]],
    labels = c("Male -  Long cloth/yarn (for making dress)" = 52,
               "Male - Engraved satin/poplin" = 53,
               "Male - Drill and other cloth for trouser (cotton)" = 54,
               "Male - Woollen cloth/yarn" = 55,
               "Male - Artificial fibre cloth" = 56,
               "Male - Silk and artificial silk" = 57,
               "Male - Tailoring expenses" = 58,
               "Male - Others" = 59,
               "Female -  Long cloth/yarn (for making dress)" = 60,
               "Female - Engraved satin/poplin" = 61,
               "Female - Drill and other cloth for trouser (cotton)" = 62,
               "Female - Woollen cloth/yarn" = 63,
               "Female - Artificial fibre cloth" = 64,
               "Female - Silk and artificial silk" = 65,
               "Female - Tailoring expenses" = 66,
               "Female - Others" = 67)
)
attr(rdatafile[["S331COL1"]], "label") <- "COL1 : Code Number"

attr(rdatafile[["S333COL3"]], "label") <- "COL3 : Bought/Paid Quantity"

attr(rdatafile[["S333COL4"]], "label") <- "COL4 : Bought/Paid Value"

attr(rdatafile[["S333COL5"]], "label") <- "COL5 : Home made/gift Quantity"

attr(rdatafile[["S333COL6"]], "label") <- "COL6 : Home made/gift Value"

attr(rdatafile[["S333COL7"]], "label") <- "COL7 : Total Quantity"

attr(rdatafile[["S333COL8"]], "label") <- "COL8 : Total Value"

rdatafile[["MM"]] <- haven::labelled_spss(rdatafile[["MM"]],
    labels = c("" = )
)
attr(rdatafile[["MM"]], "label") <- "MONTH"

rdatafile[["RR"]] <- haven::labelled_spss(rdatafile[["RR"]],
    labels = c("" = )
)
attr(rdatafile[["RR"]], "label") <- "REGION"

rdatafile[["DD"]] <- haven::labelled_spss(rdatafile[["DD"]],
    labels = c("Bagerhat" = 1,
               "Barguna" = 4,
               "Barisal" = 6,
               "Bhola" = 9,
               "Bogra" = 10,
               "Brahamanbaria" = 12,
               "Chandpur" = 13,
               "Chittagong" = 15,
               "Chuadanga" = 18,
               "Comilla" = 19,
               "Cox'S Bazar" = 22,
               "Dhaka" = 26,
               "Dinajpur" = 27,
               "Faridpur" = 29,
               "Feni" = 30,
               "Gaibandha" = 32,
               "Gazipur" = 33,
               "Rajbari" = 34,
               "Gopalganj" = 35,
               "Habiganj" = 36,
               "Joypurhat" = 38,
               "Jamalpur" = 39,
               "Jessore" = 41,
               "Jhalokati" = 42,
               "Jhenaidah" = 44,
               "Khagrachhari" = 46,
               "Khulna" = 47,
               "Kishoreganj" = 48,
               "Kurigram" = 49,
               "Kushtia" = 50,
               "Lakshmipur" = 51,
               "Lalmonirhat" = 52,
               "Madaripur" = 54,
               "Magura" = 55,
               "Manikganj" = 56,
               "Meherpur" = 57,
               "Maulvibazar" = 58,
               "Munshiganj" = 59,
               "Mymensingh" = 61,
               "Naogaon" = 64,
               "Narail" = 65,
               "Narayanganj" = 67,
               "Narsingdi" = 68,
               "Natore" = 69,
               "Nawabganj" = 70,
               "Netrakona" = 72,
               "Nilphamari" = 73,
               "Noakhali" = 75,
               "Pabna" = 76,
               "Panchagarh" = 77,
               "Patuakhali" = 78,
               "Pirojpur" = 79,
               "Rajshahi" = 81,
               "Rajbari" = 82,
               "Rangamati" = 84,
               "Rangpur" = 85,
               "Shariatpur" = 86,
               "Satkhira" = 87,
               "Sirajganj" = 88,
               "Sherpur" = 89,
               "Sunamganj" = 90,
               "Sylhet" = 91,
               "Tangail" = 93,
               "Thakurgaon" = 94)
)
attr(rdatafile[["DD"]], "label") <- "DISTRICT"

rdatafile[["TT"]] <- haven::labelled_spss(rdatafile[["TT"]],
    labels = c("" = )
)
attr(rdatafile[["TT"]], "label") <- "THANA"

attr(rdatafile[["HHID"]], "label") <- "LHHID"

rdatafile[["UW"]] <- haven::labelled_spss(rdatafile[["UW"]],
    labels = c("" = )
)
attr(rdatafile[["UW"]], "label") <- "UNION/WARD"

attr(rdatafile[["MA"]], "label") <- "MAUZA"

rdatafile[["UR"]] <- haven::labelled_spss(rdatafile[["UR"]],
    labels = c("" = )
)
attr(rdatafile[["UR"]], "label") <- "RMO"

attr(rdatafile[["HHH"]], "label") <- "HHID"

rdatafile[["S331COL1"]] <- haven::labelled_spss(rdatafile[["S331COL1"]],
    labels = c("Men's and boys' garments - Lungi/Napkin" = 68,
               "Men's and boys' garments - Dhooti" = 69,
               "Men's and boys' garments - Shirt and pants" = 70,
               "Men's and boys' garments - Panjabi, trouser" = 71,
               "Men's and boys' garments - Suit/overcoat" = 72,
               "Men's and boys' garments - Ganji/underwear" = 73,
               "Men's and boys' garments - Sweater/Pullover" = 74,
               "Men's and boys' garments - Scarf (Cotton/Woolen)" = 75,
               "Men's and boys' garments - Others (stocking, handkerchief, etc.)" = 76,
               "Women's and girls' garments - Shari (thick)" = 77,
               "Women's and girls' garments - Shari" = 78,
               "Women's and girls' garments - Salwar/kameez" = 79,
               "Women's and girls' garments - Ladies' gauze scarf" = 80,
               "Women's and girls' garments - Petticoat" = 81,
               "Women's and girls' garments - Blouse/brassier" = 82,
               "Women's and girls' garments - Frock, shirt, pant guernsey" = 83,
               "Women's and girls' garments - Sweaters, pullover, scarf" = 84,
               "Women's and girls' garments - Other (socks, etc.)" = 85,
               "Bed sheet, bed cover and pillow cover" = 86,
               "Screen/table cover and other covers" = 87,
               "Quilt/Pillow" = 88,
               "Mosquito net" = 89,
               "Others" = 90)
)
attr(rdatafile[["S331COL1"]], "label") <- "COL1 : Code Number"

attr(rdatafile[["S334COL3"]], "label") <- "COL3 : Ready M: Bought Quantity"

attr(rdatafile[["S334COL4"]], "label") <- "COL4 : Ready M: Bought Value"

attr(rdatafile[["S334COL5"]], "label") <- "COL5 : Second H: Quantity"

attr(rdatafile[["S334COL6"]], "label") <- "COL6 : Second H: Value"

attr(rdatafile[["S334COL7"]], "label") <- "COL7 : Total Quantity"

attr(rdatafile[["S334COL8"]], "label") <- "COL8 : Total Value"

rdatafile[["MM"]] <- haven::labelled_spss(rdatafile[["MM"]],
    labels = c("" = )
)
attr(rdatafile[["MM"]], "label") <- "MONTH"

rdatafile[["RR"]] <- haven::labelled_spss(rdatafile[["RR"]],
    labels = c("" = )
)
attr(rdatafile[["RR"]], "label") <- "REGION"

rdatafile[["DD"]] <- haven::labelled_spss(rdatafile[["DD"]],
    labels = c("Bagerhat" = 1,
               "Barguna" = 4,
               "Barisal" = 6,
               "Bhola" = 9,
               "Bogra" = 10,
               "Brahamanbaria" = 12,
               "Chandpur" = 13,
               "Chittagong" = 15,
               "Chuadanga" = 18,
               "Comilla" = 19,
               "Cox'S Bazar" = 22,
               "Dhaka" = 26,
               "Dinajpur" = 27,
               "Faridpur" = 29,
               "Feni" = 30,
               "Gaibandha" = 32,
               "Gazipur" = 33,
               "Rajbari" = 34,
               "Gopalganj" = 35,
               "Habiganj" = 36,
               "Joypurhat" = 38,
               "Jamalpur" = 39,
               "Jessore" = 41,
               "Jhalokati" = 42,
               "Jhenaidah" = 44,
               "Khagrachhari" = 46,
               "Khulna" = 47,
               "Kishoreganj" = 48,
               "Kurigram" = 49,
               "Kushtia" = 50,
               "Lakshmipur" = 51,
               "Lalmonirhat" = 52,
               "Madaripur" = 54,
               "Magura" = 55,
               "Manikganj" = 56,
               "Meherpur" = 57,
               "Maulvibazar" = 58,
               "Munshiganj" = 59,
               "Mymensingh" = 61,
               "Naogaon" = 64,
               "Narail" = 65,
               "Narayanganj" = 67,
               "Narsingdi" = 68,
               "Natore" = 69,
               "Nawabganj" = 70,
               "Netrakona" = 72,
               "Nilphamari" = 73,
               "Noakhali" = 75,
               "Pabna" = 76,
               "Panchagarh" = 77,
               "Patuakhali" = 78,
               "Pirojpur" = 79,
               "Rajshahi" = 81,
               "Rajbari" = 82,
               "Rangamati" = 84,
               "Rangpur" = 85,
               "Shariatpur" = 86,
               "Satkhira" = 87,
               "Sirajganj" = 88,
               "Sherpur" = 89,
               "Sunamganj" = 90,
               "Sylhet" = 91,
               "Tangail" = 93,
               "Thakurgaon" = 94)
)
attr(rdatafile[["DD"]], "label") <- "DISTRICT"

rdatafile[["TT"]] <- haven::labelled_spss(rdatafile[["TT"]],
    labels = c("" = )
)
attr(rdatafile[["TT"]], "label") <- "THANA"

attr(rdatafile[["HHID"]], "label") <- "LHHID"

rdatafile[["UW"]] <- haven::labelled_spss(rdatafile[["UW"]],
    labels = c("" = )
)
attr(rdatafile[["UW"]], "label") <- "UNION/WARD"

attr(rdatafile[["MA"]], "label") <- "MAUZA"

rdatafile[["UR"]] <- haven::labelled_spss(rdatafile[["UR"]],
    labels = c("" = )
)
attr(rdatafile[["UR"]], "label") <- "RMO"

attr(rdatafile[["HHH"]], "label") <- "HHID"

rdatafile[["S331COL1"]] <- haven::labelled_spss(rdatafile[["S331COL1"]],
    labels = c("Male - Shoe and sandals (leather)" = 91,
               "Male - Shoe and sandals (rubber, plastic & nylon)" = 92,
               "Male - Cloth shoe" = 93,
               "Male - Wooden sandals" = 94,
               "Male - Shoe brush, polish, cleaning and shining tools" = 95,
               "Male - Maintaining expenses" = 96,
               "Male - Other articles" = 97,
               "Female - Shoe and sandals (leather)" = 98,
               "Female - Shoe and sandals (rubber, plastic & nylon)" = 99,
               "Female - Cloth shoe" = 100,
               "Female - Wooden sandals" = 101,
               "Female - Shoe brush, polish, cleaning and shining tools" = 102,
               "Female - Maintaining expenses" = 103,
               "Female - Other articles" = 104,
               "Chokey/Cot" = 105,
               "Chair, table, dressing table & stool" = 106,
               "Sofa" = 107,
               "Wooden & steel almirah/hanger/bookshelf" = 108,
               "Mattress, quilt" = 109,
               "Rag (without cover)" = 110,
               "Carpet/Mat" = 111,
               "Furniture hire charge" = 112,
               "Other furniture & house décor" = 113,
               "Refrigerator" = 114,
               "Cooker & stove" = 115,
               "Electric toaster" = 116,
               "Metal flat dish & plate for cooking" = 117,
               "Other articles (metal) for cooking" = 118,
               "Earthier flat dish plate for use in cooking" = 119,
               "Glass & china-clay articles, metallic plate" = 120,
               "Spoon, fork, knife" = 121,
               "Other cooking equipment" = 122,
               "Radio/two-in-one etc" = 123,
               "Television/ VDO Game Set" = 124,
               "VCP/VCR" = 125,
               "Guitar/Orchestra/Harmonium" = 126,
               "VDO Tape/Casette" = 127,
               "Other musical instruments" = 128,
               "Book/Newspaper/Magazine/Novel book" = 129,
               "Cinema/Charity Shows" = 130,
               "Sports Expenses/Membership Fees" = 131,
               "Photography" = 132,
               "Recreation Articles/Service/Maintenance" = 133,
               "Other Recreation & Study Materials" = 134,
               "Washing machine" = 135,
               "Iron" = 136,
               "Other cleaning equipment" = 137,
               "Trunk,  Suitcase" = 138,
               "Lantern,  Chimney, Lamp" = 139,
               "Electric Lamp, Bulb, Tubeplug, Switch, etc." = 140,
               "Electric Fan,  Airconditioner,  Air Cooler" = 141,
               "Typewriter" = 142,
               "Sewing Machine" = 143,
               "Equipment Made of Iron (Knife, etc)" = 144,
               "Battery Cell" = 145,
               "Other household materials" = 146,
               "Home-Knitted Clothes (Repairs)" = 147,
               "Electrical Equipments (Service and Repairs)" = 148,
               "Repairing Enamel Plate" = 149,
               "Bell-Metal/Brass Pot Repair" = 150,
               "Other Kitchen Equipment And Related Articles (Maintenance and Repairing)" = 151,
               "Furniture (Cleaning and Repairing)" = 152,
               "Trunk, Suitcase (Repairing)" = 153,
               "Other Sewing and Knitting Equipment" = 154,
               "Handbag (For Male/Female)" = 155,
               "Tie-Pin, Hand-Button" = 156,
               "Belt" = 157,
               "Umbrella/Stick" = 158,
               "Spectacles" = 159,
               "Cigarette Case/Lighter" = 160,
               "Wrist Watch/Pocket Watch" = 161,
               "Other: Ornament of Gold, Silver, Artificial, Plastics, etc." = 162)
)
attr(rdatafile[["S331COL1"]], "label") <- "COL1 : Code Number"

attr(rdatafile[["S335COL3"]], "label") <- "COL3 : Quantity"

attr(rdatafile[["S335COL4"]], "label") <- "COL4 : Value"

rdatafile[["MM"]] <- haven::labelled_spss(rdatafile[["MM"]],
    labels = c("" = )
)
attr(rdatafile[["MM"]], "label") <- "MONTH"

rdatafile[["RR"]] <- haven::labelled_spss(rdatafile[["RR"]],
    labels = c("" = )
)
attr(rdatafile[["RR"]], "label") <- "REGION"

rdatafile[["DD"]] <- haven::labelled_spss(rdatafile[["DD"]],
    labels = c("Bagerhat" = 1,
               "Barguna" = 4,
               "Barisal" = 6,
               "Bhola" = 9,
               "Bogra" = 10,
               "Brahamanbaria" = 12,
               "Chandpur" = 13,
               "Chittagong" = 15,
               "Chuadanga" = 18,
               "Comilla" = 19,
               "Cox'S Bazar" = 22,
               "Dhaka" = 26,
               "Dinajpur" = 27,
               "Faridpur" = 29,
               "Feni" = 30,
               "Gaibandha" = 32,
               "Gazipur" = 33,
               "Rajbari" = 34,
               "Gopalganj" = 35,
               "Habiganj" = 36,
               "Joypurhat" = 38,
               "Jamalpur" = 39,
               "Jessore" = 41,
               "Jhalokati" = 42,
               "Jhenaidah" = 44,
               "Khagrachhari" = 46,
               "Khulna" = 47,
               "Kishoreganj" = 48,
               "Kurigram" = 49,
               "Kushtia" = 50,
               "Lakshmipur" = 51,
               "Lalmonirhat" = 52,
               "Madaripur" = 54,
               "Magura" = 55,
               "Manikganj" = 56,
               "Meherpur" = 57,
               "Maulvibazar" = 58,
               "Munshiganj" = 59,
               "Mymensingh" = 61,
               "Naogaon" = 64,
               "Narail" = 65,
               "Narayanganj" = 67,
               "Narsingdi" = 68,
               "Natore" = 69,
               "Nawabganj" = 70,
               "Netrakona" = 72,
               "Nilphamari" = 73,
               "Noakhali" = 75,
               "Pabna" = 76,
               "Panchagarh" = 77,
               "Patuakhali" = 78,
               "Pirojpur" = 79,
               "Rajshahi" = 81,
               "Rajbari" = 82,
               "Rangamati" = 84,
               "Rangpur" = 85,
               "Shariatpur" = 86,
               "Satkhira" = 87,
               "Sirajganj" = 88,
               "Sherpur" = 89,
               "Sunamganj" = 90,
               "Sylhet" = 91,
               "Tangail" = 93,
               "Thakurgaon" = 94)
)
attr(rdatafile[["DD"]], "label") <- "DISTRICT"

rdatafile[["TT"]] <- haven::labelled_spss(rdatafile[["TT"]],
    labels = c("" = )
)
attr(rdatafile[["TT"]], "label") <- "THANA"

attr(rdatafile[["HHID"]], "label") <- "LHHID"

rdatafile[["UW"]] <- haven::labelled_spss(rdatafile[["UW"]],
    labels = c("" = )
)
attr(rdatafile[["UW"]], "label") <- "UNION/WARD"

attr(rdatafile[["MA"]], "label") <- "MAUZA"

rdatafile[["UR"]] <- haven::labelled_spss(rdatafile[["UR"]],
    labels = c("" = )
)
attr(rdatafile[["UR"]], "label") <- "RMO"

attr(rdatafile[["HHH"]], "label") <- "HHID"

rdatafile[["S341COL1"]] <- haven::labelled_spss(rdatafile[["S341COL1"]],
    labels = c("House rent (rented house)" = 1,
               "Rent of owner-occupied house (at current market price)" = 2,
               "Rent of rent-free house" = 3,
               "Water expenses" = 4,
               "House repair expenses" = 5,
               "House & property expenses" = 6,
               "Insurance of house" = 7,
               "Interest (if any) for mortgage of house" = 8,
               "Other expenses related to house" = 9,
               "Land rent (except farm land)" = 11,
               "Income tax" = 12,
               "Interest" = 13,
               "Watchman-Municipality tax" = 14,
               "Fine" = 15,
               "Other tax" = 16,
               "Gift, royalty (Tribute): Zakat-fithrnment of animal sacrificed in Eid-ul-Azha (1/3), etc. expenses" = 17,
               "Money remitted to relations living separately" = 18)
)
attr(rdatafile[["S341COL1"]], "label") <- "COL1 : Code Number"

attr(rdatafile[["S341COL2"]], "label") <- "COL2 : Total expenditure"

rdatafile[["MM"]] <- haven::labelled_spss(rdatafile[["MM"]],
    labels = c("" = )
)
attr(rdatafile[["MM"]], "label") <- "MONTH"

rdatafile[["RR"]] <- haven::labelled_spss(rdatafile[["RR"]],
    labels = c("" = )
)
attr(rdatafile[["RR"]], "label") <- "REGION"

rdatafile[["DD"]] <- haven::labelled_spss(rdatafile[["DD"]],
    labels = c("Bagerhat" = 1,
               "Barguna" = 4,
               "Barisal" = 6,
               "Bhola" = 9,
               "Bogra" = 10,
               "Brahamanbaria" = 12,
               "Chandpur" = 13,
               "Chittagong" = 15,
               "Chuadanga" = 18,
               "Comilla" = 19,
               "Cox'S Bazar" = 22,
               "Dhaka" = 26,
               "Dinajpur" = 27,
               "Faridpur" = 29,
               "Feni" = 30,
               "Gaibandha" = 32,
               "Gazipur" = 33,
               "Rajbari" = 34,
               "Gopalganj" = 35,
               "Habiganj" = 36,
               "Joypurhat" = 38,
               "Jamalpur" = 39,
               "Jessore" = 41,
               "Jhalokati" = 42,
               "Jhenaidah" = 44,
               "Khagrachhari" = 46,
               "Khulna" = 47,
               "Kishoreganj" = 48,
               "Kurigram" = 49,
               "Kushtia" = 50,
               "Lakshmipur" = 51,
               "Lalmonirhat" = 52,
               "Madaripur" = 54,
               "Magura" = 55,
               "Manikganj" = 56,
               "Meherpur" = 57,
               "Maulvibazar" = 58,
               "Munshiganj" = 59,
               "Mymensingh" = 61,
               "Naogaon" = 64,
               "Narail" = 65,
               "Narayanganj" = 67,
               "Narsingdi" = 68,
               "Natore" = 69,
               "Nawabganj" = 70,
               "Netrakona" = 72,
               "Nilphamari" = 73,
               "Noakhali" = 75,
               "Pabna" = 76,
               "Panchagarh" = 77,
               "Patuakhali" = 78,
               "Pirojpur" = 79,
               "Rajshahi" = 81,
               "Rajbari" = 82,
               "Rangamati" = 84,
               "Rangpur" = 85,
               "Shariatpur" = 86,
               "Satkhira" = 87,
               "Sirajganj" = 88,
               "Sherpur" = 89,
               "Sunamganj" = 90,
               "Sylhet" = 91,
               "Tangail" = 93,
               "Thakurgaon" = 94)
)
attr(rdatafile[["DD"]], "label") <- "DISTRICT"

rdatafile[["TT"]] <- haven::labelled_spss(rdatafile[["TT"]],
    labels = c("" = )
)
attr(rdatafile[["TT"]], "label") <- "THANA"

attr(rdatafile[["HHID"]], "label") <- "LHHID"

rdatafile[["UW"]] <- haven::labelled_spss(rdatafile[["UW"]],
    labels = c("" = )
)
attr(rdatafile[["UW"]], "label") <- "UNION/WARD"

attr(rdatafile[["MA"]], "label") <- "MAUZA"

rdatafile[["UR"]] <- haven::labelled_spss(rdatafile[["UR"]],
    labels = c("" = )
)
attr(rdatafile[["UR"]], "label") <- "RMO"

attr(rdatafile[["HHH"]], "label") <- "HHID"

rdatafile[["S341COL1"]] <- haven::labelled_spss(rdatafile[["S341COL1"]],
    labels = c("Male - Fee" = 19,
               "Male - Personal teaching expenses" = 20,
               "Male - Hostel expenses" = 21,
               "Male - Text book" = 22,
               "Male - Paper/exercise notebook" = 23,
               "Male - Pen/pencil/inkpot" = 24,
               "Male - Other educational expense items" = 25,
               "Female - Fee" = 26,
               "Female - Personal teaching expenses" = 27,
               "Female - Hostel expenses" = 28,
               "Female - Text book" = 29,
               "Female - Paper/exercise notebook" = 30,
               "Female - Pen/pencil/inkpot" = 31,
               "Female - Other educational expense items" = 32,
               "Male - Doctor's fee" = 33,
               "Male - Urine, stool, blood, exam fee, etc." = 34,
               "Male - X-ray fee" = 35,
               "Male - Hospital/Clinic expenses" = 36,
               "Male - Medicine" = 37,
               "Male - Preventive treatment (below 5 years of age)" = 38,
               "Male - Preventive treatment (above 5 years of age)" = 39,
               "Male - Dental service expenses" = 40,
               "Male - Kabiraji/Hekimi" = 41,
               "Male - Homeopathy" = 42,
               "Male - Other medical treatment expense items" = 43,
               "Female - Doctor's fee" = 44,
               "Female - Urine, stool, blood, exam fee, etc." = 45,
               "Female - X-ray fee" = 46,
               "Female - Hospital/Clinic expenses" = 47,
               "Female - Medicine" = 48,
               "Female - Maternity expenses" = 49,
               "Female - Preventive treatment (below 5 years of age)" = 50,
               "Female - Preventive treatment (above 5 years of age)" = 51,
               "Female - Dental service expenses" = 52,
               "Female - Kabiraji/Hekimi" = 53,
               "Female - Homeopathy" = 54,
               "Female - Other medical treatment expense items" = 55)
)
attr(rdatafile[["S341COL1"]], "label") <- "COL1 : Code Number"

attr(rdatafile[["S342COL3"]], "label") <- "COL3 : Quantity"

attr(rdatafile[["S342COL4"]], "label") <- "COL4 : Value"

rdatafile[["MM"]] <- haven::labelled_spss(rdatafile[["MM"]],
    labels = c("" = )
)
attr(rdatafile[["MM"]], "label") <- "MONTH"

rdatafile[["RR"]] <- haven::labelled_spss(rdatafile[["RR"]],
    labels = c("" = )
)
attr(rdatafile[["RR"]], "label") <- "REGION"

rdatafile[["DD"]] <- haven::labelled_spss(rdatafile[["DD"]],
    labels = c("Bagerhat" = 1,
               "Barguna" = 4,
               "Barisal" = 6,
               "Bhola" = 9,
               "Bogra" = 10,
               "Brahamanbaria" = 12,
               "Chandpur" = 13,
               "Chittagong" = 15,
               "Chuadanga" = 18,
               "Comilla" = 19,
               "Cox'S Bazar" = 22,
               "Dhaka" = 26,
               "Dinajpur" = 27,
               "Faridpur" = 29,
               "Feni" = 30,
               "Gaibandha" = 32,
               "Gazipur" = 33,
               "Rajbari" = 34,
               "Gopalganj" = 35,
               "Habiganj" = 36,
               "Joypurhat" = 38,
               "Jamalpur" = 39,
               "Jessore" = 41,
               "Jhalokati" = 42,
               "Jhenaidah" = 44,
               "Khagrachhari" = 46,
               "Khulna" = 47,
               "Kishoreganj" = 48,
               "Kurigram" = 49,
               "Kushtia" = 50,
               "Lakshmipur" = 51,
               "Lalmonirhat" = 52,
               "Madaripur" = 54,
               "Magura" = 55,
               "Manikganj" = 56,
               "Meherpur" = 57,
               "Maulvibazar" = 58,
               "Munshiganj" = 59,
               "Mymensingh" = 61,
               "Naogaon" = 64,
               "Narail" = 65,
               "Narayanganj" = 67,
               "Narsingdi" = 68,
               "Natore" = 69,
               "Nawabganj" = 70,
               "Netrakona" = 72,
               "Nilphamari" = 73,
               "Noakhali" = 75,
               "Pabna" = 76,
               "Panchagarh" = 77,
               "Patuakhali" = 78,
               "Pirojpur" = 79,
               "Rajshahi" = 81,
               "Rajbari" = 82,
               "Rangamati" = 84,
               "Rangpur" = 85,
               "Shariatpur" = 86,
               "Satkhira" = 87,
               "Sirajganj" = 88,
               "Sherpur" = 89,
               "Sunamganj" = 90,
               "Sylhet" = 91,
               "Tangail" = 93,
               "Thakurgaon" = 94)
)
attr(rdatafile[["DD"]], "label") <- "DISTRICT"

rdatafile[["TT"]] <- haven::labelled_spss(rdatafile[["TT"]],
    labels = c("" = )
)
attr(rdatafile[["TT"]], "label") <- "THANA"

attr(rdatafile[["HHID"]], "label") <- "LHHID"

attr(rdatafile[["UW"]], "label") <- "UNION/WARD"

rdatafile[["MA"]] <- haven::labelled_spss(rdatafile[["MA"]],
    labels = c("" = )
)
attr(rdatafile[["MA"]], "label") <- "MAUZA"

rdatafile[["UR"]] <- haven::labelled_spss(rdatafile[["UR"]],
    labels = c("" = )
)
attr(rdatafile[["UR"]], "label") <- "RMO"

attr(rdatafile[["HHH"]], "label") <- "HHID"

rdatafile[["S341COL1"]] <- haven::labelled_spss(rdatafile[["S341COL1"]],
    labels = c("Bicycle" = 56,
               "Tyre/Tube/Spare parts (bicycle)" = 57,
               "Car/Motorcycle" = 58,
               "Car insurance and driving license" = 59,
               "Tyre/Tube (car/motorcycle)" = 60,
               "Spare parts (car/motorcycle)" = 61,
               "Servicing and cleaning charge" = 62,
               "Boat/carts (bought/repair)" = 63,
               "Other communication and travel/transport expense" = 64,
               "Servant/maidservant/guard salary" = 65,
               "Expenses for safekeeping of hh articles" = 66,
               "Legal expenses (except trade and industry)" = 67,
               "Marriage expenses" = 68,
               "Birth anniversary expenses" = 69,
               "Last rite expenses" = 70,
               "Religious work expenses (except Zakat fatra)" = 71,
               "Recreation and travelling expenses" = 72)
)
attr(rdatafile[["S341COL1"]], "label") <- "COL1 : Code Number"

attr(rdatafile[["S343COL2"]], "label") <- "COL2 : Value (In Taka)"

rdatafile[["MM"]] <- haven::labelled_spss(rdatafile[["MM"]],
    labels = c("" = )
)
attr(rdatafile[["MM"]], "label") <- "MONTH"

rdatafile[["RR"]] <- haven::labelled_spss(rdatafile[["RR"]],
    labels = c("" = )
)
attr(rdatafile[["RR"]], "label") <- "REGION"

rdatafile[["DD"]] <- haven::labelled_spss(rdatafile[["DD"]],
    labels = c("Bagerhat" = 1,
               "Barguna" = 4,
               "Barisal" = 6,
               "Bhola" = 9,
               "Bogra" = 10,
               "Brahamanbaria" = 12,
               "Chandpur" = 13,
               "Chittagong" = 15,
               "Chuadanga" = 18,
               "Comilla" = 19,
               "Cox'S Bazar" = 22,
               "Dhaka" = 26,
               "Dinajpur" = 27,
               "Faridpur" = 29,
               "Feni" = 30,
               "Gaibandha" = 32,
               "Gazipur" = 33,
               "Rajbari" = 34,
               "Gopalganj" = 35,
               "Habiganj" = 36,
               "Joypurhat" = 38,
               "Jamalpur" = 39,
               "Jessore" = 41,
               "Jhalokati" = 42,
               "Jhenaidah" = 44,
               "Khagrachhari" = 46,
               "Khulna" = 47,
               "Kishoreganj" = 48,
               "Kurigram" = 49,
               "Kushtia" = 50,
               "Lakshmipur" = 51,
               "Lalmonirhat" = 52,
               "Madaripur" = 54,
               "Magura" = 55,
               "Manikganj" = 56,
               "Meherpur" = 57,
               "Maulvibazar" = 58,
               "Munshiganj" = 59,
               "Mymensingh" = 61,
               "Naogaon" = 64,
               "Narail" = 65,
               "Narayanganj" = 67,
               "Narsingdi" = 68,
               "Natore" = 69,
               "Nawabganj" = 70,
               "Netrakona" = 72,
               "Nilphamari" = 73,
               "Noakhali" = 75,
               "Pabna" = 76,
               "Panchagarh" = 77,
               "Patuakhali" = 78,
               "Pirojpur" = 79,
               "Rajshahi" = 81,
               "Rajbari" = 82,
               "Rangamati" = 84,
               "Rangpur" = 85,
               "Shariatpur" = 86,
               "Satkhira" = 87,
               "Sirajganj" = 88,
               "Sherpur" = 89,
               "Sunamganj" = 90,
               "Sylhet" = 91,
               "Tangail" = 93,
               "Thakurgaon" = 94)
)
attr(rdatafile[["DD"]], "label") <- "DISTRICT"

rdatafile[["TT"]] <- haven::labelled_spss(rdatafile[["TT"]],
    labels = c("" = )
)
attr(rdatafile[["TT"]], "label") <- "THANA"

attr(rdatafile[["HHID"]], "label") <- "LHHID"

rdatafile[["UW"]] <- haven::labelled_spss(rdatafile[["UW"]],
    labels = c("" = )
)
attr(rdatafile[["UW"]], "label") <- "UNION/WARD"

attr(rdatafile[["MA"]], "label") <- "MAUZA"

rdatafile[["UR"]] <- haven::labelled_spss(rdatafile[["UR"]],
    labels = c("" = )
)
attr(rdatafile[["UR"]], "label") <- "RMO"

attr(rdatafile[["HHH"]], "label") <- "HHID"

attr(rdatafile[["S371COL4"]], "label") <- "COL4 : Member Serial No. of 2nd"

attr(rdatafile[["S371COL5"]], "label") <- "COL5 : Member Serial No. of 3rd"

attr(rdatafile[["S371COL6"]], "label") <- "COL6 : Member Serial No. of 4th"

attr(rdatafile[["S371COL7"]], "label") <- "COL7 : Member Serial No. of 5th"

attr(rdatafile[["S371COL8"]], "label") <- "COL8 : Member Serial No. of 6th"

attr(rdatafile[["S371COL9"]], "label") <- "COL9 : Member Serial No. of 7th"

rdatafile[["MM"]] <- haven::labelled_spss(rdatafile[["MM"]],
    labels = c("" = )
)
attr(rdatafile[["MM"]], "label") <- "MONTH"

rdatafile[["RR"]] <- haven::labelled_spss(rdatafile[["RR"]],
    labels = c("" = )
)
attr(rdatafile[["RR"]], "label") <- "REGION"

rdatafile[["DD"]] <- haven::labelled_spss(rdatafile[["DD"]],
    labels = c("Bagerhat" = 1,
               "Barguna" = 4,
               "Barisal" = 6,
               "Bhola" = 9,
               "Bogra" = 10,
               "Brahamanbaria" = 12,
               "Chandpur" = 13,
               "Chittagong" = 15,
               "Chuadanga" = 18,
               "Comilla" = 19,
               "Cox'S Bazar" = 22,
               "Dhaka" = 26,
               "Dinajpur" = 27,
               "Faridpur" = 29,
               "Feni" = 30,
               "Gaibandha" = 32,
               "Gazipur" = 33,
               "Rajbari" = 34,
               "Gopalganj" = 35,
               "Habiganj" = 36,
               "Joypurhat" = 38,
               "Jamalpur" = 39,
               "Jessore" = 41,
               "Jhalokati" = 42,
               "Jhenaidah" = 44,
               "Khagrachhari" = 46,
               "Khulna" = 47,
               "Kishoreganj" = 48,
               "Kurigram" = 49,
               "Kushtia" = 50,
               "Lakshmipur" = 51,
               "Lalmonirhat" = 52,
               "Madaripur" = 54,
               "Magura" = 55,
               "Manikganj" = 56,
               "Meherpur" = 57,
               "Maulvibazar" = 58,
               "Munshiganj" = 59,
               "Mymensingh" = 61,
               "Naogaon" = 64,
               "Narail" = 65,
               "Narayanganj" = 67,
               "Narsingdi" = 68,
               "Natore" = 69,
               "Nawabganj" = 70,
               "Netrakona" = 72,
               "Nilphamari" = 73,
               "Noakhali" = 75,
               "Pabna" = 76,
               "Panchagarh" = 77,
               "Patuakhali" = 78,
               "Pirojpur" = 79,
               "Rajshahi" = 81,
               "Rajbari" = 82,
               "Rangamati" = 84,
               "Rangpur" = 85,
               "Shariatpur" = 86,
               "Satkhira" = 87,
               "Sirajganj" = 88,
               "Sherpur" = 89,
               "Sunamganj" = 90,
               "Sylhet" = 91,
               "Tangail" = 93,
               "Thakurgaon" = 94)
)
attr(rdatafile[["DD"]], "label") <- "DISTRICT"

rdatafile[["TT"]] <- haven::labelled_spss(rdatafile[["TT"]],
    labels = c("" = )
)
attr(rdatafile[["TT"]], "label") <- "THANA"

attr(rdatafile[["HHID"]], "label") <- "LHHID"

rdatafile[["UW"]] <- haven::labelled_spss(rdatafile[["UW"]],
    labels = c("" = )
)
attr(rdatafile[["UW"]], "label") <- "UNION/WARD"

attr(rdatafile[["MA"]], "label") <- "MAUZA"

rdatafile[["UR"]] <- haven::labelled_spss(rdatafile[["UR"]],
    labels = c("" = )
)
attr(rdatafile[["UR"]], "label") <- "RMO"

attr(rdatafile[["HHH"]], "label") <- "HHID"

rdatafile[["S372COL1"]] <- haven::labelled_spss(rdatafile[["S372COL1"]],
    labels = c("Regular employment, agriculture - cash" = 1,
               "Regular employment, agriculture - kind" = 2,
               "Regular employment, non-agriculture - cash" = 3,
               "Regular employment, non-agriculture - kind" = 4,
               "Irregular/seasonal, agriculture - cash" = 5,
               "Irregular/seasonal, agriculture - kind" = 6,
               "Irregular/seasonal, non-agriculture - cash" = 7,
               "Irregular/seasonal, non-agriculture - kind" = 8,
               "Retirement allowance" = 9,
               "Professional remuneration" = 10,
               "Income from agriculture" = 11,
               "Earnings from trading/industrial organization" = 12,
               "Festival/Bonus" = 13,
               "Other secondary income" = 14,
               "Retail & wholesale business" = 15,
               "Cottage/Household industry" = 16,
               "Industrial/productive organization" = 17,
               "Service" = 18,
               "Comunications and storage" = 19,
               "Construction" = 20,
               "Other income" = 21,
               "Land and property rent" = 22,
               "Income from social and insured" = 23,
               "Interest received" = 24,
               "Profit sharing" = 25,
               "Lottery/Similar income, cash charity gift, royalty help zakat" = 26,
               "Fitra" = 27,
               "Remittance from relatives" = 28,
               "Annual imputed income" = 29,
               "Homemade goods consumed" = 30,
               "Rent of owner-occupied house" = 31,
               "Rent of rent-free house" = 32,
               "Other imputed income" = 33,
               "Charity, tribute/royalty, help Zakat and gift goods" = 34,
               "Articles sent by relatives" = 35,
               "Sale of property or assets" = 36,
               "Sale of cows/buffalo" = 37,
               "Sale of goats/sheep" = 38,
               "Sale of poultry and other gifts" = 39,
               "Withdrawal from working capital" = 40,
               "Withdrawal from savings fund" = 41,
               "Receipt of loaned money" = 42,
               "Loan taken" = 43,
               "Gratuity and provident fund receipt" = 44,
               "Other savings" = 45,
               "Property purchase" = 46,
               "Savings, NGO/Society" = 47,
               "Savings, bank" = 48,
               "Savings, cash/others" = 49,
               "Puchase, cows/buffalo" = 50,
               "Purchase, goats/sheep" = 51,
               "Purchase, ducks" = 52,
               "Installment of G.P. fund" = 53,
               "Installment of life insurance" = 54,
               "Investment" = 55,
               "Loan repayment" = 56)
)
attr(rdatafile[["S372COL1"]], "label") <- "COL1 : Code Number"

attr(rdatafile[["S372COL3"]], "label") <- "COL3 : Income (TK.) H/H head"

attr(rdatafile[["S372COL4"]], "label") <- "COL4 : Income (TK.) 2st Earner"

attr(rdatafile[["S372COL5"]], "label") <- "COL5 : Income (TK.) 3rd Earner"

attr(rdatafile[["S372COL6"]], "label") <- "COL6 : Income (TK.) 4th Earner"

attr(rdatafile[["S372COL7"]], "label") <- "COL7 : Income (TK.) 5th Earner"

attr(rdatafile[["S372COL8"]], "label") <- "COL8 : Income (TK.) 6th Earner"

attr(rdatafile[["S372COL9"]], "label") <- "COL9 : Income (TK.) 7th Earner"

attr(rdatafile[["S372COLB"]], "label") <- "COL10: Total  (TK.) Col. 3-9"

attr(rdatafile[["PSUID"]], "label") <- "PSUID"

attr(rdatafile[["S01_I00"]], "label") <- "Village name"

attr(rdatafile[["S01_I01"]], "label") <- "Number HES HH"

attr(rdatafile[["S01_I11"]], "label") <- "1.1    Total Number of Households"

attr(rdatafile[["S01_I12"]], "label") <- "1.2    Total Population of Villlage"

attr(rdatafile[["S01_I2"]], "label") <- "2      Total Area of the Village"

attr(rdatafile[["S01_I131"]], "label") <- "3.1  % of Community Islam"

attr(rdatafile[["S01_I132"]], "label") <- "3.2  % of Community Hindu"

attr(rdatafile[["S01_I133"]], "label") <- "3.3  % of Community Buddhist"

attr(rdatafile[["S01_I134"]], "label") <- "3.4  % of Community Christian"

attr(rdatafile[["S01_I135"]], "label") <- "3.5  % of Community Others"

rdatafile[["S01_I141"]] <- haven::labelled_spss(rdatafile[["S01_I141"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S01_I141"]], "label") <- "4.1  Is U.P Chairman from Village"

rdatafile[["S01_I42"]] <- haven::labelled_spss(rdatafile[["S01_I42"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S01_I42"]], "label") <- "4.2  Is U.P Member   from Village"

rdatafile[["S01_I43"]] <- haven::labelled_spss(rdatafile[["S01_I43"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S01_I43"]], "label") <- "4.3  Is U.P Secretary from Village"

rdatafile[["S01_I51"]] <- haven::labelled_spss(rdatafile[["S01_I51"]],
    labels = c("Crops" = 11,
               "Forestry" = 12,
               "Livestock" = 13,
               "Fisheries" = 14,
               "Poultry" = 15,
               "Mining & Quarrying" = 20,
               "Industy/Mills" = 30,
               "Electricity/Gas" = 40,
               "Housing/Road construction" = 50,
               "Business/Hotel/Restaurant" = 60,
               "Transport" = 70,
               "Finance/Real estate/Financial services" = 80,
               "Social/Personal services" = 90)
)
attr(rdatafile[["S01_I51"]], "label") <- "5.1    Main Economic activities"

rdatafile[["S01_I52"]] <- haven::labelled_spss(rdatafile[["S01_I52"]],
    labels = c("Crops" = 11,
               "Forestry" = 12,
               "Livestock" = 13,
               "Fisheries" = 14,
               "Poultry" = 15,
               "Mining & Quarrying" = 20,
               "Industy/Mills" = 30,
               "Electricity/Gas" = 40,
               "Housing/Road construction" = 50,
               "Business/Hotel/Restaurant" = 60,
               "Transport" = 70,
               "Finance/Real estate/Financial services" = 80,
               "Social/Personal services" = 90)
)
attr(rdatafile[["S01_I52"]], "label") <- "5.2    Main Economic activities"

rdatafile[["S01_I53"]] <- haven::labelled_spss(rdatafile[["S01_I53"]],
    labels = c("Crops" = 11,
               "Forestry" = 12,
               "Livestock" = 13,
               "Fisheries" = 14,
               "Poultry" = 15,
               "Mining & Quarrying" = 20,
               "Industy/Mills" = 30,
               "Electricity/Gas" = 40,
               "Housing/Road construction" = 50,
               "Business/Hotel/Restaurant" = 60,
               "Transport" = 70,
               "Finance/Real estate/Financial services" = 80,
               "Social/Personal services" = 90)
)
attr(rdatafile[["S01_I53"]], "label") <- "5.3    Main Economic activities"

rdatafile[["S01_I54"]] <- haven::labelled_spss(rdatafile[["S01_I54"]],
    labels = c("Crops" = 11,
               "Forestry" = 12,
               "Livestock" = 13,
               "Fisheries" = 14,
               "Poultry" = 15,
               "Mining & Quarrying" = 20,
               "Industy/Mills" = 30,
               "Electricity/Gas" = 40,
               "Housing/Road construction" = 50,
               "Business/Hotel/Restaurant" = 60,
               "Transport" = 70,
               "Finance/Real estate/Financial services" = 80,
               "Social/Personal services" = 90)
)
attr(rdatafile[["S01_I54"]], "label") <- "5.4    Main Economic activities"

rdatafile[["S01_I55"]] <- haven::labelled_spss(rdatafile[["S01_I55"]],
    labels = c("Crops" = 11,
               "Forestry" = 12,
               "Livestock" = 13,
               "Fisheries" = 14,
               "Poultry" = 15,
               "Mining & Quarrying" = 20,
               "Industy/Mills" = 30,
               "Electricity/Gas" = 40,
               "Housing/Road construction" = 50,
               "Business/Hotel/Restaurant" = 60,
               "Transport" = 70,
               "Finance/Real estate/Financial services" = 80,
               "Social/Personal services" = 90)
)
attr(rdatafile[["S01_I55"]], "label") <- "5.5    Main Economic activities"

attr(rdatafile[["PSUID"]], "label") <- "PSUID"

attr(rdatafile[["S02_06A"]], "label") <- "No of hh: Landless"

attr(rdatafile[["S02_06B"]], "label") <- "No of hh: Marginal"

attr(rdatafile[["S02_06C"]], "label") <- "No of hh: Small"

attr(rdatafile[["S02_06D"]], "label") <- "No of hh: Medium"

attr(rdatafile[["S02_06E"]], "label") <- "No of hh: Large"

attr(rdatafile[["S02_07A"]], "label") <- "Cultivated land, Boro"

attr(rdatafile[["S02_07B"]], "label") <- "Cultivated land, Aman"

attr(rdatafile[["S02_08A1"]], "label") <- "8. Percent of tenancy: owner does not share - Boro"

attr(rdatafile[["S02_08A2"]], "label") <- "8. Percent of tenancy: owner does not share - Boro landowner"

attr(rdatafile[["S02_08A3"]], "label") <- "8. Percent of tenancy: owner does not share - Aman"

attr(rdatafile[["S02_08A4"]], "label") <- "8. Percent of tenancy: owner does not share Aman landowner"

attr(rdatafile[["S02_08B1"]], "label") <- "8. Percent of tenancy: owner shares - Boro"

attr(rdatafile[["S02_08B2"]], "label") <- "8. Percent of tenancy: owner shares - Boro landowner"

attr(rdatafile[["S02_08B3"]], "label") <- "8. Percent of tenancy: owner shares - Aman"

attr(rdatafile[["S02_08B4"]], "label") <- "8. Percent of tenancy: owner shares - Aman landowner"

attr(rdatafile[["S02_08C1"]], "label") <- "8. Percent of tenancy: Lease money - Boro"

attr(rdatafile[["S02_08C2"]], "label") <- "8. Percent of tenancy: Lease money - Aman"

attr(rdatafile[["S02_08D1"]], "label") <- "8. Percent of tenancy: Lease paddy - Boro"

attr(rdatafile[["S02_08D2"]], "label") <- "8. Percent of tenancy: Lease paddy - Aman"

attr(rdatafile[["S02_09A1"]], "label") <- "9. Lease amount of money - Boro"

attr(rdatafile[["S02_09A2"]], "label") <- "9. Lease amount of money - Aman"

attr(rdatafile[["S02_09B1"]], "label") <- "9. Lease amount of paddy - Boro"

attr(rdatafile[["S02_09B2"]], "label") <- "9. Lease amount of paddy - Aman"

attr(rdatafile[["S02_10A"]], "label") <- "10. % cultiv. Land:    One crop"

attr(rdatafile[["S02_10B"]], "label") <- "10. % cultiv. Land:    Two crops"

attr(rdatafile[["S02_10C"]], "label") <- "10. % cultiv. Land:    Three crops"

rdatafile[["S02_11A1"]] <- haven::labelled_spss(rdatafile[["S02_11A1"]],
    labels = c("Fine variety paddy" = 1,
               "Coarse variety paddy" = 2,
               "Masur" = 3,
               "Moong" = 4,
               "Khesari" = 5,
               "Mustard" = 6,
               "Onion" = 7,
               "Potatoes" = 8,
               "Sugarcane" = 9,
               "Tobacco" = 10,
               "Dry chilis" = 11,
               "Betel leaf" = 12,
               "Betel nut" = 13,
               "Fodder" = 14,
               "Others" = 15)
)
attr(rdatafile[["S02_11A1"]], "label") <- "11. Name 3 most imp crops grown - 1"

attr(rdatafile[["S02_11A2"]], "label") <- "Mnd 1"

rdatafile[["S02_11B1"]] <- haven::labelled_spss(rdatafile[["S02_11B1"]],
    labels = c("Fine variety paddy" = 1,
               "Coarse variety paddy" = 2,
               "Masur" = 3,
               "Moong" = 4,
               "Khesari" = 5,
               "Mustard" = 6,
               "Onion" = 7,
               "Potatoes" = 8,
               "Sugarcane" = 9,
               "Tobacco" = 10,
               "Dry chilis" = 11,
               "Betel leaf" = 12,
               "Betel nut" = 13,
               "Fodder" = 14,
               "Others" = 15)
)
attr(rdatafile[["S02_11B1"]], "label") <- "11. Name 3 most imp crops grown - 2"

attr(rdatafile[["S02_11B2"]], "label") <- "Mnd 2"

rdatafile[["S02_11C1"]] <- haven::labelled_spss(rdatafile[["S02_11C1"]],
    labels = c("Fine variety paddy" = 1,
               "Coarse variety paddy" = 2,
               "Masur" = 3,
               "Moong" = 4,
               "Khesari" = 5,
               "Mustard" = 6,
               "Onion" = 7,
               "Potatoes" = 8,
               "Sugarcane" = 9,
               "Tobacco" = 10,
               "Dry chilis" = 11,
               "Betel leaf" = 12,
               "Betel nut" = 13,
               "Fodder" = 14,
               "Others" = 15)
)
attr(rdatafile[["S02_11C1"]], "label") <- "11. Name 3 most imp crops grown - 3"

attr(rdatafile[["S02_11C2"]], "label") <- "Mnd 3"

attr(rdatafile[["S02_12A1"]], "label") <- "12. What percent  of cult is irrigated"

attr(rdatafile[["S02_12A2"]], "label") <- "12. What percent  of cult is irrigated- 5 Years Ago"

attr(rdatafile[["S02_13A1"]], "label") <- "1. Shallow Tube-well"

attr(rdatafile[["S02_13A2"]], "label") <- "1. Shallow Tube-well - cost"

attr(rdatafile[["S02_13B1"]], "label") <- "2. Deep Tube-well"

attr(rdatafile[["S02_13B2"]], "label") <- "2. Deep Tube-well - cost"

attr(rdatafile[["S02_13C1"]], "label") <- "3. Low Lift Pump"

attr(rdatafile[["S02_13C2"]], "label") <- "3. Low Lift Pump - cost"

attr(rdatafile[["S02_13D1"]], "label") <- "4. Gravity Irrigation"

attr(rdatafile[["S02_13D2"]], "label") <- "4. Gravity Irrigation - cost"

attr(rdatafile[["S02_13E1"]], "label") <- "5. Other Loacl Means"

attr(rdatafile[["S02_13E2"]], "label") <- "5. Other Loacl Means - cost"

attr(rdatafile[["PSUID"]], "label") <- "PSUID"

rdatafile[["S03_14A"]] <- haven::labelled_spss(rdatafile[["S03_14A"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S03_14A"]], "label") <- "1. Poultry Farm"

rdatafile[["S03_14B"]] <- haven::labelled_spss(rdatafile[["S03_14B"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S03_14B"]], "label") <- "2. Commercial Dairy/Livestock"

rdatafile[["S03_14C"]] <- haven::labelled_spss(rdatafile[["S03_14C"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S03_14C"]], "label") <- "3. Fish Hatchery"

rdatafile[["S03_14D"]] <- haven::labelled_spss(rdatafile[["S03_14D"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S03_14D"]], "label") <- "4. Plant Nursery"

rdatafile[["S03_14E"]] <- haven::labelled_spss(rdatafile[["S03_14E"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S03_14E"]], "label") <- "5. Commercial Fish Farm (high yielding)"

attr(rdatafile[["S03_15"]], "label") <- "15. Dist.Vill to Near. Trans"

attr(rdatafile[["S03_16A"]], "label") <- "16. Distance from Vill.to Thana"

attr(rdatafile[["S03_16B"]], "label") <- "16. Distance from Vill.to  Dist."

attr(rdatafile[["S03_16C"]], "label") <- "16. Distance from Vill.to Dhaka"

rdatafile[["S03_17"]] <- haven::labelled_spss(rdatafile[["S03_17"]],
    labels = c("Paved Metalled" = 1,
               "Paved Bricks" = 2,
               "Not Paved" = 3)
)
attr(rdatafile[["S03_17"]], "label") <- "17. What type of road"

attr(rdatafile[["S03_18A1"]], "label") <- "In Dry Season - Time to Thana"

attr(rdatafile[["S03_18A2"]], "label") <- "In Dry Season - Time to District"

attr(rdatafile[["S03_18A3"]], "label") <- "In Dry Season - Time to Dhaka"

attr(rdatafile[["S03_18B1"]], "label") <- "In Dry Season - Cost to Thana"

attr(rdatafile[["S03_18B2"]], "label") <- "In Dry Season - Cost to District"

attr(rdatafile[["S03_18B3"]], "label") <- "In Dry Season - Cost to Dhaka"

rdatafile[["S03_18C1"]] <- haven::labelled_spss(rdatafile[["S03_18C1"]],
    labels = c("Cart" = 1,
               "Rickshaw/Van" = 2,
               "Baby taxi/Tempo" = 3,
               "Bus" = 4,
               "Truck/Trolley" = 5,
               "Train" = 6,
               "Launch/Steamer" = 7,
               "Country Boat" = 8,
               "Other transport" = 9)
)
attr(rdatafile[["S03_18C1"]], "label") <- "In Dry Season - transport to Thana"

rdatafile[["S03_18C2"]] <- haven::labelled_spss(rdatafile[["S03_18C2"]],
    labels = c("Cart" = 1,
               "Rickshaw/Van" = 2,
               "Baby taxi/Tempo" = 3,
               "Bus" = 4,
               "Truck/Trolley" = 5,
               "Train" = 6,
               "Launch/Steamer" = 7,
               "Country Boat" = 8,
               "Other transport" = 9)
)
attr(rdatafile[["S03_18C2"]], "label") <- "In Dry Season - transport to District"

rdatafile[["S03_18C3"]] <- haven::labelled_spss(rdatafile[["S03_18C3"]],
    labels = c("Cart" = 1,
               "Rickshaw/Van" = 2,
               "Baby taxi/Tempo" = 3,
               "Bus" = 4,
               "Truck/Trolley" = 5,
               "Train" = 6,
               "Launch/Steamer" = 7,
               "Country Boat" = 8,
               "Other transport" = 9)
)
attr(rdatafile[["S03_18C3"]], "label") <- "In Dry Season - transport to Dhaka"

attr(rdatafile[["S03_18D1"]], "label") <- "In Rainy Season - Time to Thana"

attr(rdatafile[["S03_18D2"]], "label") <- "In Rainy Season - Time to District"

attr(rdatafile[["S03_18D3"]], "label") <- "In Rainy Season - Time to Dhaka"

attr(rdatafile[["S03_18E1"]], "label") <- "In Rainy Season - Cost to Thana"

attr(rdatafile[["S03_18E2"]], "label") <- "In Rainy Season - Cost to District"

attr(rdatafile[["S03_18E3"]], "label") <- "In Rainy Season - Cost to Dhaka"

rdatafile[["S03_18F1"]] <- haven::labelled_spss(rdatafile[["S03_18F1"]],
    labels = c("Cart" = 1,
               "Rickshaw/Van" = 2,
               "Baby taxi/Tempo" = 3,
               "Bus" = 4,
               "Truck/Trolley" = 5,
               "Train" = 6,
               "Launch/Steamer" = 7,
               "Country Boat" = 8,
               "Other transport" = 9)
)
attr(rdatafile[["S03_18F1"]], "label") <- "In Rainy Season - Transport to Thana"

rdatafile[["S03_18F2"]] <- haven::labelled_spss(rdatafile[["S03_18F2"]],
    labels = c("Cart" = 1,
               "Rickshaw/Van" = 2,
               "Baby taxi/Tempo" = 3,
               "Bus" = 4,
               "Truck/Trolley" = 5,
               "Train" = 6,
               "Launch/Steamer" = 7,
               "Country Boat" = 8,
               "Other transport" = 9)
)
attr(rdatafile[["S03_18F2"]], "label") <- "In Rainy Season - Transport to District"

rdatafile[["S03_18F3"]] <- haven::labelled_spss(rdatafile[["S03_18F3"]],
    labels = c("Cart" = 1,
               "Rickshaw/Van" = 2,
               "Baby taxi/Tempo" = 3,
               "Bus" = 4,
               "Truck/Trolley" = 5,
               "Train" = 6,
               "Launch/Steamer" = 7,
               "Country Boat" = 8,
               "Other transport" = 9)
)
attr(rdatafile[["S03_18F3"]], "label") <- "In Rainy Season - Transport to Dhaka"

rdatafile[["S03_19A"]] <- haven::labelled_spss(rdatafile[["S03_19A"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S03_19A"]], "label") <- "19A. Is the Village Electrified"

rdatafile[["S03_19B1"]] <- haven::labelled_spss(rdatafile[["S03_19B1"]],
    labels = c("" = )
)
attr(rdatafile[["S03_19B1"]], "label") <- "19B. If yes, since which Year"

attr(rdatafile[["S03_19B2"]], "label") <- "# Domestic  Use"

attr(rdatafile[["S03_19B3"]], "label") <- "# Commercial Use"

attr(rdatafile[["S03_20"]], "label") <- "20. Percent of households with electricity"

attr(rdatafile[["PSUID"]], "label") <- "PSUID"

rdatafile[["S04_21A"]] <- haven::labelled_spss(rdatafile[["S04_21A"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S04_21A"]], "label") <- "21A. Is there any telephone"

attr(rdatafile[["S04_21B"]], "label") <- "21B. If no, what is the distance to nearest"

rdatafile[["S04_22A"]] <- haven::labelled_spss(rdatafile[["S04_22A"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S04_22A"]], "label") <- "22A. Do any house have natural gas"

rdatafile[["S04_22B1"]] <- haven::labelled_spss(rdatafile[["S04_22B1"]],
    labels = c("" = )
)
attr(rdatafile[["S04_22B1"]], "label") <- "B. If yes, since which year"

attr(rdatafile[["S04_22B2"]], "label") <- "Percent of hh with gas connection"

rdatafile[["S04_23A1"]] <- haven::labelled_spss(rdatafile[["S04_23A1"]],
    labels = c("Piped to house" = 1,
               "Shared Tap" = 2,
               "Tube-well" = 3,
               "Surface well" = 4,
               "Tank/Pond" = 5,
               "Canal" = 6,
               "River" = 7,
               "Others" = 8)
)
attr(rdatafile[["S04_23A1"]], "label") <- "Source of water - First Code"

attr(rdatafile[["S04_23A2"]], "label") <- "Source of water - First percent"

rdatafile[["S04_23B1"]] <- haven::labelled_spss(rdatafile[["S04_23B1"]],
    labels = c("Piped to house" = 1,
               "Shared Tap" = 2,
               "Tube-well" = 3,
               "Surface well" = 4,
               "Tank/Pond" = 5,
               "Canal" = 6,
               "River" = 7,
               "Others" = 8,
               "Others" = 9)
)
attr(rdatafile[["S04_23B1"]], "label") <- "Source of water - Second Code"

attr(rdatafile[["S04_23B2"]], "label") <- "Source of water - Second percent"

rdatafile[["S04_23C1"]] <- haven::labelled_spss(rdatafile[["S04_23C1"]],
    labels = c("Piped to house" = 1,
               "Shared Tap" = 2,
               "Tube-well" = 3,
               "Surface well" = 4,
               "Tank/Pond" = 5,
               "Canal" = 6,
               "River" = 7,
               "Others" = 8)
)
attr(rdatafile[["S04_23C1"]], "label") <- "Source of water - Third  Code"

attr(rdatafile[["S04_23C2"]], "label") <- "Source of water - Third percent"

attr(rdatafile[["S04_24A"]], "label") <- "Latrine with septic Tank"

attr(rdatafile[["S04_24B"]], "label") <- "Pit latrine with water seal"

attr(rdatafile[["S04_24C"]], "label") <- "Pit latrine without water seal"

attr(rdatafile[["S04_24D"]], "label") <- "Hang latrine"

attr(rdatafile[["S04_24E"]], "label") <- "Open field"

attr(rdatafile[["PSUID"]], "label") <- "PSUID"

attr(rdatafile[["S05_25A1"]], "label") <- "Govt. Hospital 01 - Distance"

attr(rdatafile[["S05_25A2"]], "label") <- "Govt. Hospital 01 - hours"

attr(rdatafile[["S05_25A3"]], "label") <- "Govt. Hospital 01 - mins"

attr(rdatafile[["S05_25B1"]], "label") <- "Rural Health Centre 02 - Distance"

attr(rdatafile[["S05_25B2"]], "label") <- "Rural Health Centre 02 - hours"

attr(rdatafile[["S05_25B3"]], "label") <- "Rural Health Centre 02 - mins"

attr(rdatafile[["S05_25C1"]], "label") <- "Satellite Clinic 03 - Distance"

attr(rdatafile[["S05_25C2"]], "label") <- "Satellite Clinic 03 - hours"

attr(rdatafile[["S05_25C3"]], "label") <- "Satellite Clinic 03 - mins"

attr(rdatafile[["S05_25D1"]], "label") <- "Family Planing Centre 04 - Distance"

attr(rdatafile[["S05_25D2"]], "label") <- "Family Planing Centre 04 - hours"

attr(rdatafile[["S05_25D3"]], "label") <- "Family Planing Centre 04 - mins"

attr(rdatafile[["S05_25E1"]], "label") <- "Private Hospital 05 - Distance"

attr(rdatafile[["S05_25E2"]], "label") <- "Private Hospital 05 - hours"

attr(rdatafile[["S05_25E3"]], "label") <- "Private Hospital 05 - mins"

attr(rdatafile[["S05_25F1"]], "label") <- "Private Clinic 06 - Distance"

attr(rdatafile[["S05_25F2"]], "label") <- "Private Clinic 06 - hours"

attr(rdatafile[["S05_25F3"]], "label") <- "Private Clinic 06 - mins"

attr(rdatafile[["S05_25G1"]], "label") <- "Private Doctor 07 - Distance"

attr(rdatafile[["S05_25G2"]], "label") <- "Private Doctor 07 - hours"

attr(rdatafile[["S05_25G3"]], "label") <- "Private Doctor 07 - mins"

attr(rdatafile[["S05_25H1"]], "label") <- "Pharmacy 08 - Distance"

attr(rdatafile[["S05_25H2"]], "label") <- "Pharmacy 08 - hours"

attr(rdatafile[["S05_25H3"]], "label") <- "Pharmacy 08 - mins"

attr(rdatafile[["S05_25I1"]], "label") <- "Immunization Centre 09 - Distance"

attr(rdatafile[["S05_25I2"]], "label") <- "Immunization Centre 09 - hours"

attr(rdatafile[["S05_25I3"]], "label") <- "Immunization Centre 09 - mins"

attr(rdatafile[["S05_25J1"]], "label") <- "NGO Primary Health Cnt 10 - Distance"

attr(rdatafile[["S05_25J2"]], "label") <- "NGO Primary Health Cnt 10 - hours"

attr(rdatafile[["S05_25J3"]], "label") <- "NGO Primary Health Cnt 10 - mins"

attr(rdatafile[["S05_25K1"]], "label") <- "Maternal & Chilh Health11 - Distance"

attr(rdatafile[["S05_25K2"]], "label") <- "Maternal & Chilh Health11 - hours"

attr(rdatafile[["S05_25K3"]], "label") <- "Maternal & Chilh Health11 - mins"

rdatafile[["S05_26A"]] <- haven::labelled_spss(rdatafile[["S05_26A"]],
    labels = c("Govt. Hospital" = 1,
               "Rural Health Care" = 2,
               "Satellite clinic" = 3,
               "Family Planning clinic" = 4,
               "Private Hospital" = 5,
               "Private Clinic" = 6,
               "Private Doctor" = 7,
               "Pharmacy" = 8,
               "Immunization Centre" = 9,
               "NGO Primary Health Care Centre" = 10,
               "Maternity & Child Health Centre" = 11,
               "Trained Midwife" = 12,
               "Other Midwife" = 13,
               "Self treatment" = 14,
               "Village Doctor" = 15,
               "None" = 16)
)
attr(rdatafile[["S05_26A"]], "label") <- "1. Minor Illness"

rdatafile[["S05_26B"]] <- haven::labelled_spss(rdatafile[["S05_26B"]],
    labels = c("Govt. Hospital" = 1,
               "Rural Health Care" = 2,
               "Satellite clinic" = 3,
               "Family Planning clinic" = 4,
               "Private Hospital" = 5,
               "Private Clinic" = 6,
               "Private Doctor" = 7,
               "Pharmacy" = 8,
               "Immunization Centre" = 9,
               "NGO Primary Health Care Centre" = 10,
               "Maternity & Child Health Centre" = 11,
               "Trained Midwife" = 12,
               "Other Midwife" = 13,
               "Self treatment" = 14,
               "Village Doctor" = 15,
               "None" = 16)
)
attr(rdatafile[["S05_26B"]], "label") <- "2. Major Illness"

rdatafile[["S05_26C"]] <- haven::labelled_spss(rdatafile[["S05_26C"]],
    labels = c("Govt. Hospital" = 1,
               "Rural Health Care" = 2,
               "Satellite clinic" = 3,
               "Family Planning clinic" = 4,
               "Private Hospital" = 5,
               "Private Clinic" = 6,
               "Private Doctor" = 7,
               "Pharmacy" = 8,
               "Immunization Centre" = 9,
               "NGO Primary Health Care Centre" = 10,
               "Maternity & Child Health Centre" = 11,
               "Trained Midwife" = 12,
               "Other Midwife" = 13,
               "Self treatment" = 14,
               "Village Doctor" = 15,
               "None" = 16)
)
attr(rdatafile[["S05_26C"]], "label") <- "3. Emergency Care"

rdatafile[["S05_26D"]] <- haven::labelled_spss(rdatafile[["S05_26D"]],
    labels = c("Govt. Hospital" = 1,
               "Rural Health Care" = 2,
               "Satellite clinic" = 3,
               "Family Planning clinic" = 4,
               "Private Hospital" = 5,
               "Private Clinic" = 6,
               "Private Doctor" = 7,
               "Pharmacy" = 8,
               "Immunization Centre" = 9,
               "NGO Primary Health Care Centre" = 10,
               "Maternity & Child Health Centre" = 11,
               "Trained Midwife" = 12,
               "Other Midwife" = 13,
               "Self treatment" = 14,
               "Village Doctor" = 15,
               "None" = 16)
)
attr(rdatafile[["S05_26D"]], "label") <- "4. Family Planning"

rdatafile[["S05_26E"]] <- haven::labelled_spss(rdatafile[["S05_26E"]],
    labels = c("Govt. Hospital" = 1,
               "Rural Health Care" = 2,
               "Satellite clinic" = 3,
               "Family Planning clinic" = 4,
               "Private Hospital" = 5,
               "Private Clinic" = 6,
               "Private Doctor" = 7,
               "Pharmacy" = 8,
               "Immunization Centre" = 9,
               "NGO Primary Health Care Centre" = 10,
               "Maternity & Child Health Centre" = 11,
               "Trained Midwife" = 12,
               "Other Midwife" = 13,
               "Self treatment" = 14,
               "Village Doctor" = 15,
               "None" = 16)
)
attr(rdatafile[["S05_26E"]], "label") <- "5. Ante natal care"

rdatafile[["S05_26F"]] <- haven::labelled_spss(rdatafile[["S05_26F"]],
    labels = c("Govt. Hospital" = 1,
               "Rural Health Care" = 2,
               "Satellite clinic" = 3,
               "Family Planning clinic" = 4,
               "Private Hospital" = 5,
               "Private Clinic" = 6,
               "Private Doctor" = 7,
               "Pharmacy" = 8,
               "Immunization Centre" = 9,
               "NGO Primary Health Care Centre" = 10,
               "Maternity & Child Health Centre" = 11,
               "Trained Midwife" = 12,
               "Other Midwife" = 13,
               "Self treatment" = 14,
               "Village Doctor" = 15,
               "None" = 16)
)
attr(rdatafile[["S05_26F"]], "label") <- "6. Delivery of Baby"

rdatafile[["S05_26G"]] <- haven::labelled_spss(rdatafile[["S05_26G"]],
    labels = c("Govt. Hospital" = 1,
               "Rural Health Care" = 2,
               "Satellite clinic" = 3,
               "Family Planning clinic" = 4,
               "Private Hospital" = 5,
               "Private Clinic" = 6,
               "Private Doctor" = 7,
               "Pharmacy" = 8,
               "Immunization Centre" = 9,
               "NGO Primary Health Care Centre" = 10,
               "Maternity & Child Health Centre" = 11,
               "Trained Midwife" = 12,
               "Other Midwife" = 13,
               "Self treatment" = 14,
               "Village Doctor" = 15,
               "None" = 16)
)
attr(rdatafile[["S05_26G"]], "label") <- "7. Immunization"

rdatafile[["S05_27A1"]] <- haven::labelled_spss(rdatafile[["S05_27A1"]],
    labels = c("Poor quality of service" = 1,
               "Lack of courtesy/help" = 2,
               "Too expensive" = 3,
               "Absence of doctor" = 4,
               "Lack of medicine" = 5,
               "Long queues/excessive waiting" = 6,
               "Too far" = 7,
               "Others" = 8,
               "No complaints" = 9)
)
attr(rdatafile[["S05_27A1"]], "label") <- "27. MajorComplaint - Govt"

rdatafile[["S05_27A2"]] <- haven::labelled_spss(rdatafile[["S05_27A2"]],
    labels = c("Poor quality of service" = 1,
               "Lack of courtesy/help" = 2,
               "Too expensive" = 3,
               "Absence of doctor" = 4,
               "Lack of medicine" = 5,
               "Long queues/excessive waiting" = 6,
               "Too far" = 7,
               "Others" = 8,
               "No complaints" = 9)
)
attr(rdatafile[["S05_27A2"]], "label") <- "27. MajorComplaint - Private"

rdatafile[["S05_27A3"]] <- haven::labelled_spss(rdatafile[["S05_27A3"]],
    labels = c("Poor quality of service" = 1,
               "Lack of courtesy/help" = 2,
               "Too expensive" = 3,
               "Absence of doctor" = 4,
               "Lack of medicine" = 5,
               "Long queues/excessive waiting" = 6,
               "Too far" = 7,
               "Others" = 8,
               "No complaints" = 9)
)
attr(rdatafile[["S05_27A3"]], "label") <- "27. MajorComplaint -  NGO"

rdatafile[["S05_27B1"]] <- haven::labelled_spss(rdatafile[["S05_27B1"]],
    labels = c("Poor quality of service" = 1,
               "Lack of courtesy/help" = 2,
               "Too expensive" = 3,
               "Absence of doctor" = 4,
               "Lack of medicine" = 5,
               "Long queues/excessive waiting" = 6,
               "Too far" = 7,
               "Others" = 8,
               "No complaints" = 9)
)
attr(rdatafile[["S05_27B1"]], "label") <- "Secondary Complaint - Govt"

rdatafile[["S05_27B2"]] <- haven::labelled_spss(rdatafile[["S05_27B2"]],
    labels = c("Poor quality of service" = 1,
               "Lack of courtesy/help" = 2,
               "Too expensive" = 3,
               "Absence of doctor" = 4,
               "Lack of medicine" = 5,
               "Long queues/excessive waiting" = 6,
               "Too far" = 7,
               "Others" = 8,
               "No complaints" = 9)
)
attr(rdatafile[["S05_27B2"]], "label") <- "Secondary Complaint - Private"

rdatafile[["S05_27B3"]] <- haven::labelled_spss(rdatafile[["S05_27B3"]],
    labels = c("Poor quality of service" = 1,
               "Lack of courtesy/help" = 2,
               "Too expensive" = 3,
               "Absence of doctor" = 4,
               "Lack of medicine" = 5,
               "Long queues/excessive waiting" = 6,
               "Too far" = 7,
               "Others" = 8,
               "No complaints" = 9)
)
attr(rdatafile[["S05_27B3"]], "label") <- "Secondary Complaint - NGO"

attr(rdatafile[["PSUID"]], "label") <- "PSUID"

attr(rdatafile[["S06_28A"]], "label") <- "01 Primary School Girls"

attr(rdatafile[["S06_28B"]], "label") <- "02 Primary School Boys"

attr(rdatafile[["S06_28C"]], "label") <- "03 Primary School Co-ed"

attr(rdatafile[["S06_28D"]], "label") <- "04 Secondary Schl Girls"

attr(rdatafile[["S06_28E"]], "label") <- "05 Secondary Schl Boys"

attr(rdatafile[["S06_28F"]], "label") <- "06 Secondary Schl Co-Ed"

attr(rdatafile[["S06_28G"]], "label") <- "07 College Girls Only"

attr(rdatafile[["S06_28H"]], "label") <- "08 College Boys Only"

attr(rdatafile[["S06_28I"]], "label") <- "09 College Co-Education"

attr(rdatafile[["S06_28J"]], "label") <- "10 Madrasha"

attr(rdatafile[["S06_28K"]], "label") <- "11 Adult Literacy Centre"

attr(rdatafile[["S06_28L"]], "label") <- "12 Other (technical/vocational)"

rdatafile[["S06_29A3"]] <- haven::labelled_spss(rdatafile[["S06_29A3"]],
    labels = c("Govt" = 1,
               "Govt aided" = 2,
               "Private" = 3,
               "NGO" = 4)
)
attr(rdatafile[["S06_29A3"]], "label") <- "01 Type"

rdatafile[["S06_29A4"]] <- haven::labelled_spss(rdatafile[["S06_29A4"]],
    labels = c("Boys" = 1,
               "Girls" = 2,
               "Coeducational" = 3)
)
attr(rdatafile[["S06_29A4"]], "label") <- "01 for..."

rdatafile[["S06_29A5"]] <- haven::labelled_spss(rdatafile[["S06_29A5"]],
    labels = c("Class I" = 1,
               "Class II" = 2,
               "Class III" = 3,
               "Class IV" = 4,
               "Class V" = 5,
               "Class VI" = 6,
               "Class VII" = 7,
               "Class VIII" = 8,
               "Class IX" = 9,
               "S.S.C" = 10)
)
attr(rdatafile[["S06_29A5"]], "label") <- "01 Highest class"

rdatafile[["S06_29A6"]] <- haven::labelled_spss(rdatafile[["S06_29A6"]],
    labels = c("Class I" = 1,
               "Class II" = 2,
               "Class III" = 3,
               "Class IV" = 4,
               "Class V" = 5,
               "Class VI" = 6,
               "Class VII" = 7,
               "Class VIII" = 8,
               "Class IX" = 9,
               "S.S.C" = 10)
)
attr(rdatafile[["S06_29A6"]], "label") <- "01 Lowest class"

attr(rdatafile[["S06_29A7"]], "label") <- "01 Number of students"

attr(rdatafile[["S06_29A8"]], "label") <- "01 Shifts"

rdatafile[["S06_29A9"]] <- haven::labelled_spss(rdatafile[["S06_29A9"]],
    labels = c("" = )
)
attr(rdatafile[["S06_29A9"]], "label") <- "01 Year established"

attr(rdatafile[["S0629A10"]], "label") <- "01 Teaching hours"

attr(rdatafile[["S0629A11"]], "label") <- "01 Weeks closed"

rdatafile[["S06_29B3"]] <- haven::labelled_spss(rdatafile[["S06_29B3"]],
    labels = c("Govt" = 1,
               "Govt aided" = 2,
               "Private" = 3,
               "NGO" = 4)
)
attr(rdatafile[["S06_29B3"]], "label") <- "02 Type"

rdatafile[["S06_29B4"]] <- haven::labelled_spss(rdatafile[["S06_29B4"]],
    labels = c("Boys" = 1,
               "Girls" = 2,
               "Coeducational" = 3)
)
attr(rdatafile[["S06_29B4"]], "label") <- "02 for..."

rdatafile[["S06_29B5"]] <- haven::labelled_spss(rdatafile[["S06_29B5"]],
    labels = c("Class I" = 1,
               "Class II" = 2,
               "Class III" = 3,
               "Class IV" = 4,
               "Class V" = 5,
               "Class VI" = 6,
               "Class VII" = 7,
               "Class VIII" = 8,
               "Class IX" = 9,
               "S.S.C" = 10)
)
attr(rdatafile[["S06_29B5"]], "label") <- "02 Highest class"

rdatafile[["S06_29B6"]] <- haven::labelled_spss(rdatafile[["S06_29B6"]],
    labels = c("Class I" = 1,
               "Class II" = 2,
               "Class III" = 3,
               "Class IV" = 4,
               "Class V" = 5,
               "Class VI" = 6,
               "Class VII" = 7,
               "Class VIII" = 8,
               "Class IX" = 9,
               "S.S.C" = 10)
)
attr(rdatafile[["S06_29B6"]], "label") <- "02 Lowest class"

attr(rdatafile[["S06_29B7"]], "label") <- "02 Number of students"

attr(rdatafile[["S06_29B8"]], "label") <- "02 Shifts"

rdatafile[["S06_29B9"]] <- haven::labelled_spss(rdatafile[["S06_29B9"]],
    labels = c("" = )
)
attr(rdatafile[["S06_29B9"]], "label") <- "02 Year established"

attr(rdatafile[["S0629B10"]], "label") <- "02 Teaching hours"

attr(rdatafile[["S0629B11"]], "label") <- "02 Weeks closed"

rdatafile[["S06_29C3"]] <- haven::labelled_spss(rdatafile[["S06_29C3"]],
    labels = c("Govt" = 1,
               "Govt aided" = 2,
               "Private" = 3,
               "NGO" = 4)
)
attr(rdatafile[["S06_29C3"]], "label") <- "03 Type"

rdatafile[["S06_29C4"]] <- haven::labelled_spss(rdatafile[["S06_29C4"]],
    labels = c("Boys" = 1,
               "Girls" = 2,
               "Coeducational" = 3)
)
attr(rdatafile[["S06_29C4"]], "label") <- "03 for..."

rdatafile[["S06_29C5"]] <- haven::labelled_spss(rdatafile[["S06_29C5"]],
    labels = c("Class I" = 1,
               "Class II" = 2,
               "Class III" = 3,
               "Class IV" = 4,
               "Class V" = 5,
               "Class VI" = 6,
               "Class VII" = 7,
               "Class VIII" = 8,
               "Class IX" = 9,
               "S.S.C" = 10)
)
attr(rdatafile[["S06_29C5"]], "label") <- "03 Highest class"

rdatafile[["S06_29C6"]] <- haven::labelled_spss(rdatafile[["S06_29C6"]],
    labels = c("Class I" = 1,
               "Class II" = 2,
               "Class III" = 3,
               "Class IV" = 4,
               "Class V" = 5,
               "Class VI" = 6,
               "Class VII" = 7,
               "Class VIII" = 8,
               "Class IX" = 9,
               "S.S.C" = 10)
)
attr(rdatafile[["S06_29C6"]], "label") <- "03 Lowest class"

attr(rdatafile[["S06_29C7"]], "label") <- "03 Number of students"

attr(rdatafile[["S06_29C8"]], "label") <- "03 Shifts"

rdatafile[["S06_29C9"]] <- haven::labelled_spss(rdatafile[["S06_29C9"]],
    labels = c("" = )
)
attr(rdatafile[["S06_29C9"]], "label") <- "03 Year established"

attr(rdatafile[["S0629C10"]], "label") <- "03 Teaching hours"

attr(rdatafile[["S0629C11"]], "label") <- "03 Weeks closed"

rdatafile[["S06_29D3"]] <- haven::labelled_spss(rdatafile[["S06_29D3"]],
    labels = c("Govt" = 1,
               "Govt aided" = 2,
               "Private" = 3,
               "NGO" = 4)
)
attr(rdatafile[["S06_29D3"]], "label") <- "04 Type"

rdatafile[["S06_29D4"]] <- haven::labelled_spss(rdatafile[["S06_29D4"]],
    labels = c("Boys" = 1,
               "Girls" = 2,
               "Coeducational" = 3)
)
attr(rdatafile[["S06_29D4"]], "label") <- "04 for..."

rdatafile[["S06_29D5"]] <- haven::labelled_spss(rdatafile[["S06_29D5"]],
    labels = c("Class I" = 1,
               "Class II" = 2,
               "Class III" = 3,
               "Class IV" = 4,
               "Class V" = 5,
               "Class VI" = 6,
               "Class VII" = 7,
               "Class VIII" = 8,
               "Class IX" = 9,
               "S.S.C" = 10)
)
attr(rdatafile[["S06_29D5"]], "label") <- "04 Highest class"

rdatafile[["S06_29D6"]] <- haven::labelled_spss(rdatafile[["S06_29D6"]],
    labels = c("Class I" = 1,
               "Class II" = 2,
               "Class III" = 3,
               "Class IV" = 4,
               "Class V" = 5,
               "Class VI" = 6,
               "Class VII" = 7,
               "Class VIII" = 8,
               "Class IX" = 9,
               "S.S.C" = 10)
)
attr(rdatafile[["S06_29D6"]], "label") <- "04 Lowest class"

attr(rdatafile[["S06_29D7"]], "label") <- "04 Number of students"

attr(rdatafile[["S06_29D8"]], "label") <- "04 Shifts"

rdatafile[["S06_29D9"]] <- haven::labelled_spss(rdatafile[["S06_29D9"]],
    labels = c("" = )
)
attr(rdatafile[["S06_29D9"]], "label") <- "04 Year established"

attr(rdatafile[["S0629D10"]], "label") <- "04 Teaching hours"

attr(rdatafile[["S0629D11"]], "label") <- "04 Weeks closed"

rdatafile[["S06_29E3"]] <- haven::labelled_spss(rdatafile[["S06_29E3"]],
    labels = c("Govt" = 1,
               "Govt aided" = 2,
               "Private" = 3,
               "NGO" = 4)
)
attr(rdatafile[["S06_29E3"]], "label") <- "05 Type"

rdatafile[["S06_29E4"]] <- haven::labelled_spss(rdatafile[["S06_29E4"]],
    labels = c("Boys" = 1,
               "Girls" = 2,
               "Coeducational" = 3)
)
attr(rdatafile[["S06_29E4"]], "label") <- "05 for..."

rdatafile[["S06_29E5"]] <- haven::labelled_spss(rdatafile[["S06_29E5"]],
    labels = c("Class I" = 1,
               "Class II" = 2,
               "Class III" = 3,
               "Class IV" = 4,
               "Class V" = 5,
               "Class VI" = 6,
               "Class VII" = 7,
               "Class VIII" = 8,
               "Class IX" = 9,
               "S.S.C" = 10)
)
attr(rdatafile[["S06_29E5"]], "label") <- "05 Highest class"

rdatafile[["S06_29E6"]] <- haven::labelled_spss(rdatafile[["S06_29E6"]],
    labels = c("Class I" = 1,
               "Class II" = 2,
               "Class III" = 3,
               "Class IV" = 4,
               "Class V" = 5,
               "Class VI" = 6,
               "Class VII" = 7,
               "Class VIII" = 8,
               "Class IX" = 9,
               "S.S.C" = 10)
)
attr(rdatafile[["S06_29E6"]], "label") <- "05 Lowest class"

attr(rdatafile[["S06_29E7"]], "label") <- "05 Number of students"

attr(rdatafile[["S06_29E8"]], "label") <- "05 Shifts"

rdatafile[["S06_29E9"]] <- haven::labelled_spss(rdatafile[["S06_29E9"]],
    labels = c("" = )
)
attr(rdatafile[["S06_29E9"]], "label") <- "05 Year established"

attr(rdatafile[["S0629E10"]], "label") <- "05 Teaching hours"

attr(rdatafile[["S0629E11"]], "label") <- "05 Weeks closed"

rdatafile[["S06_30A1"]] <- haven::labelled_spss(rdatafile[["S06_30A1"]],
    labels = c("Not enough institutions, up to primary level" = 1,
               "Not enough institutions, post-primary level" = 2,
               "Not enough girls-only institutions, up to primary level" = 3,
               "Not enough girls-only institutions, post-primary level" = 4,
               "Difficulty in admission/enrolment" = 5,
               "Poor quality of teaching" = 6,
               "Insufficient teaching staff" = 7,
               "Too few women teachers" = 8,
               "Poor infrastructure at schools" = 9,
               "Too expensive" = 10,
               "Too far" = 11,
               "Very high failure/repetition rate" = 12,
               "Schools closed too often" = 13,
               "No complaints" = 14,
               "Others" = 15)
)
attr(rdatafile[["S06_30A1"]], "label") <- "Major complaint - Govt/Govt-aided"

rdatafile[["S06_30A2"]] <- haven::labelled_spss(rdatafile[["S06_30A2"]],
    labels = c("Not enough institutions, up to primary level" = 1,
               "Not enough institutions, post-primary level" = 2,
               "Not enough girls-only institutions, up to primary level" = 3,
               "Not enough girls-only institutions, post-primary level" = 4,
               "Difficulty in admission/enrolment" = 5,
               "Poor quality of teaching" = 6,
               "Insufficient teaching staff" = 7,
               "Too few women teachers" = 8,
               "Poor infrastructure at schools" = 9,
               "Too expensive" = 10,
               "Too far" = 11,
               "Very high failure/repetition rate" = 12,
               "Schools closed too often" = 13,
               "No complaints" = 14,
               "Others" = 15)
)
attr(rdatafile[["S06_30A2"]], "label") <- "Major complaint - Private"

rdatafile[["S06_30A3"]] <- haven::labelled_spss(rdatafile[["S06_30A3"]],
    labels = c("Not enough institutions, up to primary level" = 1,
               "Not enough institutions, post-primary level" = 2,
               "Not enough girls-only institutions, up to primary level" = 3,
               "Not enough girls-only institutions, post-primary level" = 4,
               "Difficulty in admission/enrolment" = 5,
               "Poor quality of teaching" = 6,
               "Insufficient teaching staff" = 7,
               "Too few women teachers" = 8,
               "Poor infrastructure at schools" = 9,
               "Too expensive" = 10,
               "Too far" = 11,
               "Very high failure/repetition rate" = 12,
               "Schools closed too often" = 13,
               "No complaints" = 14,
               "Others" = 15)
)
attr(rdatafile[["S06_30A3"]], "label") <- "Major complaint - NGO"

rdatafile[["S06_30B1"]] <- haven::labelled_spss(rdatafile[["S06_30B1"]],
    labels = c("Not enough institutions, up to primary level" = 1,
               "Not enough institutions, post-primary level" = 2,
               "Not enough girls-only institutions, up to primary level" = 3,
               "Not enough girls-only institutions, post-primary level" = 4,
               "Difficulty in admission/enrolment" = 5,
               "Poor quality of teaching" = 6,
               "Insufficient teaching staff" = 7,
               "Too few women teachers" = 8,
               "Poor infrastructure at schools" = 9,
               "Too expensive" = 10,
               "Too far" = 11,
               "Very high failure/repetition rate" = 12,
               "Schools closed too often" = 13,
               "No complaints" = 14,
               "Others" = 15)
)
attr(rdatafile[["S06_30B1"]], "label") <- "Secondary complaint - Govt/Govt-aided"

rdatafile[["S06_30B2"]] <- haven::labelled_spss(rdatafile[["S06_30B2"]],
    labels = c("Not enough institutions, up to primary level" = 1,
               "Not enough institutions, post-primary level" = 2,
               "Not enough girls-only institutions, up to primary level" = 3,
               "Not enough girls-only institutions, post-primary level" = 4,
               "Difficulty in admission/enrolment" = 5,
               "Poor quality of teaching" = 6,
               "Insufficient teaching staff" = 7,
               "Too few women teachers" = 8,
               "Poor infrastructure at schools" = 9,
               "Too expensive" = 10,
               "Too far" = 11,
               "Very high failure/repetition rate" = 12,
               "Schools closed too often" = 13,
               "No complaints" = 14,
               "Others" = 15)
)
attr(rdatafile[["S06_30B2"]], "label") <- "Secondary complaint - Private"

rdatafile[["S06_30B3"]] <- haven::labelled_spss(rdatafile[["S06_30B3"]],
    labels = c("Not enough institutions, up to primary level" = 1,
               "Not enough institutions, post-primary level" = 2,
               "Not enough girls-only institutions, up to primary level" = 3,
               "Not enough girls-only institutions, post-primary level" = 4,
               "Difficulty in admission/enrolment" = 5,
               "Poor quality of teaching" = 6,
               "Insufficient teaching staff" = 7,
               "Too few women teachers" = 8,
               "Poor infrastructure at schools" = 9,
               "Too expensive" = 10,
               "Too far" = 11,
               "Very high failure/repetition rate" = 12,
               "Schools closed too often" = 13,
               "No complaints" = 14,
               "Others" = 15)
)
attr(rdatafile[["S06_30B3"]], "label") <- "Secondary complaint - NGO"

attr(rdatafile[["PSUID"]], "label") <- "PSUID"

attr(rdatafile[["HH"]], "label") <- "Household"

rdatafile[["S07_311"]] <- haven::labelled_spss(rdatafile[["S07_311"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S07_311"]], "label") <- "01 Krishi  Bank - yes/no"

attr(rdatafile[["S07_312"]], "label") <- "01 Krishi  Bank - distance to nearest"

attr(rdatafile[["S07_313"]], "label") <- "01 Krishi  Bank - travel time hours"

attr(rdatafile[["S07_314"]], "label") <- "01 Krishi  Bank - travel time mins"

rdatafile[["S07_321"]] <- haven::labelled_spss(rdatafile[["S07_321"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S07_321"]], "label") <- "02 Commercial  Bank - yes/no"

attr(rdatafile[["S07_322"]], "label") <- "02 Commercial  Bank - - distance to nearest"

attr(rdatafile[["S07_323"]], "label") <- "02 Commercial  Bank - travel time hours"

attr(rdatafile[["S07_324"]], "label") <- "02 Commercial  Bank - travel time minutes"

rdatafile[["S07_331"]] <- haven::labelled_spss(rdatafile[["S07_331"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S07_331"]], "label") <- "03 Grameen Bank - yes/no"

attr(rdatafile[["S07_332"]], "label") <- "03 Grameen Bank - distance to nearest"

attr(rdatafile[["S07_333"]], "label") <- "03 Grameen Bank - travel time hours"

attr(rdatafile[["S07_334"]], "label") <- "03 Grameen Bank - travel time minutes"

rdatafile[["S07_341"]] <- haven::labelled_spss(rdatafile[["S07_341"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S07_341"]], "label") <- "04 Hat/Bazaar - yes/no"

attr(rdatafile[["S07_342"]], "label") <- "04 Hat/Bazaar- distance to nearest"

attr(rdatafile[["S07_343"]], "label") <- "04 Hat/Bazaar - travel time hours"

attr(rdatafile[["S07_344"]], "label") <- "04 Hat/Bazaar - travel time minutes"

rdatafile[["S07_351"]] <- haven::labelled_spss(rdatafile[["S07_351"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S07_351"]], "label") <- "05 Veterinary Doctor - yes/no"

attr(rdatafile[["S07_352"]], "label") <- "05 Veterinary Doctor- distance to nearest"

attr(rdatafile[["S07_353"]], "label") <- "05 Veterinary Doctor - travel time hours"

attr(rdatafile[["S07_354"]], "label") <- "05 Veterinary Doctor - travel time minutes"

rdatafile[["S07_361"]] <- haven::labelled_spss(rdatafile[["S07_361"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S07_361"]], "label") <- "06 Food Godown/Open Market - yes/no"

attr(rdatafile[["S07_362"]], "label") <- "06 Food Godown/Open Market - distance to nearest"

attr(rdatafile[["S07_363"]], "label") <- "06 Food Godown/Open Market - travel time hours"

attr(rdatafile[["S07_364"]], "label") <- "06 Food Godown/Open Market - travel time minutes"

rdatafile[["S07_371"]] <- haven::labelled_spss(rdatafile[["S07_371"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S07_371"]], "label") <- "07 Club (Recreation) - yes/no"

attr(rdatafile[["S07_372"]], "label") <- "07 Club (Recreation) - distance to nearest"

attr(rdatafile[["S07_373"]], "label") <- "07 Club (Recreation) - travel time hours"

attr(rdatafile[["S07_374"]], "label") <- "07 Club (Recreation) - travel time minutes"

rdatafile[["S07_381"]] <- haven::labelled_spss(rdatafile[["S07_381"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S07_381"]], "label") <- "08 Cinema Hall - yes/no"

attr(rdatafile[["S07_382"]], "label") <- "08 Cinema Hall - distance to nearest"

attr(rdatafile[["S07_383"]], "label") <- "08 Cinema Hall - travel time hours"

attr(rdatafile[["S07_384"]], "label") <- "08 Cinema Hall - travel time minutes"

rdatafile[["S07_391"]] <- haven::labelled_spss(rdatafile[["S07_391"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S07_391"]], "label") <- "09 Play Ground - yes/no"

attr(rdatafile[["S07_392"]], "label") <- "09 Play Ground - distance to nearest"

attr(rdatafile[["S07_393"]], "label") <- "09 Play Ground - travel time hours"

attr(rdatafile[["S07_394"]], "label") <- "09 Play Ground - travel time minutes"

rdatafile[["S07_3101"]] <- haven::labelled_spss(rdatafile[["S07_3101"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S07_3101"]], "label") <- "10 Community Centre - yes/no"

attr(rdatafile[["S07_3102"]], "label") <- "10 Community Centre - distance to nearest"

attr(rdatafile[["S07_3103"]], "label") <- "10 Community Centre - travel time hours"

attr(rdatafile[["S07_3104"]], "label") <- "10 Community Centre - travel time minutes"

rdatafile[["S07_3111"]] <- haven::labelled_spss(rdatafile[["S07_3111"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S07_3111"]], "label") <- "11 Cyclone Shelter - yes/no"

attr(rdatafile[["S07_3112"]], "label") <- "11 Cyclone Shelter - distance to nearest"

attr(rdatafile[["S07_3113"]], "label") <- "11 Cyclone Shelter - travel time hours"

attr(rdatafile[["S07_3114"]], "label") <- "11 Cyclone Shelter - travel time minutes"

rdatafile[["S07_3121"]] <- haven::labelled_spss(rdatafile[["S07_3121"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S07_3121"]], "label") <- "12 Post Office - yes/no"

attr(rdatafile[["S07_3122"]], "label") <- "12 Post Office - distance to nearest"

attr(rdatafile[["S07_3123"]], "label") <- "12 Post Office - travel time hours"

attr(rdatafile[["S07_3124"]], "label") <- "12 Post Office - travel time minutes"

rdatafile[["S07_3131"]] <- haven::labelled_spss(rdatafile[["S07_3131"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S07_3131"]], "label") <- "13 Police Station - yes/no"

attr(rdatafile[["S07_3132"]], "label") <- "13 Police Station - distance to nearest"

attr(rdatafile[["S07_3133"]], "label") <- "13 Police Station - travel time hours"

attr(rdatafile[["S07_3134"]], "label") <- "13 Police Station - travel time minutes"

rdatafile[["S07_3141"]] <- haven::labelled_spss(rdatafile[["S07_3141"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S07_3141"]], "label") <- "14 Fertilizer Depot - yes/no"

attr(rdatafile[["S07_3142"]], "label") <- "14 Fertilizer Depot - distance to nearest"

attr(rdatafile[["S07_3143"]], "label") <- "14 Fertilizer Depot - travel time hours"

attr(rdatafile[["S07_3144"]], "label") <- "14 Fertilizer Depot - travel time minutes"

rdatafile[["S07_32A"]] <- haven::labelled_spss(rdatafile[["S07_32A"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S07_32A"]], "label") <- "32. Are there television sets"

attr(rdatafile[["S07_32B"]], "label") <- "How many TV"

rdatafile[["S07_33A"]] <- haven::labelled_spss(rdatafile[["S07_33A"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S07_33A"]], "label") <- "33. Are there dish antenna sets"

attr(rdatafile[["S07_33B"]], "label") <- "How many TV sets connected"

rdatafile[["S07_3411"]] <- haven::labelled_spss(rdatafile[["S07_3411"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S07_3411"]], "label") <- "1. Food for Work"

attr(rdatafile[["S07_3412"]], "label") <- "1. Food for Work - how many"

rdatafile[["S07_3421"]] <- haven::labelled_spss(rdatafile[["S07_3421"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S07_3421"]], "label") <- "2. Food for Education"

attr(rdatafile[["S07_3422"]], "label") <- "2. Food for Education - how many"

rdatafile[["S07_3431"]] <- haven::labelled_spss(rdatafile[["S07_3431"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S07_3431"]], "label") <- "3. Vulnerable group development"

attr(rdatafile[["S07_3432"]], "label") <- "3. Vulnerable group development - how many"

rdatafile[["S07_3441"]] <- haven::labelled_spss(rdatafile[["S07_3441"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S07_3441"]], "label") <- "4. Farmers' Co-operative Society"

attr(rdatafile[["S07_3442"]], "label") <- "4. Farmers' Co-operative Society - how many"

rdatafile[["S07_3451"]] <- haven::labelled_spss(rdatafile[["S07_3451"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S07_3451"]], "label") <- "5. Poor C.Society (B.S.S.)"

attr(rdatafile[["S07_3452"]], "label") <- "5. Poor C.Society (B.S.S.) - how many"

rdatafile[["S07_3461"]] <- haven::labelled_spss(rdatafile[["S07_3461"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S07_3461"]], "label") <- "6. Special Bank Credit Scheme for livestock or fisheries"

attr(rdatafile[["S07_3462"]], "label") <- ". Special Bank Credit Scheme - how many"

rdatafile[["S07_3471"]] <- haven::labelled_spss(rdatafile[["S07_3471"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S07_3471"]], "label") <- "7. Adult Education"

attr(rdatafile[["S07_3472"]], "label") <- "7. Adult Education - how many"

rdatafile[["S07_3481"]] <- haven::labelled_spss(rdatafile[["S07_3481"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S07_3481"]], "label") <- "8. Other Govt. programme"

attr(rdatafile[["S07_3482"]], "label") <- "8. Other Govt. programme - how many"

attr(rdatafile[["PSUID"]], "label") <- "PSUID"

rdatafile[["S08_351"]] <- haven::labelled_spss(rdatafile[["S08_351"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S08_351"]], "label") <- "35. NGO Programme"

rdatafile[["S08_352"]] <- haven::labelled_spss(rdatafile[["S08_352"]],
    labels = c("Credit for small enterprise/trade" = 1,
               "Skills training" = 2,
               "Education" = 3,
               "Health/Family planning" = 4,
               "Tree plantation" = 5,
               "Water supply/Sanitation" = 6,
               "Others" = 7)
)
attr(rdatafile[["S08_352"]], "label") <- "1st Activity"

rdatafile[["S08_353"]] <- haven::labelled_spss(rdatafile[["S08_353"]],
    labels = c("Grammeen" = 1,
               "BRAC" = 2,
               "PROSHIKA" = 3,
               "CARITAS" = 4,
               "Others" = 5)
)
attr(rdatafile[["S08_353"]], "label") <- "1st NGO"

rdatafile[["S08_354"]] <- haven::labelled_spss(rdatafile[["S08_354"]],
    labels = c("Credit for small enterprise/trade" = 1,
               "Skills training" = 2,
               "Education" = 3,
               "Health/Family planning" = 4,
               "Tree plantation" = 5,
               "Water supply/Sanitation" = 6,
               "Others" = 7)
)
attr(rdatafile[["S08_354"]], "label") <- "2nd Activity"

rdatafile[["S08_355"]] <- haven::labelled_spss(rdatafile[["S08_355"]],
    labels = c("Grammeen" = 1,
               "BRAC" = 2,
               "PROSHIKA" = 3,
               "CARITAS" = 4,
               "Others" = 5)
)
attr(rdatafile[["S08_355"]], "label") <- "2nd NGO"

rdatafile[["S08_356"]] <- haven::labelled_spss(rdatafile[["S08_356"]],
    labels = c("Credit for small enterprise/trade" = 1,
               "Skills training" = 2,
               "Education" = 3,
               "Health/Family planning" = 4,
               "Tree plantation" = 5,
               "Water supply/Sanitation" = 6,
               "Others" = 7)
)
attr(rdatafile[["S08_356"]], "label") <- "3rd Activity"

rdatafile[["S08_357"]] <- haven::labelled_spss(rdatafile[["S08_357"]],
    labels = c("Grammeen" = 1,
               "BRAC" = 2,
               "PROSHIKA" = 3,
               "CARITAS" = 4,
               "Others" = 5)
)
attr(rdatafile[["S08_357"]], "label") <- "3rd NGO"

rdatafile[["S083601A"]] <- haven::labelled_spss(rdatafile[["S083601A"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S083601A"]], "label") <- "Coarse Variety Paddy    01"

attr(rdatafile[["S083601B"]], "label") <- "Maund 01"

rdatafile[["S083602A"]] <- haven::labelled_spss(rdatafile[["S083602A"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S083602A"]], "label") <- "Fine Variety Paddy      02"

attr(rdatafile[["S083602B"]], "label") <- "Maund 02"

rdatafile[["S083603A"]] <- haven::labelled_spss(rdatafile[["S083603A"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S083603A"]], "label") <- "Masur                   03"

attr(rdatafile[["S083603B"]], "label") <- "Kg 03"

rdatafile[["S083604A"]] <- haven::labelled_spss(rdatafile[["S083604A"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S083604A"]], "label") <- "Moong                   04"

attr(rdatafile[["S083604B"]], "label") <- "Kg 04"

rdatafile[["S083605A"]] <- haven::labelled_spss(rdatafile[["S083605A"]],
    labels = c("Yes" = "2",
               "No" = "Sysmiss")
)
attr(rdatafile[["S083605A"]], "label") <- "Khesari                 05"

attr(rdatafile[["S083605B"]], "label") <- "Kg 05"

rdatafile[["S083606A"]] <- haven::labelled_spss(rdatafile[["S083606A"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S083606A"]], "label") <- "Mustard                 06"

attr(rdatafile[["S083606B"]], "label") <- "Kg 06"

rdatafile[["S083607A"]] <- haven::labelled_spss(rdatafile[["S083607A"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S083607A"]], "label") <- "Onion                   07"

attr(rdatafile[["S083607B"]], "label") <- "Kg 07"

rdatafile[["S083608A"]] <- haven::labelled_spss(rdatafile[["S083608A"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S083608A"]], "label") <- "Potatoes                08"

attr(rdatafile[["S083608B"]], "label") <- "Kg 08"

rdatafile[["S083609A"]] <- haven::labelled_spss(rdatafile[["S083609A"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S083609A"]], "label") <- "Sugarcane               09"

attr(rdatafile[["S083609B"]], "label") <- "Kg 09"

rdatafile[["S083610A"]] <- haven::labelled_spss(rdatafile[["S083610A"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S083610A"]], "label") <- "Tobacco                 10"

attr(rdatafile[["S083610B"]], "label") <- "Kg 10"

rdatafile[["S083611A"]] <- haven::labelled_spss(rdatafile[["S083611A"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S083611A"]], "label") <- "Dry Chilies             11"

attr(rdatafile[["S083611B"]], "label") <- "Kg 11"

rdatafile[["S083612A"]] <- haven::labelled_spss(rdatafile[["S083612A"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S083612A"]], "label") <- "Betel Leaf              12"

attr(rdatafile[["S083612B"]], "label") <- "Kg 12"

rdatafile[["S083613A"]] <- haven::labelled_spss(rdatafile[["S083613A"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S083613A"]], "label") <- "Betel Nut               13"

attr(rdatafile[["S083613B"]], "label") <- "Kg 13"

rdatafile[["S083614A"]] <- haven::labelled_spss(rdatafile[["S083614A"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S083614A"]], "label") <- "Fodder                  14"

attr(rdatafile[["S083614B"]], "label") <- "Maund 14"

attr(rdatafile[["S08_371"]], "label") <- "37. Rice (coarse)"

attr(rdatafile[["S08_372"]], "label") <- "Potato"

attr(rdatafile[["S08_373"]], "label") <- "Atta"

attr(rdatafile[["S08_374"]], "label") <- "Masur Dal"

attr(rdatafile[["S08_375"]], "label") <- "Soya bean oil"

attr(rdatafile[["S08_376"]], "label") <- "Sugar"

attr(rdatafile[["S08_377"]], "label") <- "Gur"

attr(rdatafile[["S08_378"]], "label") <- "Salt"

attr(rdatafile[["S08_379"]], "label") <- "Onion"

attr(rdatafile[["S08_3710"]], "label") <- "Hilsa fish (Whole)"

attr(rdatafile[["S08_3711"]], "label") <- "Beef"

attr(rdatafile[["S08_3712"]], "label") <- "Kerosene (litre)"

attr(rdatafile[["S08_3713"]], "label") <- "Firewood (Maund)"

attr(rdatafile[["PSUID"]], "label") <- "PSUID"

attr(rdatafile[["S09_381"]], "label") <- "38. Rainfall Cultivated"

attr(rdatafile[["S09_382"]], "label") <- "38. Irrigated Cultivated"

attr(rdatafile[["S09_391A"]], "label") <- "1. Urea - Highest"

attr(rdatafile[["S09_391B"]], "label") <- "1. Urea - Lowest"

attr(rdatafile[["S09_391C"]], "label") <- "1. Urea - Normal"

attr(rdatafile[["S09_392A"]], "label") <- "2. M.P. - Highest"

attr(rdatafile[["S09_392B"]], "label") <- "2. M.P. - Lowest"

attr(rdatafile[["S09_392C"]], "label") <- "2. M.P. - Normal"

attr(rdatafile[["S09_393A"]], "label") <- "3. T.S.P. - Highest"

attr(rdatafile[["S09_393B"]], "label") <- "3. T.S.P. - Lowest"

attr(rdatafile[["S09_393C"]], "label") <- "3. T.S.P. - Normal"

attr(rdatafile[["S09_401A"]], "label") <- "During Peak Time - bullock"

attr(rdatafile[["S09_401B"]], "label") <- "During Peak Time - buffalo"

attr(rdatafile[["S09_401C"]], "label") <- "During Peak Time - power tiller/tractor"

attr(rdatafile[["S09_402A"]], "label") <- "During Normal Time - bullock"

attr(rdatafile[["S09_402B"]], "label") <- "During Normal Time - buffalo"

attr(rdatafile[["S09_402C"]], "label") <- "During Normal Time - power tiller/tractor"

attr(rdatafile[["S09_41A1"]], "label") <- "Female, peak season, with food"

attr(rdatafile[["S09_41A2"]], "label") <- "Female, peak season, without food"

attr(rdatafile[["S09_41A3"]], "label") <- "Female, peak season, hours"

attr(rdatafile[["S09_41A4"]], "label") <- "Female, slack season, with food"

attr(rdatafile[["S09_41A5"]], "label") <- "Female, slack season, without food"

attr(rdatafile[["S09_41A6"]], "label") <- "Female, slack season, hours"

attr(rdatafile[["S09_41B1"]], "label") <- "Male, peak season, with food"

attr(rdatafile[["S09_41B2"]], "label") <- "Male, peak season, without food"

attr(rdatafile[["S09_41B3"]], "label") <- "Male, peak season, hours"

attr(rdatafile[["S09_41B4"]], "label") <- "Male, slack season, with food"

attr(rdatafile[["S09_41B5"]], "label") <- "Male, slack season, without food"

attr(rdatafile[["S09_41B6"]], "label") <- "Male, slack season, hours"

rdatafile[["S09_421"]] <- haven::labelled_spss(rdatafile[["S09_421"]],
    labels = c("Casual daily wage labour" = 1,
               "Attached labour" = 2,
               "Piece-rated contract work" = 3,
               "Others" = 4)
)
attr(rdatafile[["S09_421"]], "label") <- "42. 1st Priority"

rdatafile[["S09_422"]] <- haven::labelled_spss(rdatafile[["S09_422"]],
    labels = c("Casual daily wage labour" = 1,
               "Attached labour" = 2,
               "Piece-rated contract work" = 3,
               "Others" = 4)
)
attr(rdatafile[["S09_422"]], "label") <- "2nd priority"

rdatafile[["S09_423"]] <- haven::labelled_spss(rdatafile[["S09_423"]],
    labels = c("Casual daily wage labour" = 1,
               "Attached labour" = 2,
               "Piece-rated contract work" = 3,
               "Others" = 4)
)
attr(rdatafile[["S09_423"]], "label") <- "3rd priority"

rdatafile[["S09_424"]] <- haven::labelled_spss(rdatafile[["S09_424"]],
    labels = c("Casual daily wage labour" = 1,
               "Attached labour" = 2,
               "Piece-rated contract work" = 3,
               "Others" = 4)
)
attr(rdatafile[["S09_424"]], "label") <- "4th priority"

rdatafile[["S09_43A1"]] <- haven::labelled_spss(rdatafile[["S09_43A1"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S09_43A1"]], "label") <- "43. Bill - y/n"

attr(rdatafile[["S09_43A2"]], "label") <- "Bill - Distance"

attr(rdatafile[["S09_43A3"]], "label") <- "Bill - Hours"

attr(rdatafile[["S09_43A4"]], "label") <- "Bill - Minutes"

rdatafile[["S09_43B1"]] <- haven::labelled_spss(rdatafile[["S09_43B1"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S09_43B1"]], "label") <- "Other open water - y/n"

attr(rdatafile[["S09_43B2"]], "label") <- "Other open water - distance"

attr(rdatafile[["S09_43B3"]], "label") <- "Other open water - hrs"

attr(rdatafile[["S09_43B4"]], "label") <- "Other open water - mins"

rdatafile[["S09_43C1"]] <- haven::labelled_spss(rdatafile[["S09_43C1"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S09_43C1"]], "label") <- "Forest - y/n"

attr(rdatafile[["S09_43C2"]], "label") <- "Forest - distance"

attr(rdatafile[["S09_43C3"]], "label") <- "Forest - hrs"

attr(rdatafile[["S09_43C4"]], "label") <- "Forest - mins"

rdatafile[["S09_43D1"]] <- haven::labelled_spss(rdatafile[["S09_43D1"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S09_43D1"]], "label") <- "Khas Land in char. - y/n"

attr(rdatafile[["S09_43D2"]], "label") <- "Khas Land in char. - distance"

attr(rdatafile[["S09_43D3"]], "label") <- "Khas Land in char. - hrs"

attr(rdatafile[["S09_43D4"]], "label") <- "Khas Land in char. - mins"

rdatafile[["S09_43E1"]] <- haven::labelled_spss(rdatafile[["S09_43E1"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S09_43E1"]], "label") <- "Other Khas Land - y/n"

attr(rdatafile[["S09_43E2"]], "label") <- "Other Khas Land - distance"

attr(rdatafile[["S09_43E3"]], "label") <- "Other Khas Land - hrs"

attr(rdatafile[["S09_43E4"]], "label") <- "Other Khas Land - mins"

rdatafile[["S09_43F1"]] <- haven::labelled_spss(rdatafile[["S09_43F1"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S09_43F1"]], "label") <- "Grazing Land - y/n"

attr(rdatafile[["S09_43F2"]], "label") <- "Grazing Land - distance"

attr(rdatafile[["S09_43F3"]], "label") <- "Grazing Land - hrs"

attr(rdatafile[["S09_43F4"]], "label") <- "Grazing Land - mins"

rdatafile[["PSUID"]] <- haven::labelled_spss(rdatafile[["PSUID"]],
    labels = c("" = )
)
attr(rdatafile[["PSUID"]], "label") <- "PSUID"

rdatafile[["S10_44A1"]] <- haven::labelled_spss(rdatafile[["S10_44A1"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S10_44A1"]], "label") <- "Flood last year"

attr(rdatafile[["S10_44A2"]], "label") <- "Flood no of times last 5 years"

rdatafile[["S10_44B1"]] <- haven::labelled_spss(rdatafile[["S10_44B1"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S10_44B1"]], "label") <- "Drought last year"

attr(rdatafile[["S10_44B2"]], "label") <- "Drought no of times last 5 years"

rdatafile[["S10_44C1"]] <- haven::labelled_spss(rdatafile[["S10_44C1"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S10_44C1"]], "label") <- "River erosion last year"

attr(rdatafile[["S10_44C2"]], "label") <- "River erosion no of times last 5 years"

rdatafile[["S10_44D1"]] <- haven::labelled_spss(rdatafile[["S10_44D1"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S10_44D1"]], "label") <- "Cyclone/Tornado/Hail Storm last year"

attr(rdatafile[["S10_44D2"]], "label") <- "Cyclone  no of times last 5 years"

rdatafile[["S10_44E1"]] <- haven::labelled_spss(rdatafile[["S10_44E1"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S10_44E1"]], "label") <- "Pest Attack last year"

attr(rdatafile[["S10_44E2"]], "label") <- "Pest attack  no of times last 5 years"

rdatafile[["S10_44F1"]] <- haven::labelled_spss(rdatafile[["S10_44F1"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S10_44F1"]], "label") <- "Poultry Plague last year"

attr(rdatafile[["S10_44F2"]], "label") <- "Poultry plague no of times last 5 years"

rdatafile[["S10_44G1"]] <- haven::labelled_spss(rdatafile[["S10_44G1"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S10_44G1"]], "label") <- "Epidemic Diseases last year"

attr(rdatafile[["S10_44G2"]], "label") <- "Epidemic diseases no of times last 5 years"

rdatafile[["S10_44H1"]] <- haven::labelled_spss(rdatafile[["S10_44H1"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S10_44H1"]], "label") <- "Other Calamities last year"

attr(rdatafile[["S10_44H2"]], "label") <- "Other calamities no of times last 5 years"

rdatafile[["S10_45"]] <- haven::labelled_spss(rdatafile[["S10_45"]],
    labels = c("Less than 10%" = 1,
               "10-25 %" = 2,
               "26-50 %" = 3,
               "50% +" = 4)
)
attr(rdatafile[["S10_45"]], "label") <- "45. extent of women economic activities"

rdatafile[["S10_46A"]] <- haven::labelled_spss(rdatafile[["S10_46A"]],
    labels = c("Poultry farm" = 1,
               "Livestock farm" = 2,
               "Pisciculture" = 3,
               "Bambo/cane work" = 4,
               "Mat making" = 5,
               "Pottery" = 6,
               "Looming" = 7,
               "Weaving" = 8,
               "Showpiece" = 9,
               "Other cottage industry" = 10,
               "Others" = 11)
)
attr(rdatafile[["S10_46A"]], "label") <- "46. Three Eco. Act. - 1st"

rdatafile[["S10_46B"]] <- haven::labelled_spss(rdatafile[["S10_46B"]],
    labels = c("Poultry farm" = 1,
               "Livestock farm" = 2,
               "Pisciculture" = 3,
               "Bambo/cane work" = 4,
               "Mat making" = 5,
               "Pottery" = 6,
               "Looming" = 7,
               "Weaving" = 8,
               "Showpiece" = 9,
               "Other cottage industry" = 10,
               "Others" = 11)
)
attr(rdatafile[["S10_46B"]], "label") <- "46. Three Eco. Act. - 2nd-"

rdatafile[["S10_46C"]] <- haven::labelled_spss(rdatafile[["S10_46C"]],
    labels = c("Poultry farm" = 1,
               "Livestock farm" = 2,
               "Pisciculture" = 3,
               "Bambo/cane work" = 4,
               "Mat making" = 5,
               "Pottery" = 6,
               "Looming" = 7,
               "Weaving" = 8,
               "Showpiece" = 9,
               "Other cottage industry" = 10,
               "Others" = 11)
)
attr(rdatafile[["S10_46C"]], "label") <- "46. Three Eco. Act. - 3rd-"

rdatafile[["S10_47"]] <- haven::labelled_spss(rdatafile[["S10_47"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S10_47"]], "label") <- "Work increased"

rdatafile[["S10_48A1"]] <- haven::labelled_spss(rdatafile[["S10_48A1"]],
    labels = c("In favour" = 1,
               "Strongly in favour" = 2,
               "Opinion divided" = 3,
               "Against" = 4,
               "Strongly against" = 5,
               "No opinion" = 6)
)
attr(rdatafile[["S10_48A1"]], "label") <- "Women's income earning activities - men"

rdatafile[["S10_48A2"]] <- haven::labelled_spss(rdatafile[["S10_48A2"]],
    labels = c("In favour" = 1)
)
attr(rdatafile[["S10_48A2"]], "label") <- "Women's income earning activities - women"

rdatafile[["S10_48B1"]] <- haven::labelled_spss(rdatafile[["S10_48B1"]],
    labels = c("In favour" = 1,
               "Strongly in favour" = 2,
               "Opinion divided" = 3,
               "Against" = 4,
               "Strongly against" = 5,
               "No opinion" = 6)
)
attr(rdatafile[["S10_48B1"]], "label") <- "Female education - men"

rdatafile[["S10_48B2"]] <- haven::labelled_spss(rdatafile[["S10_48B2"]],
    labels = c("In favour" = 1,
               "Strongly in favour" = 2,
               "Opinion divided" = 3,
               "Against" = 4,
               "Strongly against" = 5,
               "No opinion" = 6)
)
attr(rdatafile[["S10_48B2"]], "label") <- "Female education - women"

rdatafile[["S10_48C1"]] <- haven::labelled_spss(rdatafile[["S10_48C1"]],
    labels = c("In favour" = 1,
               "Strongly in favour" = 2,
               "Opinion divided" = 3,
               "Against" = 4,
               "Strongly against" = 5,
               "No opinion" = 6)
)
attr(rdatafile[["S10_48C1"]], "label") <- "Family planning - men"

rdatafile[["S10_48C2"]] <- haven::labelled_spss(rdatafile[["S10_48C2"]],
    labels = c("In favour" = 1,
               "Strongly in favour" = 2,
               "Opinion divided" = 3,
               "Against" = 4,
               "Strongly against" = 5,
               "No opinion" = 6)
)
attr(rdatafile[["S10_48C2"]], "label") <- "Family planning - women"

rdatafile[["RR"]] <- haven::labelled_spss(rdatafile[["RR"]],
    labels = c("" = )
)
attr(rdatafile[["RR"]], "label") <- "REGION"

rdatafile[["DD"]] <- haven::labelled_spss(rdatafile[["DD"]],
    labels = c("Bagerhat" = 1,
               "Barguna" = 4,
               "Barisal" = 6,
               "Bhola" = 9,
               "Bogra" = 10,
               "Brahamanbaria" = 12,
               "Chandpur" = 13,
               "Chittagong" = 15,
               "Chuadanga" = 18,
               "Comilla" = 19,
               "Cox'S Bazar" = 22,
               "Dhaka" = 26,
               "Dinajpur" = 27,
               "Faridpur" = 29,
               "Feni" = 30,
               "Gaibandha" = 32,
               "Gazipur" = 33,
               "Rajbari" = 34,
               "Gopalganj" = 35,
               "Habiganj" = 36,
               "Joypurhat" = 38,
               "Jamalpur" = 39,
               "Jessore" = 41,
               "Jhalokati" = 42,
               "Jhenaidah" = 44,
               "Khagrachhari" = 46,
               "Khulna" = 47,
               "Kishoreganj" = 48,
               "Kurigram" = 49,
               "Kushtia" = 50,
               "Lakshmipur" = 51,
               "Lalmonirhat" = 52,
               "Madaripur" = 54,
               "Magura" = 55,
               "Manikganj" = 56,
               "Meherpur" = 57,
               "Maulvibazar" = 58,
               "Munshiganj" = 59,
               "Mymensingh" = 61,
               "Naogaon" = 64,
               "Narail" = 65,
               "Narayanganj" = 67,
               "Narsingdi" = 68,
               "Natore" = 69,
               "Nawabganj" = 70,
               "Netrakona" = 72,
               "Nilphamari" = 73,
               "Noakhali" = 75,
               "Pabna" = 76,
               "Panchagarh" = 77,
               "Patuakhali" = 78,
               "Pirojpur" = 79,
               "Rajshahi" = 81,
               "Rajbari" = 82,
               "Rangamati" = 84,
               "Rangpur" = 85,
               "Shariatpur" = 86,
               "Satkhira" = 87,
               "Sirajganj" = 88,
               "Sherpur" = 89,
               "Sunamganj" = 90,
               "Sylhet" = 91,
               "Tangail" = 93,
               "Thakurgaon" = 94)
)
attr(rdatafile[["DD"]], "label") <- "DISTRICT"

rdatafile[["TT"]] <- haven::labelled_spss(rdatafile[["TT"]],
    labels = c("" = )
)
attr(rdatafile[["TT"]], "label") <- "THANA"

attr(rdatafile[["HHID"]], "label") <- "LHHID"

rdatafile[["UW"]] <- haven::labelled_spss(rdatafile[["UW"]],
    labels = c("" = )
)
attr(rdatafile[["UW"]], "label") <- "UNION/WARD"

rdatafile[["UR"]] <- haven::labelled_spss(rdatafile[["UR"]],
    labels = c("" = )
)
attr(rdatafile[["UR"]], "label") <- "RMO"

rdatafile[["AREA"]] <- haven::labelled_spss(rdatafile[["AREA"]],
    labels = c("" = )
)
attr(rdatafile[["AREA"]], "label") <- "Area"

attr(rdatafile[["EXFAC"]], "label") <- "Expansion factor"

attr(rdatafile[["HHID"]], "label") <- "Household ID code"

rdatafile[["QUINTILE"]] <- haven::labelled_spss(rdatafile[["QUINTILE"]],
    labels = c("" = )
)
attr(rdatafile[["QUINTILE"]], "label") <- "Urban/Rural Quintile"

rdatafile[["S11_MSN"]] <- haven::labelled_spss(rdatafile[["S11_MSN"]],
    labels = c("" = )
)
attr(rdatafile[["S11_MSN"]], "label") <- "ID code"

rdatafile[["SEX"]] <- haven::labelled_spss(rdatafile[["SEX"]],
    labels = c("Male" = 1,
               "Female" = 2)
)
attr(rdatafile[["SEX"]], "label") <- "COL 3. Sex"

rdatafile[["RELATION"]] <- haven::labelled_spss(rdatafile[["RELATION"]],
    labels = c("Househol" = 1,
               "Spouse" = 2,
               "Children" = 3,
               "Brother/" = 4,
               "Parent" = 5,
               "Other" = 6)
)
attr(rdatafile[["RELATION"]], "label") <- "COL 4. Relation with H/H Head"

attr(rdatafile[["AGE"]], "label") <- "COL 5. Age"

rdatafile[["MSTATUS"]] <- haven::labelled_spss(rdatafile[["MSTATUS"]],
    labels = c("Married" = 1,
               "Unmarrie" = 2,
               "Widow" = 3,
               "Divorced" = 4)
)
attr(rdatafile[["MSTATUS"]], "label") <- "COL 6. Marital Status"

rdatafile[["NWSTATUS"]] <- haven::labelled_spss(rdatafile[["NWSTATUS"]],
    labels = c("Employed" = 1,
               "Employed but not working" = 2,
               "Household work" = 3,
               "Unemployed, seeking work" = 4,
               "Unemployed, not seeking work" = 5,
               "Student" = 6,
               "Not working" = 7,
               "Others" = 8)
)
attr(rdatafile[["NWSTATUS"]], "label") <- "COL 8. Normal Work Status/Activ"

rdatafile[["WTYPE1"]] <- haven::labelled_spss(rdatafile[["WTYPE1"]],
    labels = c("Owner farmer (not working)" = 1,
               "Owner farmer (working)" = 2,
               "Agricultural worker (works in family land)" = 3,
               "Agricultural worker (working in family land and others)" = 4,
               "Agricultural labor (not land owner)" = 5,
               "Contract basis agricultural labor (not land owner)" = 6,
               "Tenant (share cropper including own land)" = 7,
               "Tenant (only share cropper)" = 8,
               "Fisherman" = 9,
               "Forest/Livestock" = 10,
               "Servant/Maid servant - agricultural" = 11,
               "Others - agricultural" = 12,
               "Professional administrator" = 13,
               "Executive/Administrator" = 14,
               "Other officials" = 15,
               "Teacher" = 16,
               "Salesman" = 17,
               "Business" = 18,
               "Production labor" = 19,
               "Labour engaged in electricity, gas and water" = 20,
               "Labour engaged in construction" = 21,
               "Sports & other cultural activities" = 22,
               "Blacksmith" = 23,
               "Potter" = 24,
               "Carpenter" = 25,
               "Weaver" = 26,
               "Broker/Middleman" = 27,
               "Transport and communications labourer" = 28,
               "Day labourer" = 29,
               "Servant/Maid servant - non agricultural" = 30,
               "Others - non-agricultural" = 31)
)
attr(rdatafile[["WTYPE1"]], "label") <- "COL10. Type of Occupation(Last"

rdatafile[["INDUST1"]] <- haven::labelled_spss(rdatafile[["INDUST1"]],
    labels = c("Agriculture" = 11,
               "Forestry" = 12,
               "Livestock" = 13,
               "Fisheries" = 14,
               "Poultry" = 15,
               "Mineral" = 20,
               "Industry" = 30,
               "House/Ro" = 40,
               "Business" = 50,
               "Transportation" = 60,
               "Money/As" = 70,
               "Social W" = 80,
               "Others" = 90)
)
attr(rdatafile[["INDUST1"]], "label") <- "COL12. Industrial Code (Last We"

rdatafile[["WSTATUS"]] <- haven::labelled_spss(rdatafile[["WSTATUS"]],
    labels = c("Agric - Owner farmer" = 1,
               "Agric - Tenant farmer" = 2,
               "Agric - Tenant" = 3,
               "Agric - Self-employed" = 4,
               "Agric - Agriculture labour" = 5,
               "Agric - Unpaid family helper" = 6,
               "Not working" = 7,
               "Others" = 8,
               "Non-Agric - Self employed" = 11,
               "Non-Agric - Employer" = 12,
               "Non-Agric - Nongovernment/personal instit" = 13,
               "Non-Agric - Government/Autonomous body employee" = 14,
               "Non agricultural employee" = 15,
               "Non-Agric - Unpaid family helper" = 16)
)
attr(rdatafile[["WSTATUS"]], "label") <- "COL13. Work Status"

rdatafile[["WTYPE2"]] <- haven::labelled_spss(rdatafile[["WTYPE2"]],
    labels = c("Owner farmer (not working)" = 1,
               "Owner farmer (working)" = 2,
               "Agricultural worker (works in family land)" = 3,
               "Agricultural worker (working in family land and others)" = 4,
               "Agricultural labor (not land owner)" = 5,
               "Contract basis agricultural labor (not land owner)" = 6,
               "Tenant (share cropper including own land)" = 7,
               "Tenant (only share cropper)" = 8,
               "Fisherman" = 9,
               "Forest/Livestock" = 10,
               "Servant/Maid servant - agricultural" = 11,
               "Others - agricultural" = 12,
               "Professional administrator" = 13,
               "Executive/Administrator" = 14,
               "Other officials" = 15,
               "Teacher" = 16,
               "Salesman" = 17,
               "Business" = 18,
               "Production labor" = 19,
               "Labour engaged in electricity, gas and water" = 20,
               "Labour engaged in construction" = 21,
               "Sports & other cultural activities" = 22,
               "Blacksmith" = 23,
               "Potter" = 24,
               "Carpenter" = 25,
               "Weaver" = 26,
               "Broker/Middleman" = 27,
               "Transport and communications labourer" = 28,
               "Day labourer" = 29,
               "Servant/Maid servant - non agricultural" = 30,
               "Others - non-agricultural" = 31)
)
attr(rdatafile[["WTYPE2"]], "label") <- "COL15. Secondary Occupation"

rdatafile[["INDUST2"]] <- haven::labelled_spss(rdatafile[["INDUST2"]],
    labels = c("Agriculture" = 11)
)
attr(rdatafile[["INDUST2"]], "label") <- "COL16. Industrial Code (Seconda"

rdatafile[["AGECAT"]] <- haven::labelled_spss(rdatafile[["AGECAT"]],
    labels = c("0- 4 yr" = 1,
               "5- 9 yr" = 2,
               "10-14 yr" = 3,
               "15-19 yr" = 4,
               "20-24 yr" = 5,
               "25-29 yr" = 6,
               "30-34 yr" = 7,
               "35-39 yr" = 8,
               "40-44 yr" = 9,
               "45-49 yr" = 10,
               "50-54 yr" = 11,
               "55-59 yr" = 12,
               "60-64 yr" = 13,
               "65-69 yr" = 14,
               "70+ yrs" = 15)
)
attr(rdatafile[["AGECAT"]], "label") <- "Age category"

rdatafile[["URBRURAL"]] <- haven::labelled_spss(rdatafile[["URBRURAL"]],
    labels = c("Urban" = 1,
               "Rural" = 2)
)
attr(rdatafile[["URBRURAL"]], "label") <- "Urban or Rural"

rdatafile[["DIVISION"]] <- haven::labelled_spss(rdatafile[["DIVISION"]],
    labels = c("Barisal" = 1,
               "Chittago" = 2,
               "Dhaka" = 3,
               "Khulna" = 4,
               "Rajshahi" = 5)
)
attr(rdatafile[["DIVISION"]], "label") <- "Administrative Division"

attr(rdatafile[["EXFAC"]], "label") <- "Expansion factor"

attr(rdatafile[["HL"]], "label") <- "Lower: Headcount"

attr(rdatafile[["PGL"]], "label") <- "Lower: Poverty Gap"

attr(rdatafile[["SPGL"]], "label") <- "Lower: Squared Poverty Gap"

attr(rdatafile[["HU"]], "label") <- "Upper: Headcount"

attr(rdatafile[["PGU"]], "label") <- "Upper: Poverty Gap"

attr(rdatafile[["SPGU"]], "label") <- "Upper: Squared Poverty Gap"

attr(rdatafile[["HHH"]], "label") <- "HHID"

rdatafile[["S201_01"]] <- haven::labelled_spss(rdatafile[["S201_01"]],
    labels = c("" = )
)
attr(rdatafile[["S201_01"]], "label") <- "Q01. Respondent's MSN"

rdatafile[["S201_02"]] <- haven::labelled_spss(rdatafile[["S201_02"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S201_02"]], "label") <- "Q02. Can you read a letter?"

rdatafile[["S201_03"]] <- haven::labelled_spss(rdatafile[["S201_03"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S201_03"]], "label") <- "Q03. Can you write a letter?"

rdatafile[["S201_04"]] <- haven::labelled_spss(rdatafile[["S201_04"]],
    labels = c("Formal schooling" = 1,
               "Taught by family" = 2,
               "Govt. Adult Literacy Course" = 3,
               "NGO Literacy Course" = 4,
               "Other" = 5)
)
attr(rdatafile[["S201_04"]], "label") <- "Q04. Where did you learn to"

rdatafile[["S201_05"]] <- haven::labelled_spss(rdatafile[["S201_05"]],
    labels = c("No Class passed" = "1",
               "Class I" = "2",
               "Class II" = "3",
               "Class III" = "4",
               "Class IV" = "5",
               "Class V" = "6",
               "Class VI" = "7",
               "Class VII" = "8",
               "Class VIII" = "9",
               "Class IX" = "10",
               "S.S.C" = "12",
               "H.S.C" = "14",
               "Bachelor's Degree General" = "15",
               "Bachelor's Degree Honours" = "16",
               "Master's Degree or above" = "Sysmiss")
)
attr(rdatafile[["S201_05"]], "label") <- "Q05 Father highest class passed"

rdatafile[["S201_06"]] <- haven::labelled_spss(rdatafile[["S201_06"]],
    labels = c("No Class passed" = "1",
               "Class I" = "2",
               "Class II" = "3",
               "Class III" = "4",
               "Class IV" = "5",
               "Class V" = "6",
               "Class VI" = "7",
               "Class VII" = "8",
               "Class VIII" = "9",
               "Class IX" = "10",
               "S.S.C" = "12",
               "H.S.C" = "14",
               "Bachelor's Degree General" = "15",
               "Bachelor's Degree Honours" = "16",
               "Master's Degree or above" = "Sysmiss")
)
attr(rdatafile[["S201_06"]], "label") <- "Q06. Mother highest class passe"

rdatafile[["S201_07"]] <- haven::labelled_spss(rdatafile[["S201_07"]],
    labels = c("Never At" = 1,
               "Attended" = 2,
               "Currentl" = 3)
)
attr(rdatafile[["S201_07"]], "label") <- "Q07. Current educational status"

rdatafile[["S208_08A"]] <- haven::labelled_spss(rdatafile[["S208_08A"]],
    labels = c("No school in the area or too far away" = 1,
               "Too Expensive" = 2,
               "Had to help at home" = 3,
               "Had to help with farm work" = 4,
               "Had to help with family business" = 5,
               "Poor school on teachers" = 6,
               "No girls school in the area or too far away" = 7,
               "All male teachers" = 8,
               "Education not useful" = 9,
               "Other" = 10)
)
attr(rdatafile[["S208_08A"]], "label") <- "Q08A. Why Never attend School ("

rdatafile[["S208_08B"]] <- haven::labelled_spss(rdatafile[["S208_08B"]],
    labels = c("No school in the area or too far away" = 1,
               "Too Expensive" = 2,
               "Had to help at home" = 3,
               "Had to help with farm work" = 4,
               "Had to help with family business" = 5,
               "Poor school on teachers" = 6,
               "No girls school in the area or too far away" = 7,
               "All male teachers" = 8,
               "Education not useful" = 9,
               "Other" = 10)
)
attr(rdatafile[["S208_08B"]], "label") <- "Q08B. Why never attend School ("

rdatafile[["S209_09"]] <- haven::labelled_spss(rdatafile[["S209_09"]],
    labels = c("Government" = 1,
               "Government-Subsidized" = 2,
               "Private Bengali Medium" = 3,
               "Private English Medium" = 4,
               "NGO - Run" = 5,
               "Madrasha" = 6,
               "Other" = 7)
)
attr(rdatafile[["S209_09"]], "label") <- "Q09. Type of School last attend"

rdatafile[["S209_10"]] <- haven::labelled_spss(rdatafile[["S209_10"]],
    labels = c("No Class passed" = "1",
               "Class I" = "2",
               "Class II" = "3",
               "Class III" = "4",
               "Class IV" = "5",
               "Class V" = "6",
               "Class VI" = "7",
               "Class VII" = "8",
               "Class VIII" = "9",
               "Class IX" = "10",
               "S.S.C" = "12",
               "H.S.C" = "14",
               "Bachelor's Degree General" = "15",
               "Bachelor's Degree Honours" = "16",
               "Master's Degree or above" = "Sysmiss")
)
attr(rdatafile[["S209_10"]], "label") <- "Q10. Highest class you passed ?"

rdatafile[["S209_11"]] <- haven::labelled_spss(rdatafile[["S209_11"]],
    labels = c("" = )
)
attr(rdatafile[["S209_11"]], "label") <- "Q11. Year passed highest class"

attr(rdatafile[["S209_12"]], "label") <- "Q12. Years to complete primary"

attr(rdatafile[["S209_13"]], "label") <- "Q13. Years to complete secondar"

rdatafile[["S209_14A"]] <- haven::labelled_spss(rdatafile[["S209_14A"]],
    labels = c("Completed desired education" = 1,
               "Too far away" = 2,
               "Too Expensive" = 3,
               "Had to help at home" = 4,
               "Had to help with farm work" = 5,
               "Had to help with family business" = 6,
               "Poor quality of school or teachers" = 7,
               "No girls school in the area or too far away" = 8,
               "All male teachers" = 9,
               "Education not useful" = 10,
               "Got a job" = 11,
               "Got married" = 12,
               "Girls' education discouraged at that age" = 13,
               "Poor academic progress" = 14,
               "Lack of security" = 15,
               "Others" = 16)
)
attr(rdatafile[["S209_14A"]], "label") <- "Q14A. Reason to leave school (1"

rdatafile[["S209_14B"]] <- haven::labelled_spss(rdatafile[["S209_14B"]],
    labels = c("Completed desired education" = 1,
               "Too far away" = 2,
               "Too Expensive" = 3,
               "Had to help at home" = 4,
               "Had to help with farm work" = 5,
               "Had to help with family business" = 6,
               "Poor quality of school or teachers" = 7,
               "No girls school in the area or too far away" = 8,
               "All male teachers" = 9,
               "Education not useful" = 10,
               "Got a job" = 11,
               "Got married" = 12,
               "Girls' education discouraged at that age" = 13,
               "Poor academic progress" = 14,
               "Lack of security" = 15,
               "Others" = 16)
)
attr(rdatafile[["S209_14B"]], "label") <- "Q14B. Reason to leave school (2"

rdatafile[["S215_15"]] <- haven::labelled_spss(rdatafile[["S215_15"]],
    labels = c("SSC/HSC Science" = 1,
               "SSC/HSC Humanities" = 2,
               "SSC/HSC Commerce" = 3,
               "SSC/HSC Agriculture" = 4,
               "SSC/HSC Home Economics" = 5,
               "SSC/HSC Others" = 6,
               "Bachelors Degree - Arts" = 7,
               "Bachelors Degree - Social Sciences" = 8,
               "Bachelors Degree - Science" = 9,
               "Bachelors Degree - Commerce" = 10,
               "Law" = 11,
               "Engineering" = 12,
               "Medicine" = 13,
               "Bachelors Degree - Agriculture" = 14,
               "Bachelors Degree - Architecture" = 15,
               "Bachelors Degree - Business Admin" = 16,
               "Arts and Crafts" = 17,
               "Bachelors Degree - Home Economics" = 18,
               "Bachelors Degree - Other" = 19)
)
attr(rdatafile[["S215_15"]], "label") <- "Q15. Main subject for Highest D"

rdatafile[["S215_16"]] <- haven::labelled_spss(rdatafile[["S215_16"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S215_16"]], "label") <- "Q16 14 years or more & wage-ear"

attr(rdatafile[["S215_17A"]], "label") <- "Q17. Work after highest degree? yrs"

attr(rdatafile[["S215_17B"]], "label") <- "Q17. Work after highest degree? mos"

rdatafile[["S215_18"]] <- haven::labelled_spss(rdatafile[["S215_18"]],
    labels = c("Not working and not seeking work" = 1,
               "Not working and seeking work but not able to find work" = 2,
               "Employed for wage/salary" = 3,
               "Self Employed" = 4)
)
attr(rdatafile[["S215_18"]], "label") <- "Q18. Main employ. status last 2"

rdatafile[["S219_19"]] <- haven::labelled_spss(rdatafile[["S219_19"]],
    labels = c("Do not need to" = 1,
               "Too young to work" = 2,
               "Too old to work" = 3,
               "Plan to study further" = 4,
               "Housework" = 5,
               "Need to look after children/family" = 6,
               "Resistance from husband/family" = 7,
               "Know that it is not possible to get a job" = 8,
               "Suitable self-employment not available" = 9,
               "Other" = 10)
)
attr(rdatafile[["S219_19"]], "label") <- "Q19. Why not been seeking work?"

attr(rdatafile[["S219_20A"]], "label") <- "Q20. Looking for work? Years"

attr(rdatafile[["S219_20B"]], "label") <- "Q20. Looking for work? Months"

attr(rdatafile[["S219_21A"]], "label") <- "Q21. Total working days Employee"

attr(rdatafile[["S219_21B"]], "label") <- "Q21. Total working days Self Employed"

rdatafile[["S219_22"]] <- haven::labelled_spss(rdatafile[["S219_22"]],
    labels = c("Yes" = 1,
               "No" = 2,
               "Don't know" = 3)
)
attr(rdatafile[["S219_22"]], "label") <- "Q22. Educationally over-qualifi"

rdatafile[["S223_23"]] <- haven::labelled_spss(rdatafile[["S223_23"]],
    labels = c("Government" = 1,
               "Government-Subsidized" = 2,
               "Private Bengali Medium" = 3,
               "Private English Medium" = 4,
               "NGO - Run" = 5,
               "Madrasha" = 6,
               "Other" = 7)
)
attr(rdatafile[["S223_23"]], "label") <- "Q23. Type of school attending"

rdatafile[["S223_24"]] <- haven::labelled_spss(rdatafile[["S223_24"]],
    labels = c("Class I" = "2",
               "Class II" = "3",
               "Class III" = "4",
               "Class IV" = "5",
               "Class V" = "6",
               "Class VI" = "7",
               "Class VII" = "8",
               "Class VIII" = "9",
               "Class IX" = "10",
               "S.S.C" = "12",
               "H.S.C" = "14",
               "Bachelor's Degree General" = "15",
               "Bachelor's Degree Honours" = "16",
               "Master's Degree or above" = "Sysmiss")
)
attr(rdatafile[["S223_24"]], "label") <- "Q24. Class currently attending"

rdatafile[["S223_25"]] <- haven::labelled_spss(rdatafile[["S223_25"]],
    labels = c("Class I" = "2",
               "Class II" = "3",
               "Class III" = "4",
               "Class IV" = "5",
               "Class V" = "6",
               "Class VI" = "7",
               "Class VII" = "8",
               "Class VIII" = "9",
               "Class IX" = "10",
               "S.S.C" = "12",
               "H.S.C" = "14",
               "Bachelor's Degree General" = "15",
               "Bachelor's Degree Honours" = "16",
               "Master's Degree or above" = "17",
               "Did not" = "Sysmiss")
)
attr(rdatafile[["S223_25"]], "label") <- "Q25. Class you attending last Y"

rdatafile[["S223_26"]] <- haven::labelled_spss(rdatafile[["S223_26"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S223_26"]], "label") <- "Q26. More 5 years to complete p"

attr(rdatafile[["S223_27"]], "label") <- "Q27. Years to complete primary"

rdatafile[["S223_28"]] <- haven::labelled_spss(rdatafile[["S223_28"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S223_28"]], "label") <- "Q28. A break in Primary schooli"

attr(rdatafile[["S229_29"]], "label") <- "Q29 Duration of breaks primary"

rdatafile[["S229_30"]] <- haven::labelled_spss(rdatafile[["S229_30"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S229_30"]], "label") <- "Q30 More than 5 years to comple"

attr(rdatafile[["S229_31"]], "label") <- "Q31 Years to complete secondary"

rdatafile[["S229_32"]] <- haven::labelled_spss(rdatafile[["S229_32"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S229_32"]], "label") <- "Q32 A break in Secondary school"

attr(rdatafile[["S229_33"]], "label") <- "Q33 Duration of the break in se"

rdatafile[["S229_34"]] <- haven::labelled_spss(rdatafile[["S229_34"]],
    labels = c("SSC/HSC Science" = 1,
               "SSC/HSC Humanities" = 2,
               "SSC/HSC Commerce" = 3,
               "SSC/HSC Agriculture" = 4,
               "SSC/HSC Home Economics" = 5,
               "SSC/HSC Others" = 6,
               "Bachelors Degree - Arts" = 7,
               "Bachelors Degree - Social Sciences" = 8,
               "Bachelors Degree - Science" = 9,
               "Bachelors Degree - Commerce" = 10,
               "Law" = 11,
               "Engineering" = 12,
               "Medicine" = 13,
               "Bachelors Degree - Agriculture" = 14,
               "Bachelors Degree - Architecture" = 15,
               "Bachelors Degree - Business Admin" = 16,
               "Arts and Crafts" = 17,
               "Bachelors Degree - Home Economics" = 18,
               "Bachelors Degree - Other" = 19)
)
attr(rdatafile[["S229_34"]], "label") <- "Q34 Main subject group, Highest"

attr(rdatafile[["S229_35"]], "label") <- "Q35 How far is your school"

rdatafile[["S236_36"]] <- haven::labelled_spss(rdatafile[["S236_36"]],
    labels = c("Walk" = 1,
               "Bicycle" = 2,
               "Rickshaw/Rickshaw van" = 3,
               "Taxi" = 4,
               "Bus" = 5,
               "Boat" = 6,
               "Train" = 7,
               "Other" = 8)
)
attr(rdatafile[["S236_36"]], "label") <- "Q36 How do you travel to school"

attr(rdatafile[["S236_37A"]], "label") <- "Q37 How long it take reach school hrs"

attr(rdatafile[["S236_37B"]], "label") <- "Q37 How long it take reach school mins"

rdatafile[["S236_38"]] <- haven::labelled_spss(rdatafile[["S236_38"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S236_38"]], "label") <- "Q38 Live away from home"

rdatafile[["S236_39"]] <- haven::labelled_spss(rdatafile[["S236_39"]],
    labels = c("With relative" = 1,
               "Hostel" = 2,
               "Other" = 3)
)
attr(rdatafile[["S236_39"]], "label") <- "Q39 With whom do you go school"

attr(rdatafile[["S236_40"]], "label") <- "Q40 Days absent school, last 3 mos"

rdatafile[["S236_41"]] <- haven::labelled_spss(rdatafile[["S236_41"]],
    labels = c("Sick" = 1,
               "Help in housework" = 2,
               "Help in farmwork" = 3,
               "Help in family business" = 4,
               "Bad weather" = 5,
               "Unscheduled vacation" = 6,
               "Other" = 7)
)
attr(rdatafile[["S236_41"]], "label") <- "Q41 Main reason for longest abs"

attr(rdatafile[["S236_42"]], "label") <- "Q42 Days school closed, last 3 mos"

attr(rdatafile[["S243_43A"]], "label") <- "Admission/Registration"

attr(rdatafile[["S243_43B"]], "label") <- "Uniform/Dress/Footwear"

attr(rdatafile[["S243_43C"]], "label") <- "Books/Note Book/Stati."

attr(rdatafile[["S243_43D"]], "label") <- "Examination fee"

attr(rdatafile[["S243_43E"]], "label") <- "Tution fee"

attr(rdatafile[["S243_43H"]], "label") <- "Transport"

attr(rdatafile[["S243_43K"]], "label") <- "Private  tutor"

attr(rdatafile[["S243_43N"]], "label") <- "Hostel Expense+food"

attr(rdatafile[["S243_43Q"]], "label") <- "Other Exp."

attr(rdatafile[["S243_43R"]], "label") <- "Total Exp."

rdatafile[["S244_44"]] <- haven::labelled_spss(rdatafile[["S244_44"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S244_44"]], "label") <- "Did non-member paid last 12 Mon"

rdatafile[["S244_45"]] <- haven::labelled_spss(rdatafile[["S244_45"]],
    labels = c("Relative" = 1,
               "Friend" = 2,
               "Other" = 3)
)
attr(rdatafile[["S244_45"]], "label") <- "Non-member paid last 12 months"

attr(rdatafile[["S244_46"]], "label") <- "Q46 Total paid over last 12 mon"

rdatafile[["S244_47"]] <- haven::labelled_spss(rdatafile[["S244_47"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S244_47"]], "label") <- "Q47 Had all SchoolText Books la"

rdatafile[["S244_48"]] <- haven::labelled_spss(rdatafile[["S244_48"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S244_48"]], "label") <- "Q48 Had all Required last 12 mo"

attr(rdatafile[["S244_49"]], "label") <- "Q49 Free books receive from sch"

attr(rdatafile[["S244_50"]], "label") <- "Q50 Books buy from market last"

rdatafile[["S251_51"]] <- haven::labelled_spss(rdatafile[["S251_51"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S251_51"]], "label") <- "Q51 Had stipend,scholarship, las"

attr(rdatafile[["S251_52"]], "label") <- "Q52 Total amount of benefits"

rdatafile[["S251_53"]] <- haven::labelled_spss(rdatafile[["S251_53"]],
    labels = c("Government" = 1,
               "Private" = 2,
               "NGO" = 3,
               "School" = 4,
               "Other" = 5)
)
attr(rdatafile[["S251_53"]], "label") <- "Q53 Largest source of Stipend/S"

rdatafile[["S251_54"]] <- haven::labelled_spss(rdatafile[["S251_54"]],
    labels = c("Very difficult" = 1,
               "Somewhat difficult" = 2,
               "Not  difficult" = 3)
)
attr(rdatafile[["S251_54"]], "label") <- "Q54 Difficult to meet School Ex"

rdatafile[["S251_55"]] <- haven::labelled_spss(rdatafile[["S251_55"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S251_55"]], "label") <- "Q55 Need borrow/private donatio"

attr(rdatafile[["S251_56"]], "label") <- "Q56 Kg Wheat/rice receive 12 mo"

rdatafile[["S257_57"]] <- haven::labelled_spss(rdatafile[["S257_57"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S257_57"]], "label") <- "Q57 Received Tech/Vocan. traini"

rdatafile[["S257_58"]] <- haven::labelled_spss(rdatafile[["S257_58"]],
    labels = c("Polytechnic" = 1,
               "Typing/Shorthand" = 2,
               "Computer-related" = 3,
               "Motor Mechanic" = 4,
               "Electrical-related work" = 5,
               "Weaving" = 6,
               "Tailoring/Embroidery" = 7,
               "Agriculture/Livestock" = 8,
               "Health & Family Planning" = 9,
               "Cottage industry" = 10,
               "Others" = 11)
)
attr(rdatafile[["S257_58"]], "label") <- "Q58 Type of Training received"

rdatafile[["S257_59"]] <- haven::labelled_spss(rdatafile[["S257_59"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S257_59"]], "label") <- "Q59 Received a certificate of t"

attr(rdatafile[["S257_60A"]], "label") <- "Q60 How long was this training yrs"

attr(rdatafile[["S257_60B"]], "label") <- "Q60 How long was this training mos"

rdatafile[["S257_61"]] <- haven::labelled_spss(rdatafile[["S257_61"]],
    labels = c("Govt. Institution" = 1,
               "Pvt.  Institution" = 2,
               "Public Sector Employer" = 3,
               "Pvt. Employer" = 4,
               "NGO or NGO-supported institution" = 5,
               "From family member" = 6,
               "Other" = 7)
)
attr(rdatafile[["S257_61"]], "label") <- "Q61 Who Provide this training"

rdatafile[["S257_62"]] <- haven::labelled_spss(rdatafile[["S257_62"]],
    labels = c("Yes, very useful" = 1,
               "Yes, somewhat useful" = 2,
               "Not useful" = 3,
               "Currently not working" = 4)
)
attr(rdatafile[["S257_62"]], "label") <- "Q62 Found training usefull in w"

rdatafile[["S257_63"]] <- haven::labelled_spss(rdatafile[["S257_63"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S257_63"]], "label") <- "Q63 Income higher as a result o"

rdatafile[["AREA"]] <- haven::labelled_spss(rdatafile[["AREA"]],
    labels = c("" = )
)
attr(rdatafile[["AREA"]], "label") <- "AREA"

attr(rdatafile[["ZF"]], "label") <- "ZF"

attr(rdatafile[["HHID"]], "label") <- "Household code"

rdatafile[["S11_MSN"]] <- haven::labelled_spss(rdatafile[["S11_MSN"]],
    labels = c("" = )
)
attr(rdatafile[["S11_MSN"]], "label") <- "ID code"

rdatafile[["SEX"]] <- haven::labelled_spss(rdatafile[["SEX"]],
    labels = c("Male" = 1,
               "Female" = 2)
)
attr(rdatafile[["SEX"]], "label") <- "COL 3. Sex"

rdatafile[["RELATION"]] <- haven::labelled_spss(rdatafile[["RELATION"]],
    labels = c("Househol" = 1,
               "Spouse" = 2,
               "Children" = 3,
               "Brother/ Sister" = 4,
               "Parent" = 5,
               "Other" = 6)
)
attr(rdatafile[["RELATION"]], "label") <- "COL 4. Relation with H/H Head"

attr(rdatafile[["AGE"]], "label") <- "COL 5. Age"

rdatafile[["MSTATUS"]] <- haven::labelled_spss(rdatafile[["MSTATUS"]],
    labels = c("Married" = 1,
               "Unmarried" = 2,
               "Widow" = 3,
               "Divorced" = 4)
)
attr(rdatafile[["MSTATUS"]], "label") <- "COL 6. Marital Status"

rdatafile[["NWSTATUS"]] <- haven::labelled_spss(rdatafile[["NWSTATUS"]],
    labels = c("Employed" = 1,
               "Employed but not working" = 2,
               "Household work" = 3,
               "Unemployed, seeking work" = 4,
               "Unemployed, not seeking work" = 5,
               "Student" = 6,
               "Not working" = 7,
               "Others" = 8)
)
attr(rdatafile[["NWSTATUS"]], "label") <- "COL 8. Normal Work Status/Activ"

rdatafile[["WTYPE1"]] <- haven::labelled_spss(rdatafile[["WTYPE1"]],
    labels = c("Owner farmer (not working)" = 1,
               "Owner farmer (working)" = 2,
               "Agricultural worker (works in family land)" = 3,
               "Agricultural worker (working in family land and others)" = 4,
               "Agricultural labor (not land owner)" = 5,
               "Contract basis agricultural labor (not land owner)" = 6,
               "Tenant (share cropper including own land)" = 7,
               "Tenant (only share cropper)" = 8,
               "Fisherman" = 9,
               "Forest/Livestock" = 10,
               "Servant/Maid servant - agricultural" = 11,
               "Others - agricultural" = 12,
               "Professional administrator" = 13,
               "Executive/Administrator" = 14,
               "Other officials" = 15,
               "Teacher" = 16,
               "Salesman" = 17,
               "Business" = 18,
               "Production labor" = 19,
               "Labour engaged in electricity, gas and water" = 20,
               "Labour engaged in construction" = 21,
               "Sports & other cultural activities" = 22,
               "Blacksmith" = 23,
               "Potter" = 24,
               "Carpenter" = 25,
               "Weaver" = 26,
               "Broker/Middleman" = 27,
               "Transport and communications labourer" = 28,
               "Day labourer" = 29,
               "Servant/Maid servant - non agricultural" = 30,
               "Others - non-agricultural" = 31)
)
attr(rdatafile[["WTYPE1"]], "label") <- "COL10. Type of Occupation(Last"

rdatafile[["INDUST1"]] <- haven::labelled_spss(rdatafile[["INDUST1"]],
    labels = c("Agriculture" = 11,
               "Forestry" = 12,
               "Livestock" = 13,
               "Fisheries" = 14,
               "Poultry" = 15,
               "Mineral" = 20,
               "Industry" = 30,
               "House/Ro" = 40,
               "Business" = 50,
               "Transportation" = 60,
               "Money/As" = 70,
               "Social W" = 80,
               "Others" = 90)
)
attr(rdatafile[["INDUST1"]], "label") <- "COL12. Industrial Code (Last We"

rdatafile[["WSTATUS"]] <- haven::labelled_spss(rdatafile[["WSTATUS"]],
    labels = c("Agric - Owner farmer" = 1,
               "Agric - Tenant farmer" = 2,
               "Agric - Tenant" = 3,
               "Agric - Self-employed" = 4,
               "Agric - Agriculture labour" = 5,
               "Agric - Unpaid family helper" = 6,
               "Non-Agric - Self employed" = 11,
               "Non-Agric - Employer" = 12,
               "Non-Agric - Nongovernment/personal instit" = 13,
               "Non-Agric - Government/Autonomous body employee" = 14,
               "Non agricultural employee" = 15,
               "Non-Agric - Unpaid family helper" = 16)
)
attr(rdatafile[["WSTATUS"]], "label") <- "COL13. Work Status"

rdatafile[["WTYPE2"]] <- haven::labelled_spss(rdatafile[["WTYPE2"]],
    labels = c("Owner farmer (not working)" = 1,
               "Owner farmer (working)" = 2,
               "Agricultural worker (works in family land)" = 3,
               "Agricultural worker (working in family land and others)" = 4,
               "Agricultural labor (not land owner)" = 5,
               "Contract basis agricultural labor (not land owner)" = 6,
               "Tenant (share cropper including own land)" = 7,
               "Tenant (only share cropper)" = 8,
               "Fisherman" = 9,
               "Forest/Livestock" = 10,
               "Servant/Maid servant - agricultural" = 11,
               "Others - agricultural" = 12,
               "Professional administrator" = 13,
               "Executive/Administrator" = 14,
               "Other officials" = 15,
               "Teacher" = 16,
               "Salesman" = 17,
               "Business" = 18,
               "Production labor" = 19,
               "Labour engaged in electricity, gas and water" = 20,
               "Labour engaged in construction" = 21,
               "Sports & other cultural activities" = 22,
               "Blacksmith" = 23,
               "Potter" = 24,
               "Carpenter" = 25,
               "Weaver" = 26,
               "Broker/Middleman" = 27,
               "Transport and communications labourer" = 28,
               "Day labourer" = 29,
               "Servant/Maid servant - non agricultural" = 30,
               "Others - non-agricultural" = 31)
)
attr(rdatafile[["WTYPE2"]], "label") <- "COL15. Secondary Occupation"

rdatafile[["INDUST2"]] <- haven::labelled_spss(rdatafile[["INDUST2"]],
    labels = c("Agriculture" = 11,
               "Forestry" = 12,
               "Livestock" = 13,
               "Fisheries" = 14,
               "Poultry" = 15,
               "Mineral" = 20,
               "Industry" = 30,
               "House/Ro" = 40,
               "Business" = 50,
               "Transportation" = 60,
               "Money/As" = 70,
               "Social W" = 80,
               "Others" = 90)
)
attr(rdatafile[["INDUST2"]], "label") <- "COL16. Industrial Code (Seconda"

rdatafile[["AGECAT"]] <- haven::labelled_spss(rdatafile[["AGECAT"]],
    labels = c("0- 4 yr" = 1,
               "5- 9 yr" = 2,
               "10-14 yr" = 3,
               "15-19 yr" = 4,
               "20-24 yr" = 5,
               "25-29 yr" = 6,
               "30-34 yr" = 7,
               "35-39 yr" = 8,
               "40-44 yr" = 9,
               "45-49 yr" = 10,
               "50-54 yr" = 11,
               "55-59 yr" = 12,
               "60-64 yr" = 13,
               "65-69 yr" = 14,
               "70+ yrs" = 15)
)
attr(rdatafile[["AGECAT"]], "label") <- "Age category"

rdatafile[["URBRURAL"]] <- haven::labelled_spss(rdatafile[["URBRURAL"]],
    labels = c("Urban" = 1,
               "Rural" = 2)
)
attr(rdatafile[["URBRURAL"]], "label") <- "Urban or Rural"

rdatafile[["DIVISION"]] <- haven::labelled_spss(rdatafile[["DIVISION"]],
    labels = c("Barisal" = 1,
               "Chittago" = 2,
               "Dhaka" = 3,
               "Khulna" = 4,
               "Rajshahi" = 5)
)
attr(rdatafile[["DIVISION"]], "label") <- "Administrative Division"

attr(rdatafile[["EXFAC"]], "label") <- "Expansion factor"

attr(rdatafile[["HL"]], "label") <- "Lower: Headcount"

attr(rdatafile[["PGL"]], "label") <- "Lower: Poverty Gap"

attr(rdatafile[["SPGL"]], "label") <- "Lower: Squared Poverty Gap"

attr(rdatafile[["HU"]], "label") <- "Upper: Headcount"

attr(rdatafile[["PGU"]], "label") <- "Upper: Poverty Gap"

attr(rdatafile[["SPGU"]], "label") <- "Upper: Squared Poverty Gap"

attr(rdatafile[["PSUID"]], "label") <- "PSU code"

attr(rdatafile[["NHH"]], "label") <- "Number of households"

attr(rdatafile[["HHID"]], "label") <- "Household ID code"

attr(rdatafile[["HHSIZE"]], "label") <- "Household size"

rdatafile[["URBRURAL"]] <- haven::labelled_spss(rdatafile[["URBRURAL"]],
    labels = c("Urban" = 1,
               "Rural" = 2)
)
attr(rdatafile[["URBRURAL"]], "label") <- "Urban or Rural"

rdatafile[["DIVISION"]] <- haven::labelled_spss(rdatafile[["DIVISION"]],
    labels = c("Barisal" = 1,
               "Chittago" = 2,
               "Dhaka" = 3,
               "Khulna" = 4,
               "Rajshahi" = 5)
)
attr(rdatafile[["DIVISION"]], "label") <- "Administrative Division"

rdatafile[["RELIGION"]] <- haven::labelled_spss(rdatafile[["RELIGION"]],
    labels = c("Muslim" = 1,
               "Hindu" = 2,
               "Buddhist" = 3,
               "Christian" = 4,
               "Others" = 5)
)
attr(rdatafile[["RELIGION"]], "label") <- "Q4. Religion of Household Head"

attr(rdatafile[["OWNED"]], "label") <- "Land owned"

attr(rdatafile[["RENTOUT"]], "label") <- "Land rented out"

attr(rdatafile[["RENTIN"]], "label") <- "Land rented in"

attr(rdatafile[["OPERATE"]], "label") <- "Land operated"

attr(rdatafile[["NFOODA3"]], "label") <- "Codes 68-70 non-food"

attr(rdatafile[["TAXES"]], "label") <- "Non-consumption expenditure"

attr(rdatafile[["HHINCOME"]], "label") <- "Monthly income"

rdatafile[["S11COL10"]] <- haven::labelled_spss(rdatafile[["S11COL10"]],
    labels = c("Owner fa" = 1,
               "Owner fa" = 2,
               "Agri. wo" = 3,
               "Agri. wo" = 4,
               "Agricult" = 5,
               "Contract" = 6,
               "Tenant f" = 7,
               "Tenant (" = 8,
               "Fisherma" = 9,
               "Forestry" = 10,
               "Servant/" = 11,
               "Other (A" = 12,
               "Professi" = 13,
               "Executiv" = 14,
               "Other Of" = 15,
               "Teacher" = 16,
               "Salesman" = 17,
               "Business" = 18,
               "Producti" = 19,
               "Labour E" = 20,
               "Labour (" = 21,
               "Sports &" = 22,
               "Smith" = 23,
               "Potter" = 24,
               "Carpente" = 25,
               "Weaver" = 26,
               "Broker/M" = 27,
               "Transpor" = 28,
               "Day-labo" = 29,
               "Servant/" = 30,
               "Others" = 31)
)
attr(rdatafile[["S11COL10"]], "label") <- "COL10. Type of Occupation(Last"

attr(rdatafile[["DD"]], "label") <- "DISTRICT"

attr(rdatafile[["TT"]], "label") <- "THANA"

attr(rdatafile[["UW"]], "label") <- "UNION/WARD"

attr(rdatafile[["FEXP"]], "label") <- "Food expenditures"

attr(rdatafile[["CARD4"]], "label") <- "Non-food exp. 12 mnths"

attr(rdatafile[["CARD3"]], "label") <- "Non-food exp. 1 month"

attr(rdatafile[["HHEXP"]], "label") <- "HH exp. CBN"

attr(rdatafile[["PCEXP"]], "label") <- "PC exp. CBN"

rdatafile[["RR"]] <- haven::labelled_spss(rdatafile[["RR"]],
    labels = c("" = )
)
attr(rdatafile[["RR"]], "label") <- "REGION"

rdatafile[["UR"]] <- haven::labelled_spss(rdatafile[["UR"]],
    labels = c("" = )
)
attr(rdatafile[["UR"]], "label") <- "RMO"

rdatafile[["AREA"]] <- haven::labelled_spss(rdatafile[["AREA"]],
    labels = c("" = )
)
attr(rdatafile[["AREA"]], "label") <- "Area"

attr(rdatafile[["EXFAC"]], "label") <- "Expansion factor"

rdatafile[["MAXEDUC"]] <- haven::labelled_spss(rdatafile[["MAXEDUC"]],
    labels = c("" = )
)
attr(rdatafile[["MAXEDUC"]], "label") <- "Maximum education"

rdatafile[["DIV"]] <- haven::labelled_spss(rdatafile[["DIV"]],
    labels = c("" = )
)
attr(rdatafile[["DIV"]], "label") <- "Division"

rdatafile[["STRATA"]] <- haven::labelled_spss(rdatafile[["STRATA"]],
    labels = c("" = )
)
attr(rdatafile[["STRATA"]], "label") <- "Stratum"

rdatafile[["PSU"]] <- haven::labelled_spss(rdatafile[["PSU"]],
    labels = c("" = )
)
attr(rdatafile[["PSU"]], "label") <- "Primary sampling unit"

attr(rdatafile[["WEIGHT"]], "label") <- "Individual level weight"

attr(rdatafile[["ZF"]], "label") <- "Food poverty line"

attr(rdatafile[["ZNFU"]], "label") <- "Upper: nfood poverty line"

attr(rdatafile[["ZNFL"]], "label") <- "Lower: nfood poverty line"

attr(rdatafile[["ZL"]], "label") <- "Lower poverty line"

attr(rdatafile[["ZU"]], "label") <- "Upper poverty line"

attr(rdatafile[["HL"]], "label") <- "Lower: Headcount"

attr(rdatafile[["PGL"]], "label") <- "Lower: Poverty Gap"

attr(rdatafile[["SPGL"]], "label") <- "Lower: Squared Poverty Gap"

attr(rdatafile[["HU"]], "label") <- "Upper: Headcount"

attr(rdatafile[["PGU"]], "label") <- "Upper: Poverty Gap"

attr(rdatafile[["SPGU"]], "label") <- "Upper: Squared Poverty Gap"

rdatafile[["QUINT1"]] <- haven::labelled_spss(rdatafile[["QUINT1"]],
    labels = c("" = )
)
attr(rdatafile[["QUINT1"]], "label") <- "Per-capita Quintile"

rdatafile[["LANDCAT"]] <- haven::labelled_spss(rdatafile[["LANDCAT"]],
    labels = c("0 acres" = 1,
               "< 0.5 ac" = 2,
               ".5-2.5 a" = 3,
               "2.5+ acr" = 4)
)
attr(rdatafile[["LANDCAT"]], "label") <- "Land owned"

rdatafile[["LANDCAT2"]] <- haven::labelled_spss(rdatafile[["LANDCAT2"]],
    labels = c("0 acres" = 1,
               "< 0.5 ac" = 2,
               ".5-2.5 a" = 3,
               "2.5+ acr" = 4)
)
attr(rdatafile[["LANDCAT2"]], "label") <- "Land operated"

attr(rdatafile[["PINDEX"]], "label") <- "HH Paasche Index"

rdatafile[["S12_7"]] <- haven::labelled_spss(rdatafile[["S12_7"]],
    labels = c("" = )
)
attr(rdatafile[["S12_7"]], "label") <- "Q7. Availability of Electricity"

rdatafile[["ELECTRIC"]] <- haven::labelled_spss(rdatafile[["ELECTRIC"]],
    labels = c("" = )
)
attr(rdatafile[["ELECTRIC"]], "label") <- "Have Connection=100"

rdatafile[["QUINTILE"]] <- haven::labelled_spss(rdatafile[["QUINTILE"]],
    labels = c("" = )
)
attr(rdatafile[["QUINTILE"]], "label") <- "Urban/Rural Quintile"



# --- Save the R data file --- 

rfilename <- unlist(strsplit(basename(rdatapath), split="\\."))[1]
rdatapath <- file.path(dirname(rdatapath), paste(rfilename, ".Rdata", sep=""))
assign(rfilename, rdatafile)
eval(parse(text = paste("save(", rfilename, ", file=rdatapath)", sep="")))



# ------------------------------------------------------------------------------

# --- Clean up the working space --- 

rm(rfilename, rdatafile, csvpath, rdatapath)
