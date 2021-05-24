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

attr(rdatafile[["PSU"]], "label") <- "Primary Sampling Unit Serial Number"

attr(rdatafile[["TEAM"]], "label") <- "Team Number"

rdatafile[["TERM"]] <- haven::labelled_spss(rdatafile[["TERM"]],
    labels = c("" = )
)
attr(rdatafile[["TERM"]], "label") <- "Term"

attr(rdatafile[["HHID"]], "label") <- "Household id"

rdatafile[["QUARTER"]] <- haven::labelled_spss(rdatafile[["QUARTER"]],
    labels = c("" = )
)
attr(rdatafile[["QUARTER"]], "label") <- "Quarters"

attr(rdatafile[["P1"]], "label") <- "HH Weights: Probability of First Stage Selection"

attr(rdatafile[["WGT"]], "label") <- "Initial weight"

attr(rdatafile[["POST_FACTOR"]], "label") <- "Post factor"

attr(rdatafile[["HHWGT"]], "label") <- "Household annual weight"

attr(rdatafile[["STRATUM"]], "label") <- "Stratum 132 annual estimates"

rdatafile[["STRATUM16"]] <- haven::labelled_spss(rdatafile[["STRATUM16"]],
    labels = c("Barisal Rural" = 1,
               "Barisal Urban" = 2,
               "Chittagong Rural" = 3,
               "Chittagong Urban" = 4,
               "Chittagong City Corp." = 5,
               "Dhaka Rural" = 6,
               "Dhaka Urban" = 7,
               "Dhaka City Corp." = 8,
               "Khulna Rural" = 9,
               "Khulna Urban" = 10,
               "Khulna City Corp." = 11,
               "Rajshahi Rural" = 12,
               "Rajshahi Urban" = 13,
               "Rajshahi City Corp." = 14,
               "Sylhet Rural" = 15,
               "Sylhet Urban" = 16)
)
attr(rdatafile[["STRATUM16"]], "label") <- "Stratum 16 quarterly estimates"

rdatafile[["RUC"]] <- haven::labelled_spss(rdatafile[["RUC"]],
    labels = c("" = )
)
attr(rdatafile[["RUC"]], "label") <- "Rural / PSA / City Corp"

rdatafile[["URBRURAL"]] <- haven::labelled_spss(rdatafile[["URBRURAL"]],
    labels = c("Rural" = 1,
               "Urban" = 2)
)
attr(rdatafile[["URBRURAL"]], "label") <- "1 Rural, 2 Urban"

attr(rdatafile[["DIVISION_CODE"]], "label") <- "Division Code"

rdatafile[["DIVISION_NAME"]] <- haven::labelled_spss(rdatafile[["DIVISION_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["DIVISION_NAME"]], "label") <- "Division Name"

attr(rdatafile[["ZILA_CODE"]], "label") <- "Zila/District code"

rdatafile[["ZILA_NAME"]] <- haven::labelled_spss(rdatafile[["ZILA_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["ZILA_NAME"]], "label") <- "Zila/District name"

attr(rdatafile[["ID_03_CODE"]], "label") <- "Thana / Upazilla Code"

rdatafile[["ID_03_NAME"]] <- haven::labelled_spss(rdatafile[["ID_03_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["ID_03_NAME"]], "label") <- "Thana / Upazilla Name"

attr(rdatafile[["ID_04_CODE"]], "label") <- "Union / Ward Code"

attr(rdatafile[["ID_04_NAME"]], "label") <- "Union / Ward Name"

attr(rdatafile[["ID_05_CODE"]], "label") <- "Mouza / Mohalla Code"

attr(rdatafile[["ID_05_NAME"]], "label") <- "Mouza / Mohalla Name"

attr(rdatafile[["FACILITATOR_CODE"]], "label") <- "Female Facilitator Code"

attr(rdatafile[["FACILITATOR_NAME"]], "label") <- "Female Facilitator Name"

attr(rdatafile[["INTERVIEWER_CODE"]], "label") <- "Interviewer Code"

attr(rdatafile[["INTERVIEWER_NAME"]], "label") <- "Interviewer Name"

attr(rdatafile[["SUPERVISOR_CODE"]], "label") <- "Supervising officer code"

attr(rdatafile[["SUPERVISOR_NAME"]], "label") <- "Supervising officer name"

attr(rdatafile[["VERSION"]], "label") <- "Data Entry Application Version"

attr(rdatafile[["HH_A_START"]], "label") <- "HH Section A Start Stamp"

attr(rdatafile[["HH_A_END"]], "label") <- "HH Section A End Stamp"

attr(rdatafile[["HH_1R_START"]], "label") <- "HH Section 1R Start Stamp"

attr(rdatafile[["HH_1R_END"]], "label") <- "HH Section 1R End Stamp"

attr(rdatafile[["HH_1A_START"]], "label") <- "HH Section 1A Start Stamp"

attr(rdatafile[["HH_1A_END"]], "label") <- "HH Section 1A End Stamp"

attr(rdatafile[["HH_1B_START"]], "label") <- "HH Section 1B Start Stamp"

attr(rdatafile[["HH_1B_END"]], "label") <- "HH Section 1B End Stamp"

attr(rdatafile[["HH_1C_START"]], "label") <- "HH Section 1C Start Stamp"

attr(rdatafile[["HH_1C_END"]], "label") <- "HH Section 1C End Stamp"

attr(rdatafile[["HH_2A_START"]], "label") <- "HH Section 2AStart Stamp"

attr(rdatafile[["HH_2A_END"]], "label") <- "HH Section 2A End Stamp"

attr(rdatafile[["HH_2B_START"]], "label") <- "HH Section 2B Start Stamp"

attr(rdatafile[["HH_2B_END"]], "label") <- "HH Section 2B End Stamp"

attr(rdatafile[["HH_3A_START"]], "label") <- "HH Section 3A Start Stamp"

attr(rdatafile[["HH_3A_END"]], "label") <- "HH Section 3A End Stamp"

attr(rdatafile[["HH_4A_START"]], "label") <- "HH Section 4A Start Stamp"

attr(rdatafile[["HH_4A_END"]], "label") <- "HH Section 4A End Stamp"

attr(rdatafile[["HH_4B_START"]], "label") <- "HH Section 4B Start Stamp"

attr(rdatafile[["HH_4B_END"]], "label") <- "HH Section 4B End Stamp"

attr(rdatafile[["HH_5_START"]], "label") <- "HH Section 5 Start Stamp"

attr(rdatafile[["HH_5_END"]], "label") <- "HH Section 5 End Stamp"

attr(rdatafile[["HH_6A_START"]], "label") <- "HH Section 6A Start Stamp"

attr(rdatafile[["HH_6A_END"]], "label") <- "HH Section 6A End Stamp"

attr(rdatafile[["HH_6B_START"]], "label") <- "HH Section 6B Start Stamp"

attr(rdatafile[["HH_6B_END"]], "label") <- "HH Section 6B End Stamp"

attr(rdatafile[["HH_7A_START"]], "label") <- "HH Section 7A Start Stamp"

attr(rdatafile[["HH_7A_END"]], "label") <- "HH Section 7A End Stamp"

attr(rdatafile[["HH_7B_START"]], "label") <- "HH Section 7B Start Stamp"

attr(rdatafile[["HH_7B_END"]], "label") <- "HH Section 7B End Stamp"

attr(rdatafile[["HH_7C_START"]], "label") <- "HH Section 7C Start Stamp"

attr(rdatafile[["HH_7C_END"]], "label") <- "HH Section 7C End Stamp"

attr(rdatafile[["HH_7D_START"]], "label") <- "HH Section 7D Start Stamp"

attr(rdatafile[["HH_7D_END"]], "label") <- "HH Section 7D End Stamp"

attr(rdatafile[["HH_7E_START"]], "label") <- "HH Section 7E Start Stamp"

attr(rdatafile[["HH_7E_END"]], "label") <- "HH Section 7E End Stamp"

attr(rdatafile[["HH_8A_START"]], "label") <- "HH Section 8A Start Stamp"

attr(rdatafile[["HH_8A_END"]], "label") <- "HH Section 8A End Stamp"

attr(rdatafile[["HH_8B_START"]], "label") <- "HH Section 8B Start Stamp"

attr(rdatafile[["HH_8B_END"]], "label") <- "HH Section 8B End Stamp"

attr(rdatafile[["HH_8C_START"]], "label") <- "HH Section 8C Start Stamp"

attr(rdatafile[["HH_8C_END"]], "label") <- "HH Section 8C End Stamp"

attr(rdatafile[["HH_8D_START"]], "label") <- "HH Section 8D Start Stamp"

attr(rdatafile[["HH_8D_END"]], "label") <- "HH Section 8D End Stamp"

attr(rdatafile[["HH_9B_START1"]], "label") <- "Start date week 1"

attr(rdatafile[["HH_9B_END1"]], "label") <- "End date week 1"

attr(rdatafile[["HH_9B_START2"]], "label") <- "Start date week 2"

attr(rdatafile[["HH_9B_END2"]], "label") <- "End date week 2"

attr(rdatafile[["HH_9C_START"]], "label") <- "HH Section 9C Start Stamp"

attr(rdatafile[["HH_9C_END"]], "label") <- "HH Section 9C End Stamp"

attr(rdatafile[["HH_9D_START"]], "label") <- "HH Section 9D Start Stamp"

attr(rdatafile[["HH_9D_END"]], "label") <- "HH Section 9D End Stamp"

attr(rdatafile[["HH_9E_START"]], "label") <- "HH Section 9E Start Stamp"

attr(rdatafile[["HH_9E_END"]], "label") <- "HH Section 9E End Stamp"

rdatafile[["S7C1Q01"]] <- haven::labelled_spss(rdatafile[["S7C1Q01"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S7C1Q01"]], "label") <- "Did you or anyone in your household raise any livestock or poultry birds in the"

rdatafile[["S7C3Q09"]] <- haven::labelled_spss(rdatafile[["S7C3Q09"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S7C3Q09"]], "label") <- "Did you or anyone in your household engage in any fishing or fish farming in the"

rdatafile[["S7C4Q13"]] <- haven::labelled_spss(rdatafile[["S7C4Q13"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S7C4Q13"]], "label") <- "Did you or anyone in your household engage in any farm forestry in the last 12 m"

rdatafile[["S8CQ01"]] <- haven::labelled_spss(rdatafile[["S8CQ01"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S8CQ01"]], "label") <- "Has any member of your household migrated, either within the country or abroad,"

rdatafile[["S8CQ02"]] <- haven::labelled_spss(rdatafile[["S8CQ02"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S8CQ02"]], "label") <- "Has this household received any remittances from anyone living outside the house"

attr(rdatafile[["PSU"]], "label") <- "Primary Sampling Unit Serial Number"

attr(rdatafile[["HHID"]], "label") <- "Household id"

rdatafile[["QUARTER"]] <- haven::labelled_spss(rdatafile[["QUARTER"]],
    labels = c("" = )
)
attr(rdatafile[["QUARTER"]], "label") <- "Quarters"

attr(rdatafile[["HHWGT"]], "label") <- "Household annual weight"

attr(rdatafile[["STRATUM"]], "label") <- "Stratum 132 annual estimates"

rdatafile[["STRATUM16"]] <- haven::labelled_spss(rdatafile[["STRATUM16"]],
    labels = c("Barisal Rural" = 1,
               "Barisal Urban" = 2,
               "Chittagong Rural" = 3,
               "Chittagong Urban" = 4,
               "Chittagong City Corp." = 5,
               "Dhaka Rural" = 6,
               "Dhaka Urban" = 7,
               "Dhaka City Corp." = 8,
               "Khulna Rural" = 9,
               "Khulna Urban" = 10,
               "Khulna City Corp." = 11,
               "Rajshahi Rural" = 12,
               "Rajshahi Urban" = 13,
               "Rajshahi City Corp." = 14,
               "Sylhet Rural" = 15,
               "Sylhet Urban" = 16)
)
attr(rdatafile[["STRATUM16"]], "label") <- "Stratum 16 quarterly estimates"

rdatafile[["RUC"]] <- haven::labelled_spss(rdatafile[["RUC"]],
    labels = c("" = )
)
attr(rdatafile[["RUC"]], "label") <- "Rural / PSA / City Corp"

rdatafile[["URBRURAL"]] <- haven::labelled_spss(rdatafile[["URBRURAL"]],
    labels = c("Rural" = 1,
               "Urban" = 2)
)
attr(rdatafile[["URBRURAL"]], "label") <- "1 Rural, 2 Urban"

attr(rdatafile[["DIVISION_CODE"]], "label") <- "Division Code"

rdatafile[["DIVISION_NAME"]] <- haven::labelled_spss(rdatafile[["DIVISION_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["DIVISION_NAME"]], "label") <- "Division Name"

attr(rdatafile[["ZILA_CODE"]], "label") <- "Zila/District code"

rdatafile[["ZILA_NAME"]] <- haven::labelled_spss(rdatafile[["ZILA_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["ZILA_NAME"]], "label") <- "Zila/District name"

rdatafile[["S1AQ0A"]] <- haven::labelled_spss(rdatafile[["S1AQ0A"]],
    labels = c("" = )
)
attr(rdatafile[["S1AQ0A"]], "label") <- "Respondent ID Code"

rdatafile[["INDID"]] <- haven::labelled_spss(rdatafile[["INDID"]],
    labels = c("" = )
)
attr(rdatafile[["INDID"]], "label") <- "ID CODE"

rdatafile[["S1AQ01"]] <- haven::labelled_spss(rdatafile[["S1AQ01"]],
    labels = c("MALE" = 1,
               "FEMALE" = 2)
)
attr(rdatafile[["S1AQ01"]], "label") <- "Sex"

rdatafile[["S1AQ02"]] <- haven::labelled_spss(rdatafile[["S1AQ02"]],
    labels = c("HEAD" = 1,
               "HUSBAND / WIFE" = 2,
               "SON / DUAGHTER" = 3,
               "SPOUSE OF SON / DUAGHTER" = 4,
               "GRANCHILD" = 5,
               "FATHER / MOTHER" = 6,
               "BROTHER / SISTER" = 7,
               "NIECE / NEPHEW" = 8,
               "FATHER-IN-LAW / MOTHER-IN-LAW" = 9,
               "BROTHER-IN-LAW / SISTER-IN-LAW" = 10,
               "OTHER RELATIVE (SPECIFY)" = 11,
               "SERVANT" = 12,
               "EMPLOYEE" = 13,
               "OTHER (SPECIFY)" = 14)
)
attr(rdatafile[["S1AQ02"]], "label") <- "Relationship of members with the head of household"

attr(rdatafile[["S1AQ03"]], "label") <- "Age"

rdatafile[["S1AQ04"]] <- haven::labelled_spss(rdatafile[["S1AQ04"]],
    labels = c("ISLAM" = 1,
               "HINDUISM" = 2,
               "BUDDHISM" = 3,
               "CHRISTIANITY" = 4,
               "OTHER (SPECIFY)" = 5)
)
attr(rdatafile[["S1AQ04"]], "label") <- "Religion"

rdatafile[["S1AQ05"]] <- haven::labelled_spss(rdatafile[["S1AQ05"]],
    labels = c("Currently married" = 1,
               "Never married" = 2,
               "Widowed" = 3,
               "Divorced" = 4,
               "Separated" = 5)
)
attr(rdatafile[["S1AQ05"]], "label") <- "Marital status"

attr(rdatafile[["S1AQ06"]], "label") <- "Age at first marriage (if ever married)"

rdatafile[["S1AQ07"]] <- haven::labelled_spss(rdatafile[["S1AQ07"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S1AQ07"]], "label") <- "Earner"

rdatafile[["S1AQ08"]] <- haven::labelled_spss(rdatafile[["S1AQ08"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S1AQ08"]], "label") <- "Whether (name) was abroad for more than 5 years"

rdatafile[["S1AQ09"]] <- haven::labelled_spss(rdatafile[["S1AQ09"]],
    labels = c("Lose job" = 1,
               "Due to illness" = 2,
               "End of employment" = 3,
               "Disagreement with authorities" = 4,
               "Homesick" = 5,
               "Due to economic recession" = 6,
               "Other (specify)" = 7)
)
attr(rdatafile[["S1AQ09"]], "label") <- "Why did (name) return to the household from abroad"

rdatafile[["S1AQ10"]] <- haven::labelled_spss(rdatafile[["S1AQ10"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S1AQ10"]], "label") <- "Whether name has a mobile"

rdatafile[["S1AQ11"]] <- haven::labelled_spss(rdatafile[["S1AQ11"]],
    labels = c("Communicating" = 1,
               "Getting information related to work" = 2,
               "Transferring money" = 3,
               "Accessing to the internet" = 4)
)
attr(rdatafile[["S1AQ11"]], "label") <- "Main use of the mobile"

rdatafile[["S1AQ12"]] <- haven::labelled_spss(rdatafile[["S1AQ12"]],
    labels = c("No Difficulty" = 1,
               "Yes, Some Difficulty" = 2,
               "Yes, Severe Difficulty" = 3,
               "Yes, Cant see/hear/walk/remember/selfcare/communicate at all" = 4)
)
attr(rdatafile[["S1AQ12"]], "label") <- "Does (name) have difficulty in seeing, even if he or she has glasses?"

rdatafile[["S1AQ13"]] <- haven::labelled_spss(rdatafile[["S1AQ13"]],
    labels = c("No Difficulty" = 1,
               "Yes, Some Difficulty" = 2,
               "Yes, Severe Difficulty" = 3,
               "Yes, Cant see/hear/walk/remember/selfcare/communicate at all" = 4)
)
attr(rdatafile[["S1AQ13"]], "label") <- "Does (name) have difficulty in hearing, even if he or she is wearing a hearing a"

rdatafile[["S1AQ14"]] <- haven::labelled_spss(rdatafile[["S1AQ14"]],
    labels = c("No Difficulty" = 1,
               "Yes, Some Difficulty" = 2,
               "Yes, Severe Difficulty" = 3,
               "Yes, Cant see/hear/walk/remember/selfcare/communicate at all" = 4)
)
attr(rdatafile[["S1AQ14"]], "label") <- "Does (name) have difficulty in walking/climbing or any other physica movement?"

rdatafile[["S1AQ15"]] <- haven::labelled_spss(rdatafile[["S1AQ15"]],
    labels = c("No Difficulty" = 1,
               "Yes, Some Difficulty" = 2,
               "Yes, Severe Difficulty" = 3,
               "Yes, Cant see/hear/walk/remember/selfcare/communicate at all" = 4)
)
attr(rdatafile[["S1AQ15"]], "label") <- "Does (name) have difficulty in remembering or concentrating?"

rdatafile[["S1AQ16"]] <- haven::labelled_spss(rdatafile[["S1AQ16"]],
    labels = c("No Difficulty" = 1,
               "Yes, Some Difficulty" = 2,
               "Yes, Severe Difficulty" = 3,
               "Yes, Cant see/hear/walk/remember/selfcare/communicate at all" = 4)
)
attr(rdatafile[["S1AQ16"]], "label") <- "Does (name) have difficulty in (with self care such as) washing all over, dressi"

rdatafile[["S1AQ17"]] <- haven::labelled_spss(rdatafile[["S1AQ17"]],
    labels = c("No Difficulty" = 1,
               "Yes, Some Difficulty" = 2,
               "Yes, Severe Difficulty" = 3,
               "Yes, Cant see/hear/walk/remember/selfcare/communicate at all" = 4)
)
attr(rdatafile[["S1AQ17"]], "label") <- "Does (name) have difficulty in communicating, that is understanding or being und"

attr(rdatafile[["PSU"]], "label") <- "Primary Sampling Unit Serial Number"

attr(rdatafile[["HHID"]], "label") <- "Household id"

rdatafile[["QUARTER"]] <- haven::labelled_spss(rdatafile[["QUARTER"]],
    labels = c("" = )
)
attr(rdatafile[["QUARTER"]], "label") <- "Quarters"

attr(rdatafile[["HHWGT"]], "label") <- "Household annual weight"

attr(rdatafile[["STRATUM"]], "label") <- "Stratum 132 annual estimates"

rdatafile[["STRATUM16"]] <- haven::labelled_spss(rdatafile[["STRATUM16"]],
    labels = c("Barisal Rural" = 1,
               "Barisal Urban" = 2,
               "Chittagong Rural" = 3,
               "Chittagong Urban" = 4,
               "Chittagong City Corp." = 5,
               "Dhaka Rural" = 6,
               "Dhaka Urban" = 7,
               "Dhaka City Corp." = 8,
               "Khulna Rural" = 9,
               "Khulna Urban" = 10,
               "Khulna City Corp." = 11,
               "Rajshahi Rural" = 12,
               "Rajshahi Urban" = 13,
               "Rajshahi City Corp." = 14,
               "Sylhet Rural" = 15,
               "Sylhet Urban" = 16)
)
attr(rdatafile[["STRATUM16"]], "label") <- "Stratum 16 quarterly estimates"

rdatafile[["RUC"]] <- haven::labelled_spss(rdatafile[["RUC"]],
    labels = c("" = )
)
attr(rdatafile[["RUC"]], "label") <- "Rural / PSA / City Corp"

rdatafile[["URBRURAL"]] <- haven::labelled_spss(rdatafile[["URBRURAL"]],
    labels = c("Rural" = 1,
               "Urban" = 2)
)
attr(rdatafile[["URBRURAL"]], "label") <- "1 Rural, 2 Urban"

attr(rdatafile[["DIVISION_CODE"]], "label") <- "Division Code"

rdatafile[["DIVISION_NAME"]] <- haven::labelled_spss(rdatafile[["DIVISION_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["DIVISION_NAME"]], "label") <- "Division Name"

attr(rdatafile[["ZILA_CODE"]], "label") <- "Zila/District code"

rdatafile[["ZILA_NAME"]] <- haven::labelled_spss(rdatafile[["ZILA_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["ZILA_NAME"]], "label") <- "Zila/District name"

rdatafile[["INDID"]] <- haven::labelled_spss(rdatafile[["INDID"]],
    labels = c("" = )
)
attr(rdatafile[["INDID"]], "label") <- "ID CODE"

rdatafile[["S1BQ01"]] <- haven::labelled_spss(rdatafile[["S1BQ01"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S1BQ01"]], "label") <- "Did you work for livelihood during the past 7 days?"

rdatafile[["S1BQ02"]] <- haven::labelled_spss(rdatafile[["S1BQ02"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S1BQ02"]], "label") <- "Were you available for work during the past 7 days?"

rdatafile[["S1BQ03"]] <- haven::labelled_spss(rdatafile[["S1BQ03"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S1BQ03"]], "label") <- "Did you looking for work during the past 7 days?"

rdatafile[["S1BQ04"]] <- haven::labelled_spss(rdatafile[["S1BQ04"]],
    labels = c("Engaged in domestic work" = 1,
               "Housewife" = 2,
               "Student" = 3,
               "Too old/ retired" = 4,
               "Too young" = 5,
               "Temporarily sick" = 6,
               "Disabled" = 7,
               "Waiting to start new job" = 8,
               "No work available" = 9,
               "On leave/looking for job/business" = 10,
               "Other (Specify)" = 11)
)
attr(rdatafile[["S1BQ04"]], "label") <- "Why were you not available/ did you not looking for work?"

attr(rdatafile[["PSU"]], "label") <- "Primary Sampling Unit Serial Number"

attr(rdatafile[["HHID"]], "label") <- "Household id"

rdatafile[["QUARTER"]] <- haven::labelled_spss(rdatafile[["QUARTER"]],
    labels = c("" = )
)
attr(rdatafile[["QUARTER"]], "label") <- "Quarters"

attr(rdatafile[["HHWGT"]], "label") <- "Household annual weight"

attr(rdatafile[["STRATUM"]], "label") <- "Stratum 132 annual estimates"

rdatafile[["STRATUM16"]] <- haven::labelled_spss(rdatafile[["STRATUM16"]],
    labels = c("Barisal Rural" = 1,
               "Barisal Urban" = 2,
               "Chittagong Rural" = 3,
               "Chittagong Urban" = 4,
               "Chittagong City Corp." = 5,
               "Dhaka Rural" = 6,
               "Dhaka Urban" = 7,
               "Dhaka City Corp." = 8,
               "Khulna Rural" = 9,
               "Khulna Urban" = 10,
               "Khulna City Corp." = 11,
               "Rajshahi Rural" = 12,
               "Rajshahi Urban" = 13,
               "Rajshahi City Corp." = 14,
               "Sylhet Rural" = 15,
               "Sylhet Urban" = 16)
)
attr(rdatafile[["STRATUM16"]], "label") <- "Stratum 16 quarterly estimates"

rdatafile[["RUC"]] <- haven::labelled_spss(rdatafile[["RUC"]],
    labels = c("" = )
)
attr(rdatafile[["RUC"]], "label") <- "Rural / PSA / City Corp"

rdatafile[["URBRURAL"]] <- haven::labelled_spss(rdatafile[["URBRURAL"]],
    labels = c("Rural" = 1,
               "Urban" = 2)
)
attr(rdatafile[["URBRURAL"]], "label") <- "1 Rural, 2 Urban"

attr(rdatafile[["DIVISION_CODE"]], "label") <- "Division Code"

rdatafile[["DIVISION_NAME"]] <- haven::labelled_spss(rdatafile[["DIVISION_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["DIVISION_NAME"]], "label") <- "Division Name"

attr(rdatafile[["ZILA_CODE"]], "label") <- "Zila/District code"

rdatafile[["ZILA_NAME"]] <- haven::labelled_spss(rdatafile[["ZILA_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["ZILA_NAME"]], "label") <- "Zila/District name"

attr(rdatafile[["S1CQ0A"]], "label") <- "Respondent ID Code"

attr(rdatafile[["INDID"]], "label") <- "ID CODE"

rdatafile[["S1CQ01"]] <- haven::labelled_spss(rdatafile[["S1CQ01"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S1CQ01"]], "label") <- "Is [NAME] currently enrolled / has received any assistance from any safety net p"

rdatafile[["S1CQ02"]] <- haven::labelled_spss(rdatafile[["S1CQ02"]],
    labels = c("Ananda School (ROSC) [Cash/kind]" = 1,
               "Stipend for Primary Students" = 2,
               "School Feeding Program" = 3,
               "Stipend for Secondary and higher students (boys/girls)" = 4,
               "Stipend for Dropout Students" = 5,
               "Stipend for Disabled Students" = 6,
               "Old Age Allowance" = 7,
               "Widow/Deserted/Destitute Women Allowances" = 8,
               "Maternity Allowance Programme for the Poor Lactating Mothers" = 9,
               "Maternal Health Voucher Scheme" = 10,
               "Honorarium for Insolvent Freedom Fighters" = 11,
               "Honorarium & Medical Allowances for Injured Freedom Fighters" = 12,
               "Ration for Shaheed Family and Injured Freedom Fighters" = 13,
               "Allowances for Distressed Cultural Personalities/Activists" = 14,
               "Allowances for the Financially Insolvent Disabled" = 15,
               "Vulnerable Group Development (VGD)" = 16,
               "Vulnerable Group Feeding (VGF)" = 17,
               "General Relief Activities" = 18,
               "Gratuitous Relief (GR)- Food/ Cash" = 19,
               "Allowance for Beneficiaries in CTG-Hill Tracts Area" = 20,
               "Food Assistance in CTG-Hill Tracts Area" = 21,
               "Employment Generation Programme for the Ultra Poor" = 22,
               "Food/ Cash For Work (FFW/CFW)" = 23,
               "Test Relief (TR) Food (cash)" = 24,
               "Rural Employment Opportunity for Public Asset (REOPA)" = 25,
               "Rural Employment and Road Maintenance Programme (RERMP)" = 26,
               "One Household One Farm" = 27,
               "Housing Support" = 28,
               "Agriculture Rehabilitation" = 29,
               "Targeted Ultra Poor (TUP) (BRAC)" = 30,
               "Char Livelihood Project" = 31,
               "Economic Empowerment for the Poor/Shiree" = 32,
               "Urban Partnership for Poverty Reduction (UPPR)" = 33,
               "Shouhardo Program" = 34,
               "Nabojibon Program (Save the Children)" = 35,
               "Proshar Program (ACDI VOCA)" = 36,
               "Other (specify)" = 88)
)
attr(rdatafile[["S1CQ02"]], "label") <- "If yes, in which program [NAME] has included in the last 12 months?"

attr(rdatafile[["S1CQ03A"]], "label") <- "When did [NAME] enlist in this programme? (Month)"

attr(rdatafile[["S1CQ03B"]], "label") <- "When did [Name] enlist in this programme? (Year)"

attr(rdatafile[["S1CQ04A"]], "label") <- "When did (name) received last payment from this program? (Month)"

attr(rdatafile[["S1CQ04B"]], "label") <- "When did (name) received last payment from this program? (Year)"

attr(rdatafile[["S1CQ05A"]], "label") <- "How much did [NAME] receive in cash/in kind in last payment? (Cash)"

attr(rdatafile[["S1CQ05B"]], "label") <- "For how many months or days"

rdatafile[["S1CQ05C"]] <- haven::labelled_spss(rdatafile[["S1CQ05C"]],
    labels = c("Day" = 1,
               "Month" = 2,
               "One Shot" = 3)
)
attr(rdatafile[["S1CQ05C"]], "label") <- "Time unit"

rdatafile[["S1CQ06"]] <- haven::labelled_spss(rdatafile[["S1CQ06"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S1CQ06"]], "label") <- "Did [NAME] received payment in-kind?"

rdatafile[["S1CQ071A"]] <- haven::labelled_spss(rdatafile[["S1CQ071A"]],
    labels = c("Rice" = 1,
               "Fortified rice" = 2,
               "Wheat" = 3,
               "Maize" = 4,
               "Flour" = 5,
               "Fortified flour" = 6,
               "Parched rice, flattened rice" = 7,
               "Pulse" = 8,
               "Edible oil" = 9,
               "Powder milk" = 10,
               "Packaged liquid milk" = 11,
               "Biscuit" = 12,
               "Clothes/blanket" = 13,
               "Cook-stove" = 14,
               "Cow/ox/bull/buffalo" = 15,
               "Goat/sheeps" = 16,
               "Chicken/duck (Poultry)" = 17,
               "Boat/engine boat" = 18,
               "Rickshaw/van/cart" = 19,
               "Tin" = 20,
               "Latrine" = 21,
               "Housing" = 22,
               "Other (specify)" = 88)
)
attr(rdatafile[["S1CQ071A"]], "label") <- "Code"

attr(rdatafile[["S1CQ071B"]], "label") <- "Quantity"

rdatafile[["S1CQ071C"]] <- haven::labelled_spss(rdatafile[["S1CQ071C"]],
    labels = c("Kg" = 1,
               "Liter" = 2,
               "Number" = 3)
)
attr(rdatafile[["S1CQ071C"]], "label") <- "Unit"

attr(rdatafile[["S1CQ071D"]], "label") <- "Total value of in-kind goods"

rdatafile[["S1CQ072A"]] <- haven::labelled_spss(rdatafile[["S1CQ072A"]],
    labels = c("Rice" = 1,
               "Fortified rice" = 2,
               "Wheat" = 3,
               "Maize" = 4,
               "Flour" = 5,
               "Fortified flour" = 6,
               "Parched rice, flattened rice" = 7,
               "Pulse" = 8,
               "Edible oil" = 9,
               "Powder milk" = 10,
               "Packaged liquid milk" = 11,
               "Biscuit" = 12,
               "Clothes/blanket" = 13,
               "Cook-stove" = 14,
               "Cow/ox/bull/buffalo" = 15,
               "Goat/sheeps" = 16,
               "Chicken/duck (Poultry)" = 17,
               "Boat/engine boat" = 18,
               "Rickshaw/van/cart" = 19,
               "Tin" = 20,
               "Latrine" = 21,
               "Housing" = 22,
               "Other (specify)" = 88)
)
attr(rdatafile[["S1CQ072A"]], "label") <- "Code"

rdatafile[["S1CQ072B"]] <- haven::labelled_spss(rdatafile[["S1CQ072B"]],
    labels = c("" = )
)
attr(rdatafile[["S1CQ072B"]], "label") <- "Quantity"

rdatafile[["S1CQ072C"]] <- haven::labelled_spss(rdatafile[["S1CQ072C"]],
    labels = c("Kg" = 1,
               "Liter" = 2,
               "Number" = 3)
)
attr(rdatafile[["S1CQ072C"]], "label") <- "Unit"

attr(rdatafile[["S1CQ072D"]], "label") <- "Total value of in-kind goods"

attr(rdatafile[["S1CQ07E"]], "label") <- "For how many months or days?"

rdatafile[["S1CQ07F"]] <- haven::labelled_spss(rdatafile[["S1CQ07F"]],
    labels = c("Day" = 1,
               "Months" = 2,
               "One-shot" = 3)
)
attr(rdatafile[["S1CQ07F"]], "label") <- "Time unit"

rdatafile[["S1CQ08A"]] <- haven::labelled_spss(rdatafile[["S1CQ08A"]],
    labels = c("Bank A/C" = 1,
               "Post Office" = 2,
               "BKASH" = 3,
               "Mobile Banking" = 4,
               "Hand to hand" = 5,
               "Other" = 6)
)
attr(rdatafile[["S1CQ08A"]], "label") <- "What was / were the payment method(s)? (1ST)"

rdatafile[["S1CQ08B"]] <- haven::labelled_spss(rdatafile[["S1CQ08B"]],
    labels = c("Bank A/C" = 1,
               "Post Office" = 2,
               "BKASH" = 3,
               "Mobile Banking" = 4,
               "Hand to hand" = 5,
               "Other" = 6)
)
attr(rdatafile[["S1CQ08B"]], "label") <- "What was / were the payment method(s)? (2ND)"

attr(rdatafile[["S1CQ09A"]], "label") <- "Cash"

rdatafile[["S1CQ091A"]] <- haven::labelled_spss(rdatafile[["S1CQ091A"]],
    labels = c("Rice" = 1,
               "Fortified rice" = 2,
               "Wheat" = 3,
               "Maize" = 4,
               "Flour" = 5,
               "Fortified flour" = 6,
               "Parched rice, flattened rice" = 7,
               "Pulse" = 8,
               "Edible oil" = 9,
               "Powder milk" = 10,
               "Packaged liquid milk" = 11,
               "Biscuit" = 12,
               "Clothes/blanket" = 13,
               "Cook-stove" = 14,
               "Cow/ox/bull/buffalo" = 15,
               "Goat/sheeps" = 16,
               "Chicken/duck (Poultry)" = 17,
               "Boat/engine boat" = 18,
               "Rickshaw/van/cart" = 19,
               "Tin" = 20,
               "Latrine" = 21,
               "Housing" = 22,
               "Other (specify)" = 88)
)
attr(rdatafile[["S1CQ091A"]], "label") <- "Code"

attr(rdatafile[["S1CQ091B"]], "label") <- "Quantity of in-kind goods"

rdatafile[["S1CQ091C"]] <- haven::labelled_spss(rdatafile[["S1CQ091C"]],
    labels = c("Kg" = 1,
               "Liter" = 2,
               "Number" = 3)
)
attr(rdatafile[["S1CQ091C"]], "label") <- "Unit of measure"

attr(rdatafile[["S1CQ091D"]], "label") <- "Total value of in-kind goods"

rdatafile[["S1CQ092A"]] <- haven::labelled_spss(rdatafile[["S1CQ092A"]],
    labels = c("Rice" = 1,
               "Fortified rice" = 2,
               "Wheat" = 3,
               "Maize" = 4,
               "Flour" = 5,
               "Fortified flour" = 6,
               "Parched rice, flattened rice" = 7,
               "Pulse" = 8,
               "Edible oil" = 9,
               "Powder milk" = 10,
               "Packaged liquid milk" = 11,
               "Biscuit" = 12,
               "Clothes/blanket" = 13,
               "Cook-stove" = 14,
               "Cow/ox/bull/buffalo" = 15,
               "Goat/sheeps" = 16,
               "Chicken/duck (Poultry)" = 17,
               "Boat/engine boat" = 18,
               "Rickshaw/van/cart" = 19,
               "Tin" = 20,
               "Latrine" = 21,
               "Housing" = 22,
               "Other (specify)" = 88)
)
attr(rdatafile[["S1CQ092A"]], "label") <- "Code"

attr(rdatafile[["S1CQ092B"]], "label") <- "Quantity of in-kind goods"

rdatafile[["S1CQ092C"]] <- haven::labelled_spss(rdatafile[["S1CQ092C"]],
    labels = c("Kg" = 1,
               "Liter" = 2,
               "Number" = 3)
)
attr(rdatafile[["S1CQ092C"]], "label") <- "Unit of measure"

attr(rdatafile[["S1CQ092D"]], "label") <- "Total value of in-kind goods"

attr(rdatafile[["S1CQ10A"]], "label") <- "Cash"

rdatafile[["S1CQ101A"]] <- haven::labelled_spss(rdatafile[["S1CQ101A"]],
    labels = c("Rice" = 1,
               "Fortified rice" = 2,
               "Wheat" = 3,
               "Maize" = 4,
               "Flour" = 5,
               "Fortified flour" = 6,
               "Parched rice, flattened rice" = 7,
               "Pulse" = 8,
               "Edible oil" = 9,
               "Powder milk" = 10,
               "Packaged liquid milk" = 11,
               "Biscuit" = 12,
               "Clothes/blanket" = 13,
               "Cook-stove" = 14,
               "Cow/ox/bull/buffalo" = 15,
               "Goat/sheeps" = 16,
               "Chicken/duck (Poultry)" = 17,
               "Boat/engine boat" = 18,
               "Rickshaw/van/cart" = 19,
               "Tin" = 20,
               "Latrine" = 21,
               "Housing" = 22,
               "Other (specify)" = 88)
)
attr(rdatafile[["S1CQ101A"]], "label") <- "Code"

attr(rdatafile[["S1CQ101B"]], "label") <- "Quantity of in-kind goods"

rdatafile[["S1CQ101C"]] <- haven::labelled_spss(rdatafile[["S1CQ101C"]],
    labels = c("Kg" = 1,
               "Liter" = 2,
               "Number" = 3)
)
attr(rdatafile[["S1CQ101C"]], "label") <- "Unit of measure"

attr(rdatafile[["S1CQ101D"]], "label") <- "Total value of in-kind goods"

rdatafile[["S1CQ102A"]] <- haven::labelled_spss(rdatafile[["S1CQ102A"]],
    labels = c("Rice" = 1,
               "Fortified rice" = 2,
               "Wheat" = 3,
               "Maize" = 4,
               "Flour" = 5,
               "Fortified flour" = 6,
               "Parched rice, flattened rice" = 7,
               "Pulse" = 8,
               "Edible oil" = 9,
               "Powder milk" = 10,
               "Packaged liquid milk" = 11,
               "Biscuit" = 12,
               "Clothes/blanket" = 13,
               "Cook-stove" = 14,
               "Cow/ox/bull/buffalo" = 15,
               "Goat/sheeps" = 16,
               "Chicken/duck (Poultry)" = 17,
               "Boat/engine boat" = 18,
               "Rickshaw/van/cart" = 19,
               "Tin" = 20,
               "Latrine" = 21,
               "Housing" = 22,
               "Other (specify)" = 88)
)
attr(rdatafile[["S1CQ102A"]], "label") <- "Code"

attr(rdatafile[["S1CQ102B"]], "label") <- "Quantity of in-kind goods"

rdatafile[["S1CQ102C"]] <- haven::labelled_spss(rdatafile[["S1CQ102C"]],
    labels = c("Kg" = 1,
               "Liter" = 2,
               "Number" = 3)
)
attr(rdatafile[["S1CQ102C"]], "label") <- "Unit of measure"

attr(rdatafile[["S1CQ102D"]], "label") <- "Total value of in-kind goods"

rdatafile[["S1CQ11A"]] <- haven::labelled_spss(rdatafile[["S1CQ11A"]],
    labels = c("Household head is female/widow/ divorced/separated or husband is physically/mentally handicapped." = 1,
               "Household head is physically/mentally handicapped." = 2,
               "Household has no capable/able bodied adult male." = 3,
               "Household head?s main occupation is ag./non-ag. day labor." = 4,
               "Any Household member (other than HH head) has main occupation of ag./non-ag day labor or beggar." = 5,
               "Any child of the household engaged in child labor." = 6,
               "The household has land less than 50 decimal of land or land less." = 7,
               "The household does sharecropping." = 8,
               "The household has almost no productive assets." = 9,
               "Household members are ineligible (extreme poor, no savings, etc) to get credit." = 10,
               "The household members cannot have 3 square meals per day." = 11,
               "The household is suffering food insecurity due to disaster." = 12,
               "The household has school going children." = 13,
               "The household has school drop-out children going to school now." = 14,
               "The person is a insolvent freedom fighter." = 15,
               "The person is a injured freedom fighter." = 16,
               "The person is a distressed cultural personality/ activists." = 17,
               "Beneficiary is a physically/mentally handicapped person." = 18,
               "Beneficiary is a distressed & old aged person." = 19,
               "Beneficiary is a widow/divorced/separated women." = 20,
               "Other (specify)" = 88,
               "Don't know" = 99)
)
attr(rdatafile[["S1CQ11A"]], "label") <- "For what criteria your (name)/ household is selected for this program? (1ST)"

rdatafile[["S1CQ11B"]] <- haven::labelled_spss(rdatafile[["S1CQ11B"]],
    labels = c("Household head is female/widow/ divorced/separated or husband is physically/mentally handicapped." = 1,
               "Household head is physically/mentally handicapped." = 2,
               "Household has no capable/able bodied adult male." = 3,
               "Household head?s main occupation is ag./non-ag. day labor." = 4,
               "Any Household member (other than HH head) has main occupation of ag./non-ag day labor or beggar." = 5,
               "Any child of the household engaged in child labor." = 6,
               "The household has land less than 50 decimal of land or land less." = 7,
               "The household does sharecropping." = 8,
               "The household has almost no productive assets." = 9,
               "Household members are ineligible (extreme poor, no savings, etc) to get credit." = 10,
               "The household members cannot have 3 square meals per day." = 11,
               "The household is suffering food insecurity due to disaster." = 12,
               "The household has school going children." = 13,
               "The household has school drop-out children going to school now." = 14,
               "The person is a insolvent freedom fighter." = 15,
               "The person is a injured freedom fighter." = 16,
               "The person is a distressed cultural personality/ activists." = 17,
               "Beneficiary is a physically/mentally handicapped person." = 18,
               "Beneficiary is a distressed & old aged person." = 19,
               "Beneficiary is a widow/divorced/separated women." = 20,
               "Other (specify)" = 88,
               "Don't know" = 99)
)
attr(rdatafile[["S1CQ11B"]], "label") <- "For what criteria your (name)/ household is selected for this program? (2ND)"

rdatafile[["S1CQ12"]] <- haven::labelled_spss(rdatafile[["S1CQ12"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S1CQ12"]], "label") <- "Did (name) know about this safety net program before participation?"

rdatafile[["S1CQ13"]] <- haven::labelled_spss(rdatafile[["S1CQ13"]],
    labels = c("Miking" = 1,
               "Mobile message" = 2,
               "Newspaper" = 3,
               "Radio program" = 4,
               "TV program" = 5,
               "Chairman/secretary/ Member of the union parishad committee/guard" = 6,
               "Teacher, member of school Committee" = 7,
               "Local influential person" = 8,
               "Friend/family/relative/neighbor" = 9,
               "Others (specify)" = 88)
)
attr(rdatafile[["S1CQ13"]], "label") <- "How did (name) know about about this program?"

rdatafile[["S1CQ14"]] <- haven::labelled_spss(rdatafile[["S1CQ14"]],
    labels = c("Applied and selected" = 1,
               "Persued/some one referred and selected" = 2,
               "Selection committee selected" = 3,
               "NGO selected" = 4,
               "Other (specify)" = 88,
               "Don?t know" = 89)
)
attr(rdatafile[["S1CQ14"]], "label") <- "What was the selection process:How did (name) selected in this program?"

rdatafile[["S1CQ15"]] <- haven::labelled_spss(rdatafile[["S1CQ15"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S1CQ15"]], "label") <- "Did (name) had to pay any money to be included in this program?"

attr(rdatafile[["S1CQ16"]], "label") <- "How much did (name) had to pay?"

attr(rdatafile[["S1CQ072B_R"]], "label") <- "Quantity"

attr(rdatafile[["PSU"]], "label") <- "Primary Sampling Unit Serial Number"

attr(rdatafile[["HHID"]], "label") <- "Household id"

rdatafile[["QUARTER"]] <- haven::labelled_spss(rdatafile[["QUARTER"]],
    labels = c("" = )
)
attr(rdatafile[["QUARTER"]], "label") <- "Quarters"

attr(rdatafile[["HHWGT"]], "label") <- "Household annual weight"

attr(rdatafile[["STRATUM"]], "label") <- "Stratum 132 annual estimates"

rdatafile[["STRATUM16"]] <- haven::labelled_spss(rdatafile[["STRATUM16"]],
    labels = c("Barisal Rural" = 1,
               "Barisal Urban" = 2,
               "Chittagong Rural" = 3,
               "Chittagong Urban" = 4,
               "Chittagong City Corp." = 5,
               "Dhaka Rural" = 6,
               "Dhaka Urban" = 7,
               "Dhaka City Corp." = 8,
               "Khulna Rural" = 9,
               "Khulna Urban" = 10,
               "Khulna City Corp." = 11,
               "Rajshahi Rural" = 12,
               "Rajshahi Urban" = 13,
               "Rajshahi City Corp." = 14,
               "Sylhet Rural" = 15,
               "Sylhet Urban" = 16)
)
attr(rdatafile[["STRATUM16"]], "label") <- "Stratum 16 quarterly estimates"

rdatafile[["RUC"]] <- haven::labelled_spss(rdatafile[["RUC"]],
    labels = c("" = )
)
attr(rdatafile[["RUC"]], "label") <- "Rural / PSA / City Corp"

rdatafile[["URBRURAL"]] <- haven::labelled_spss(rdatafile[["URBRURAL"]],
    labels = c("Rural" = 1,
               "Urban" = 2)
)
attr(rdatafile[["URBRURAL"]], "label") <- "1 Rural, 2 Urban"

attr(rdatafile[["DIVISION_CODE"]], "label") <- "Division Code"

rdatafile[["DIVISION_NAME"]] <- haven::labelled_spss(rdatafile[["DIVISION_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["DIVISION_NAME"]], "label") <- "Division Name"

attr(rdatafile[["ZILA_CODE"]], "label") <- "Zila/District code"

rdatafile[["ZILA_NAME"]] <- haven::labelled_spss(rdatafile[["ZILA_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["ZILA_NAME"]], "label") <- "Zila/District name"

attr(rdatafile[["S2AQ0A"]], "label") <- "Respondent ID Code"

rdatafile[["INDID"]] <- haven::labelled_spss(rdatafile[["INDID"]],
    labels = c("" = )
)
attr(rdatafile[["INDID"]], "label") <- "ID CODE"

rdatafile[["S2AQ01"]] <- haven::labelled_spss(rdatafile[["S2AQ01"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S2AQ01"]], "label") <- "Can you read a letter?"

rdatafile[["S2AQ02"]] <- haven::labelled_spss(rdatafile[["S2AQ02"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S2AQ02"]], "label") <- "Can you write a letter?"

rdatafile[["S2AQ03"]] <- haven::labelled_spss(rdatafile[["S2AQ03"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S2AQ03"]], "label") <- "Have you ever attended education?"

rdatafile[["S2AQ04"]] <- haven::labelled_spss(rdatafile[["S2AQ04"]],
    labels = c("No class passed/pre-schooling" = 0,
               "Class 1" = 1,
               "Class 2" = 2,
               "Class 3" = 3,
               "Class 4" = 4,
               "PEC/equivalent" = 5,
               "Class 6" = 6,
               "Class 7" = 7,
               "JSC/equivalent" = 8,
               "Class 9" = 9,
               "SSC/equivalent" = 10,
               "HSC/equivalent" = 11,
               "Vocational" = 12,
               "Nursing" = 13,
               "Technical Education" = 14,
               "Graduate/equivalent" = 15,
               "Medical" = 16,
               "Engineering" = 17,
               "Post graduate/equivalent" = 18,
               "Other (Specify)" = 19)
)
attr(rdatafile[["S2AQ04"]], "label") <- "What was the highest class that you completed?"

rdatafile[["S2AQ05"]] <- haven::labelled_spss(rdatafile[["S2AQ05"]],
    labels = c("Formal School" = 1,
               "Formal College" = 2,
               "Formal University" = 3,
               "Madrasha" = 4,
               "Govt. informal literacy programme" = 5,
               "NGO literacy course" = 6,
               "Other (specify)" = 7)
)
attr(rdatafile[["S2AQ05"]], "label") <- "Where did you do last study/are you currently studying?"

rdatafile[["S2AQ06"]] <- haven::labelled_spss(rdatafile[["S2AQ06"]],
    labels = c("Government" = 1,
               "Private (Govt. grants)" = 2,
               "Private (Not govt. grants)" = 3,
               "NGO run institution" = 4,
               "Madrasa (Govt. affiliated)" = 5,
               "Madrasa (Kowmi)" = 6)
)
attr(rdatafile[["S2AQ06"]], "label") <- "What type of school/ institution did you last attended/ are you currently attend"

rdatafile[["S2AQ07"]] <- haven::labelled_spss(rdatafile[["S2AQ07"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S2AQ07"]], "label") <- "Was the last studies abroad (outside Bangladesh)?"

attr(rdatafile[["PSU"]], "label") <- "Primary Sampling Unit Serial Number"

attr(rdatafile[["HHID"]], "label") <- "Household id"

rdatafile[["QUARTER"]] <- haven::labelled_spss(rdatafile[["QUARTER"]],
    labels = c("" = )
)
attr(rdatafile[["QUARTER"]], "label") <- "Quarters"

attr(rdatafile[["HHWGT"]], "label") <- "Household annual weight"

attr(rdatafile[["STRATUM"]], "label") <- "Stratum 132 annual estimates"

rdatafile[["STRATUM16"]] <- haven::labelled_spss(rdatafile[["STRATUM16"]],
    labels = c("Barisal Rural" = 1,
               "Barisal Urban" = 2,
               "Chittagong Rural" = 3,
               "Chittagong Urban" = 4,
               "Chittagong City Corp." = 5,
               "Dhaka Rural" = 6,
               "Dhaka Urban" = 7,
               "Dhaka City Corp." = 8,
               "Khulna Rural" = 9,
               "Khulna Urban" = 10,
               "Khulna City Corp." = 11,
               "Rajshahi Rural" = 12,
               "Rajshahi Urban" = 13,
               "Rajshahi City Corp." = 14,
               "Sylhet Rural" = 15,
               "Sylhet Urban" = 16)
)
attr(rdatafile[["STRATUM16"]], "label") <- "Stratum 16 quarterly estimates"

rdatafile[["RUC"]] <- haven::labelled_spss(rdatafile[["RUC"]],
    labels = c("" = )
)
attr(rdatafile[["RUC"]], "label") <- "Rural / PSA / City Corp"

rdatafile[["URBRURAL"]] <- haven::labelled_spss(rdatafile[["URBRURAL"]],
    labels = c("Rural" = 1,
               "Urban" = 2)
)
attr(rdatafile[["URBRURAL"]], "label") <- "1 Rural, 2 Urban"

attr(rdatafile[["DIVISION_CODE"]], "label") <- "Division Code"

rdatafile[["DIVISION_NAME"]] <- haven::labelled_spss(rdatafile[["DIVISION_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["DIVISION_NAME"]], "label") <- "Division Name"

attr(rdatafile[["ZILA_CODE"]], "label") <- "Zila/District code"

rdatafile[["ZILA_NAME"]] <- haven::labelled_spss(rdatafile[["ZILA_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["ZILA_NAME"]], "label") <- "Zila/District name"

attr(rdatafile[["S2BQ0A"]], "label") <- "Respondent ID Code"

rdatafile[["INDID"]] <- haven::labelled_spss(rdatafile[["INDID"]],
    labels = c("" = )
)
attr(rdatafile[["INDID"]], "label") <- "ID CODE"

rdatafile[["S2BQ01"]] <- haven::labelled_spss(rdatafile[["S2BQ01"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S2BQ01"]], "label") <- "Are you currently attending school/ educational institution?"

rdatafile[["S2BQ02"]] <- haven::labelled_spss(rdatafile[["S2BQ02"]],
    labels = c("Do not want to study more" = 1,
               "Too old to go back" = 2,
               "No money/too expensive" = 3,
               "No schools close to home" = 4,
               "Have to work" = 5,
               "Attending family chores" = 6,
               "For marriage" = 7)
)
attr(rdatafile[["S2BQ02"]], "label") <- "Why aren't you attending school?"

rdatafile[["S2BQ03"]] <- haven::labelled_spss(rdatafile[["S2BQ03"]],
    labels = c("No class passed/pre-schooling" = 0,
               "Class 1" = 1,
               "Class 2" = 2,
               "Class 3" = 3,
               "Class 4" = 4,
               "PEC/equivalent" = 5,
               "Class 6" = 6,
               "Class 7" = 7,
               "JSC/equivalent" = 8,
               "Class 9" = 9,
               "SSC/equivalent" = 10,
               "HSC/equivalent" = 11,
               "Vocational" = 12,
               "Nursing" = 13,
               "Technical Education" = 14,
               "Graduate/equivalent" = 15,
               "Medical" = 16,
               "Engineering" = 17,
               "Post graduate/equivalent" = 18,
               "Other (Specify)" = 19)
)
attr(rdatafile[["S2BQ03"]], "label") <- "What class are you currently attending?"

rdatafile[["S2BQ04"]] <- haven::labelled_spss(rdatafile[["S2BQ04"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S2BQ04"]], "label") <- "Are you receiving any stipend for education?"

rdatafile[["S2BQ05"]] <- haven::labelled_spss(rdatafile[["S2BQ05"]],
    labels = c("PEC" = 1,
               "JSC" = 2,
               "SSC" = 3,
               "HSC" = 4,
               "Graduate/equivalent" = 5,
               "Post graduate/ equivalent" = 6,
               "Other (Specify)" = 7)
)
attr(rdatafile[["S2BQ05"]], "label") <- "Which one?"

attr(rdatafile[["S2BQ06"]], "label") <- "How much did you receive in total in the past 12 months?"

rdatafile[["S2BQ07"]] <- haven::labelled_spss(rdatafile[["S2BQ07"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S2BQ07"]], "label") <- "Do you benefit from the tuition waiver?"

attr(rdatafile[["S2BQ08A"]], "label") <- "Admission fees"

attr(rdatafile[["S2BQ08B"]], "label") <- "Annual session fees"

attr(rdatafile[["S2BQ08C"]], "label") <- "Institute fees/ donation"

attr(rdatafile[["S2BQ08D"]], "label") <- "Registration fees"

attr(rdatafile[["S2BQ08E"]], "label") <- "Examination fees"

attr(rdatafile[["S2BQ08F"]], "label") <- "Tuition fees"

attr(rdatafile[["S2BQ08G"]], "label") <- "Text books/ Note books"

attr(rdatafile[["S2BQ08H"]], "label") <- "Exercise books/ stationary"

attr(rdatafile[["S2BQ08I"]], "label") <- "Uniform dress/ footwear"

attr(rdatafile[["S2BQ08J"]], "label") <- "Private tutoring"

attr(rdatafile[["S2BQ08K"]], "label") <- "Coaching fees"

attr(rdatafile[["S2BQ08L"]], "label") <- "Hostel expensed (including food)"

attr(rdatafile[["S2BQ08M"]], "label") <- "Transport cost"

attr(rdatafile[["S2BQ08N"]], "label") <- "Tiffin cost"

attr(rdatafile[["S2BQ08O"]], "label") <- "Internet/ e-mail cost (edu-related)"

attr(rdatafile[["S2BQ08P"]], "label") <- "Other edu-related expenses"

attr(rdatafile[["S2BQ08Q"]], "label") <- "Total expenses"

attr(rdatafile[["PSU"]], "label") <- "Primary Sampling Unit Serial Number"

attr(rdatafile[["HHID"]], "label") <- "Household id"

rdatafile[["QUARTER"]] <- haven::labelled_spss(rdatafile[["QUARTER"]],
    labels = c("" = )
)
attr(rdatafile[["QUARTER"]], "label") <- "Quarters"

attr(rdatafile[["HHWGT"]], "label") <- "Household annual weight"

attr(rdatafile[["STRATUM"]], "label") <- "Stratum 132 annual estimates"

rdatafile[["STRATUM16"]] <- haven::labelled_spss(rdatafile[["STRATUM16"]],
    labels = c("Barisal Rural" = 1,
               "Barisal Urban" = 2,
               "Chittagong Rural" = 3,
               "Chittagong Urban" = 4,
               "Chittagong City Corp." = 5,
               "Dhaka Rural" = 6,
               "Dhaka Urban" = 7,
               "Dhaka City Corp." = 8,
               "Khulna Rural" = 9,
               "Khulna Urban" = 10,
               "Khulna City Corp." = 11,
               "Rajshahi Rural" = 12,
               "Rajshahi Urban" = 13,
               "Rajshahi City Corp." = 14,
               "Sylhet Rural" = 15,
               "Sylhet Urban" = 16)
)
attr(rdatafile[["STRATUM16"]], "label") <- "Stratum 16 quarterly estimates"

rdatafile[["RUC"]] <- haven::labelled_spss(rdatafile[["RUC"]],
    labels = c("" = )
)
attr(rdatafile[["RUC"]], "label") <- "Rural / PSA / City Corp"

rdatafile[["URBRURAL"]] <- haven::labelled_spss(rdatafile[["URBRURAL"]],
    labels = c("Rural" = 1,
               "Urban" = 2)
)
attr(rdatafile[["URBRURAL"]], "label") <- "1 Rural, 2 Urban"

attr(rdatafile[["DIVISION_CODE"]], "label") <- "Division Code"

rdatafile[["DIVISION_NAME"]] <- haven::labelled_spss(rdatafile[["DIVISION_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["DIVISION_NAME"]], "label") <- "Division Name"

attr(rdatafile[["ZILA_CODE"]], "label") <- "Zila/District code"

rdatafile[["ZILA_NAME"]] <- haven::labelled_spss(rdatafile[["ZILA_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["ZILA_NAME"]], "label") <- "Zila/District name"

rdatafile[["INDID"]] <- haven::labelled_spss(rdatafile[["INDID"]],
    labels = c("" = )
)
attr(rdatafile[["INDID"]], "label") <- "Respondent ID Code"

rdatafile[["S3AQ01"]] <- haven::labelled_spss(rdatafile[["S3AQ01"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S3AQ01"]], "label") <- "Have you suffered from any chronic illness/ disability in the last 12 months?"

rdatafile[["S3AQ02A"]] <- haven::labelled_spss(rdatafile[["S3AQ02A"]],
    labels = c("Chronic Fever" = 1,
               "Injuries / Disability" = 2,
               "Chronic Heart Disease" = 3,
               "Respiratory Diseases/ Asthma/Bronchitis" = 4,
               "Diarrhoea/Dysentery" = 5,
               "Gastric/ ulcer" = 6,
               "Blood pressure" = 7,
               "Arthritis/ Rheumatism" = 8,
               "Skin problem" = 9,
               "Diabetes" = 10,
               "Cancer" = 11,
               "Kidney Diseases" = 12,
               "Liver Diseases" = 13,
               "Mental Health" = 14,
               "Paralysis" = 15,
               "Ear/ENT problem" = 16,
               "Eye problem" = 17,
               "Other (specify)" = 18)
)
attr(rdatafile[["S3AQ02A"]], "label") <- "What chronic illness/ disability are you suffering from? 1"

rdatafile[["S3AQ02B"]] <- haven::labelled_spss(rdatafile[["S3AQ02B"]],
    labels = c("Chronic Fever" = 1,
               "Injuries / Disability" = 2,
               "Chronic Heart Disease" = 3,
               "Respiratory Diseases/ Asthma/Bronchitis" = 4,
               "Diarrhoea/Dysentery" = 5,
               "Gastric/ ulcer" = 6,
               "Blood pressure" = 7,
               "Arthritis/ Rheumatism" = 8,
               "Skin problem" = 9,
               "Diabetes" = 10,
               "Cancer" = 11,
               "Kidney Diseases" = 12,
               "Liver Diseases" = 13,
               "Mental Health" = 14,
               "Paralysis" = 15,
               "Ear/ENT problem" = 16,
               "Eye problem" = 17,
               "Other (specify)" = 18)
)
attr(rdatafile[["S3AQ02B"]], "label") <- "What chronic illness/ disability are you suffering from? 2"

rdatafile[["S3AQ03"]] <- haven::labelled_spss(rdatafile[["S3AQ03"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S3AQ03"]], "label") <- "Have you suffered from any symptoms of illness/injury in the last 30 days?"

rdatafile[["S3AQ04A"]] <- haven::labelled_spss(rdatafile[["S3AQ04A"]],
    labels = c("Diarrhoea" = 1,
               "Fever" = 2,
               "Dysentery" = 3,
               "Pain" = 4,
               "Injury/Accident" = 5,
               "Blood pressure" = 6,
               "Heart disease" = 7,
               "Respiratory Diseases/ Asthma/Bronchitis" = 8,
               "Weakness" = 9,
               "Dizziness" = 10,
               "Pneumonia" = 11,
               "Typhoid" = 12,
               "Tuberculosis" = 13,
               "Malaria" = 14,
               "Jaundice" = 15,
               "Female diseases" = 16,
               "Pregnancy related" = 17,
               "Cancer" = 18,
               "Mental health" = 19,
               "Paralysis" = 20,
               "Epilepsy" = 21,
               "Scabies/Skin diseases" = 22,
               "Kidney Diseases" = 23,
               "Liver Diseases" = 24,
               "Ear/ ENT problems" = 25,
               "Eye problem" = 26,
               "Other (specify)" = 27)
)
attr(rdatafile[["S3AQ04A"]], "label") <- "What Symptoms/Diseases did you suffer from? 1"

rdatafile[["S3AQ04B"]] <- haven::labelled_spss(rdatafile[["S3AQ04B"]],
    labels = c("Diarrhoea" = 1,
               "Fever" = 2,
               "Dysentery" = 3,
               "Pain" = 4,
               "Injury/Accident" = 5,
               "Blood pressure" = 6,
               "Heart disease" = 7,
               "Respiratory Diseases/ Asthma/Bronchitis" = 8,
               "Weakness" = 9,
               "Dizziness" = 10,
               "Pneumonia" = 11,
               "Typhoid" = 12,
               "Tuberculosis" = 13,
               "Malaria" = 14,
               "Jaundice" = 15,
               "Female diseases" = 16,
               "Pregnancy related" = 17,
               "Cancer" = 18,
               "Mental health" = 19,
               "Paralysis" = 20,
               "Epilepsy" = 21,
               "Scabies/Skin diseases" = 22,
               "Kidney Diseases" = 23,
               "Liver Diseases" = 24,
               "Ear/ ENT problems" = 25,
               "Eye problem" = 26,
               "Other (specify)" = 27)
)
attr(rdatafile[["S3AQ04B"]], "label") <- "What Symptoms/Diseases did you suffer from? 2"

rdatafile[["S3AQ04C"]] <- haven::labelled_spss(rdatafile[["S3AQ04C"]],
    labels = c("Diarrhoea" = 1,
               "Fever" = 2,
               "Dysentery" = 3,
               "Pain" = 4,
               "Injury/Accident" = 5,
               "Blood pressure" = 6,
               "Heart disease" = 7,
               "Respiratory Diseases/ Asthma/Bronchitis" = 8,
               "Weakness" = 9,
               "Dizziness" = 10,
               "Pneumonia" = 11,
               "Typhoid" = 12,
               "Tuberculosis" = 13,
               "Malaria" = 14,
               "Jaundice" = 15,
               "Female diseases" = 16,
               "Pregnancy related" = 17,
               "Cancer" = 18,
               "Mental health" = 19,
               "Paralysis" = 20,
               "Epilepsy" = 21,
               "Scabies/Skin diseases" = 22,
               "Kidney Diseases" = 23,
               "Liver Diseases" = 24,
               "Ear/ ENT problems" = 25,
               "Eye problem" = 26,
               "Other (specify)" = 27)
)
attr(rdatafile[["S3AQ04C"]], "label") <- "What Symptoms/Diseases did you suffer from? 3"

rdatafile[["S3AQ05"]] <- haven::labelled_spss(rdatafile[["S3AQ05"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S3AQ05"]], "label") <- "Have you sought any type of medical treatment related to your health problems me"

rdatafile[["S3AQ06"]] <- haven::labelled_spss(rdatafile[["S3AQ06"]],
    labels = c("Problem was not serious" = 1,
               "Treatment cost is too much" = 2,
               "Distance is too long" = 3,
               "Afraid of discovering serious illness" = 4,
               "There was none to accompany" = 5,
               "Decision maker does not think I should seek treatment" = 6,
               "Didn't know where to go" = 7,
               "Other (specify)" = 8)
)
attr(rdatafile[["S3AQ06"]], "label") <- "Why did you not seek any treatment?"

rdatafile[["S3AQ07A"]] <- haven::labelled_spss(rdatafile[["S3AQ07A"]],
    labels = c("Govt. Health Worker" = 1,
               "Govt. Satellite Clinic/EPI Outreach Center" = 2,
               "Community Clinic" = 3,
               "Union Health & Family Welfare Centrer/Union Sub Center" = 4,
               "Upazila Health Complex" = 5,
               "Maternal & Child Welfare Center (MCWC)" = 6,
               "Govt. District/Sadar/General Hospital" = 7,
               "Govt. Medical College/Specialized Hospital" = 8,
               "Other Govt. Specify" = 9,
               "NGO Health Worker / Satellite Clinic" = 10,
               "NGO Clinic / Hospital" = 11,
               "Govt. Medical College / Specialized Hospital" = 12,
               "Private Clinic / Hospital" = 13,
               "Private Medical College / Specialized Hospital" = 14,
               "Qualified Doctor's Chamber" = 15,
               "Non-qualified Doctor's Chamber" = 16,
               "Pharmacy / Dispensary" = 17,
               "Home0path" = 18,
               "Ayurbed / Kabiraj / Hekim" = 19,
               "Other Traditional / Spiritual" = 20,
               "Family / Self Treatment" = 21,
               "Other (Specify)" = 22)
)
attr(rdatafile[["S3AQ07A"]], "label") <- "Which of the following were consulted for this illness/injury (in the order in w"

rdatafile[["S3AQ07B"]] <- haven::labelled_spss(rdatafile[["S3AQ07B"]],
    labels = c("Govt. Health Worker" = 1,
               "Govt. Satellite Clinic/EPI Outreach Center" = 2,
               "Community Clinic" = 3,
               "Union Health & Family Welfare Centrer/Union Sub Center" = 4,
               "Upazila Health Complex" = 5,
               "Maternal & Child Welfare Center (MCWC)" = 6,
               "Govt. District/Sadar/General Hospital" = 7,
               "Govt. Medical College/Specialized Hospital" = 8,
               "Other Govt. Specify" = 9,
               "NGO Health Worker / Satellite Clinic" = 10,
               "NGO Clinic / Hospital" = 11,
               "Govt. Medical College / Specialized Hospital" = 12,
               "Private Clinic / Hospital" = 13,
               "Private Medical College / Specialized Hospital" = 14,
               "Qualified Doctor's Chamber" = 15,
               "Non-qualified Doctor's Chamber" = 16,
               "Pharmacy / Dispensary" = 17,
               "Home0path" = 18,
               "Ayurbed / Kabiraj / Hekim" = 19,
               "Other Traditional / Spiritual" = 20,
               "Family / Self Treatment" = 21,
               "Other (Specify)" = 22)
)
attr(rdatafile[["S3AQ07B"]], "label") <- "Which of the following were consulted for this illness/injury (in the order in w"

rdatafile[["S3AQ07C"]] <- haven::labelled_spss(rdatafile[["S3AQ07C"]],
    labels = c("Rural" = 1,
               "Urban" = 2)
)
attr(rdatafile[["S3AQ07C"]], "label") <- "Was the consulted provider urban or rural?"

attr(rdatafile[["S3AQ08"]], "label") <- "How many days after symptoms began did you first consult this health provider?"

rdatafile[["S3AQ09"]] <- haven::labelled_spss(rdatafile[["S3AQ09"]],
    labels = c("Nearby" = 1,
               "Acceptable cost" = 2,
               "Availability of doctor" = 3,
               "Availability of female doctor" = 4,
               "Availability of equipment" = 5,
               "Quality of treatment" = 6,
               "Referred by other provider" = 7,
               "Referred by relatives/friends" = 8,
               "Reputation" = 9,
               "Other (specify)" = 10)
)
attr(rdatafile[["S3AQ09"]], "label") <- "Why did you choose this provider?"

rdatafile[["S3AQ10"]] <- haven::labelled_spss(rdatafile[["S3AQ10"]],
    labels = c("Govt. health facility" = 1,
               "NGO health facility" = 2,
               "Private health facility" = 3,
               "Other facility, specify" = 4,
               "Pharmacy/dispensary" = 5,
               "Other shop" = 6,
               "Not available" = 7,
               "Could not afford" = 8,
               "Other (specify)" = 9)
)
attr(rdatafile[["S3AQ10"]], "label") <- "Where did you get the medicines from?"

rdatafile[["S3AQ11"]] <- haven::labelled_spss(rdatafile[["S3AQ11"]],
    labels = c("Private car" = 1,
               "Taxi" = 2,
               "Bus" = 3,
               "Auto rickshaw" = 4,
               "Rickshaw" = 5,
               "Rickshaw van" = 6,
               "Bullock cart" = 7,
               "Country boat" = 8,
               "Engine boat" = 9,
               "Ambulance" = 10,
               "Walking" = 11,
               "Calling doctor at home" = 12,
               "Other (specify)" = 13)
)
attr(rdatafile[["S3AQ11"]], "label") <- "How did you travel to the provider?"

attr(rdatafile[["S3AQ12A"]], "label") <- "How much time did it take to reach the service provider? (hours)"

attr(rdatafile[["S3AQ12B"]], "label") <- "How much time did it take to reach the service provider?  (minutes)"

attr(rdatafile[["S3AQ13A"]], "label") <- "How long did you have to wait at provider to be examined? (hours)"

attr(rdatafile[["S3AQ13B"]], "label") <- "How long did you have to wait at provider to be examined? (minutes)"

attr(rdatafile[["S3AQ14A"]], "label") <- "What was the total cost of outpatient treatment during the past 30 days? Consult"

attr(rdatafile[["S3AQ14B"]], "label") <- "Cost of Medicines"

attr(rdatafile[["S3AQ14C"]], "label") <- "Cost of Test/ Investigation"

attr(rdatafile[["S3AQ14D"]], "label") <- "Transport cost"

attr(rdatafile[["S3AQ14E"]], "label") <- "Total outpatient cost"

attr(rdatafile[["S3AQ15A"]], "label") <- "How much did you spent in the following during the past 30 days? Immunization"

attr(rdatafile[["S3AQ15B"]], "label") <- "Contraceptives"

attr(rdatafile[["S3AQ15C"]], "label") <- "ORS"

attr(rdatafile[["S3AQ15D"]], "label") <- "Routine medicines for chronic illness"

attr(rdatafile[["S3AQ15E"]], "label") <- "Routine medical check up"

rdatafile[["S3AQ16"]] <- haven::labelled_spss(rdatafile[["S3AQ16"]],
    labels = c("Yes" = 1,
               "No" = 2,
               "Dont know" = 3)
)
attr(rdatafile[["S3AQ16"]], "label") <- "Where you admitted to hospital and stayed overnight during the last 12 months?"

attr(rdatafile[["S3AQ17"]], "label") <- "If yes, for how many nights did you stay at the hospital?"

rdatafile[["S3AQ18"]] <- haven::labelled_spss(rdatafile[["S3AQ18"]],
    labels = c("Diarrhoea/Dysentry" = 1,
               "Fever" = 2,
               "Pain" = 3,
               "Injury/Accident" = 4,
               "Blood pressure" = 5,
               "Heart disease" = 6,
               "Respiratory Diseases/ Asthma/Bronchitis" = 7,
               "Weakness/Dizziness" = 8,
               "Pneumonia" = 9,
               "Tuberculosis" = 10,
               "Malaria" = 11,
               "Jaundice" = 12,
               "Female diseases" = 13,
               "Pregnancy related" = 14,
               "Cancer" = 15,
               "Mental health" = 16,
               "Paralysis" = 17,
               "Skin diseases" = 18,
               "Kidney Diseases" = 19,
               "Liver Diseases" = 20,
               "Ear/ ENT problems" = 21,
               "Eye problem" = 22,
               "Other (specify)" = 23)
)
attr(rdatafile[["S3AQ18"]], "label") <- "Reasons (symptom/disease/condition) for hospitalization?"

rdatafile[["S3AQ319"]] <- haven::labelled_spss(rdatafile[["S3AQ319"]],
    labels = c("Govt. Upazila Health Complex" = 1,
               "Govt. Maternal & Child Welfare Center (MCWC)" = 2,
               "Gov district/Sadar/General hospital" = 3,
               "Govt medical college hospital" = 4,
               "Govt specialized hospital" = 5,
               "Other Govt hospital (specify)" = 6,
               "NGO general hospital" = 7,
               "NGO Medical college hospital" = 8,
               "NGO specialized hospital" = 9,
               "Private general hospital" = 10,
               "Private medical college hospital" = 11,
               "Private specialized hospital" = 12,
               "Other private hospital (specify)" = 13)
)
attr(rdatafile[["S3AQ319"]], "label") <- "Which hospital you were admitted in?"

attr(rdatafile[["S3AQ20A"]], "label") <- "What was the total cost of inpatient treatment during the past 12 months? Hospit"

attr(rdatafile[["S3AQ20B"]], "label") <- "Consultation/Doctor fees"

attr(rdatafile[["S3AQ20C"]], "label") <- "Bed/cabin charges"

attr(rdatafile[["S3AQ20D"]], "label") <- "Cost of medicines"

attr(rdatafile[["S3AQ20E"]], "label") <- "Cost of investigations"

attr(rdatafile[["S3AQ20F"]], "label") <- "Transport cost"

attr(rdatafile[["S3AQ20G"]], "label") <- "Informal Tips"

attr(rdatafile[["S3AQ20H"]], "label") <- "Other formal charges"

attr(rdatafile[["S3AQ20IA"]], "label") <- "Maternity cost Clinic"

attr(rdatafile[["S3AQ20IB"]], "label") <- "Midwife"

attr(rdatafile[["S3AQ20IC"]], "label") <- "Others"

rdatafile[["S3AQ20J"]] <- haven::labelled_spss(rdatafile[["S3AQ20J"]],
    labels = c("Regular income" = 1,
               "Household saving" = 2,
               "Sold personal belonging" = 3,
               "Sold Livestock" = 4,
               "Sold Agricultural product/Tree" = 5,
               "Sold permanent assets" = 6,
               "Mortgage of Assets/Land" = 7,
               "Borrowed from Friends/Relatives/Offices" = 8,
               "Borrowed from Money Lender" = 9,
               "Assistance from friends & relatives" = 10,
               "Other (specify)" = 11)
)
attr(rdatafile[["S3AQ20J"]], "label") <- "Total inpatient Cost"

rdatafile[["S3AQ21A"]] <- haven::labelled_spss(rdatafile[["S3AQ21A"]],
    labels = c("Regular income" = 1,
               "Household saving" = 2,
               "Sold personal belonging" = 3,
               "Sold Livestock" = 4,
               "Sold Agricultural product/Tree" = 5,
               "Sold permanent assets" = 6,
               "Mortgage of Assets/Land" = 7,
               "Borrowed from Friends/Relatives/Office" = 8,
               "Borrowed from Money Lender" = 9,
               "Assistance from friends & relatives" = 10,
               "Other (specify)" = 11)
)
attr(rdatafile[["S3AQ21A"]], "label") <- "How did you finance the cost of outpatient/inpatient treatment? 1"

rdatafile[["S3AQ21B"]] <- haven::labelled_spss(rdatafile[["S3AQ21B"]],
    labels = c("Regular income" = 1,
               "Household saving" = 2,
               "Sold personal belonging" = 3,
               "Sold Livestock" = 4,
               "Sold Agricultural product/Tree" = 5,
               "Sold permanent assets" = 6,
               "Mortgage of Assets/Land" = 7,
               "Borrowed from Friends/Relatives/Office" = 8,
               "Borrowed from Money Lender" = 9,
               "Assistance from friends & relatives" = 10,
               "Other (specify)" = 11)
)
attr(rdatafile[["S3AQ21B"]], "label") <- "How did you finance the cost of outpatient/inpatient treatment? 2"

rdatafile[["S3AQ21C"]] <- haven::labelled_spss(rdatafile[["S3AQ21C"]],
    labels = c("Regular income" = 1,
               "Household saving" = 2,
               "Sold personal belonging" = 3,
               "Sold Livestock" = 4,
               "Sold Agricultural product/Tree" = 5,
               "Sold permanent assets" = 6,
               "Mortgage of Assets/Land" = 7,
               "Borrowed from Friends/Relatives/Office" = 8,
               "Borrowed from Money Lender" = 9,
               "Assistance from friends & relatives" = 10,
               "Other (specify)" = 11)
)
attr(rdatafile[["S3AQ21C"]], "label") <- "How did you finance the cost of outpatient/inpatient treatment? 3"

attr(rdatafile[["PSU"]], "label") <- "Primary Sampling Unit Serial Number"

attr(rdatafile[["HHID"]], "label") <- "Household id"

rdatafile[["QUARTER"]] <- haven::labelled_spss(rdatafile[["QUARTER"]],
    labels = c("" = )
)
attr(rdatafile[["QUARTER"]], "label") <- "Quarters"

attr(rdatafile[["HHWGT"]], "label") <- "Household annual weight"

attr(rdatafile[["STRATUM"]], "label") <- "Stratum 132 annual estimates"

rdatafile[["STRATUM16"]] <- haven::labelled_spss(rdatafile[["STRATUM16"]],
    labels = c("Barisal Rural" = 1,
               "Barisal Urban" = 2,
               "Chittagong Rural" = 3,
               "Chittagong Urban" = 4,
               "Chittagong City Corp." = 5,
               "Dhaka Rural" = 6,
               "Dhaka Urban" = 7,
               "Dhaka City Corp." = 8,
               "Khulna Rural" = 9,
               "Khulna Urban" = 10,
               "Khulna City Corp." = 11,
               "Rajshahi Rural" = 12,
               "Rajshahi Urban" = 13,
               "Rajshahi City Corp." = 14,
               "Sylhet Rural" = 15,
               "Sylhet Urban" = 16)
)
attr(rdatafile[["STRATUM16"]], "label") <- "Stratum 16 quarterly estimates"

rdatafile[["RUC"]] <- haven::labelled_spss(rdatafile[["RUC"]],
    labels = c("" = )
)
attr(rdatafile[["RUC"]], "label") <- "Rural / PSA / City Corp"

rdatafile[["URBRURAL"]] <- haven::labelled_spss(rdatafile[["URBRURAL"]],
    labels = c("Rural" = 1,
               "Urban" = 2)
)
attr(rdatafile[["URBRURAL"]], "label") <- "1 Rural, 2 Urban"

attr(rdatafile[["DIVISION_CODE"]], "label") <- "Division Code"

rdatafile[["DIVISION_NAME"]] <- haven::labelled_spss(rdatafile[["DIVISION_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["DIVISION_NAME"]], "label") <- "Division Name"

attr(rdatafile[["ZILA_CODE"]], "label") <- "Zila/District code"

rdatafile[["ZILA_NAME"]] <- haven::labelled_spss(rdatafile[["ZILA_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["ZILA_NAME"]], "label") <- "Zila/District name"

attr(rdatafile[["INDID"]], "label") <- "ID CODE"

attr(rdatafile[["ACTIVITY"]], "label") <- "Activity Code"

attr(rdatafile[["S4AQ01A"]], "label") <- "DESCRIPTION OF ACTIVITY"

attr(rdatafile[["S4AQ01B"]], "label") <- "OCCUPATION CODE"

attr(rdatafile[["S4AQ01C"]], "label") <- "INDUSTRY CODE"

attr(rdatafile[["S4AQ02"]], "label") <- "How many months did you do this activity in the last 12 months?"

attr(rdatafile[["S4AQ03"]], "label") <- "On average, how many days per month?"

attr(rdatafile[["S4AQ04"]], "label") <- "On average how many hours per day?"

rdatafile[["S4AQ05A"]] <- haven::labelled_spss(rdatafile[["S4AQ05A"]],
    labels = c("Rural" = 1,
               "Urban" = 2)
)
attr(rdatafile[["S4AQ05A"]], "label") <- "Where did you do this activity? R/U"

attr(rdatafile[["S4AQ05B"]], "label") <- "DISTRICT CODE"

rdatafile[["S4AQ06"]] <- haven::labelled_spss(rdatafile[["S4AQ06"]],
    labels = c("Agricultutre" = 1,
               "Non-agriculture" = 2)
)
attr(rdatafile[["S4AQ06"]], "label") <- "What was major field of economic activities you engaged in?"

rdatafile[["S4AQ07"]] <- haven::labelled_spss(rdatafile[["S4AQ07"]],
    labels = c("Day labourer" = 1,
               "Self employed" = 2,
               "Employer" = 3,
               "Employee" = 4)
)
attr(rdatafile[["S4AQ07"]], "label") <- "If you were engaged in agricultural sector, what was your employment status?"

rdatafile[["S4AQ08"]] <- haven::labelled_spss(rdatafile[["S4AQ08"]],
    labels = c("Day labourer" = 1,
               "Self employed" = 2,
               "Employer" = 3,
               "Employee" = 4)
)
attr(rdatafile[["S4AQ08"]], "label") <- "If you were engaged in agricultural sector, what was your employment status?"

rdatafile[["S4BQ01"]] <- haven::labelled_spss(rdatafile[["S4BQ01"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S4BQ01"]], "label") <- "Were you paid on a daily basis?"

attr(rdatafile[["S4BQ02A"]], "label") <- "What was the daily wage in cash in the past 12 months? Highest"

attr(rdatafile[["S4BQ02B"]], "label") <- "What was the daily wage in cash in the past 12 months? Lowest"

attr(rdatafile[["S4BQ02C"]], "label") <- "Average"

rdatafile[["S4BQ03"]] <- haven::labelled_spss(rdatafile[["S4BQ03"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S4BQ03"]], "label") <- "Did you receive payments in-kind?"

rdatafile[["S4BQ04"]] <- haven::labelled_spss(rdatafile[["S4BQ04"]],
    labels = c("Paddy" = 1,
               "Rice" = 2,
               "Wheat" = 3,
               "Meal" = 4,
               "Other (specify)" = 5)
)
attr(rdatafile[["S4BQ04"]], "label") <- "What type of in-kind payment did you receive?"

attr(rdatafile[["S4BQ05A"]], "label") <- "How much did you receive per day? QUANTITY (KG)"

attr(rdatafile[["S4BQ05B"]], "label") <- "How much did you receive per day? VALUE (TAKA)"

rdatafile[["S4BQ06"]] <- haven::labelled_spss(rdatafile[["S4BQ06"]],
    labels = c("Govt. organization" = 1,
               "Autonomous body" = 2,
               "Private office" = 3,
               "Public mill/ factory" = 4,
               "Private mill/ factory" = 5,
               "Local govt" = 6,
               "NGO" = 7,
               "Household" = 8,
               "Other (specify)" = 9)
)
attr(rdatafile[["S4BQ06"]], "label") <- "What type of org. do/ did you work for?"

attr(rdatafile[["S4BQ07"]], "label") <- "What is your gross remuneration per month?"

attr(rdatafile[["S4BQ08"]], "label") <- "What is your total net take-home monthly remuneration after all deduction at sou"

attr(rdatafile[["S4BQ09"]], "label") <- "What is the total value of in-kind or other benefits you received over the past"

attr(rdatafile[["PSU"]], "label") <- "Primary Sampling Unit Serial Number"

attr(rdatafile[["HHID"]], "label") <- "Household id"

rdatafile[["QUARTER"]] <- haven::labelled_spss(rdatafile[["QUARTER"]],
    labels = c("" = )
)
attr(rdatafile[["QUARTER"]], "label") <- "Quarters"

attr(rdatafile[["HHWGT"]], "label") <- "Household annual weight"

attr(rdatafile[["STRATUM"]], "label") <- "Stratum 132 annual estimates"

rdatafile[["STRATUM16"]] <- haven::labelled_spss(rdatafile[["STRATUM16"]],
    labels = c("Barisal Rural" = 1,
               "Barisal Urban" = 2,
               "Chittagong Rural" = 3,
               "Chittagong Urban" = 4,
               "Chittagong City Corp." = 5,
               "Dhaka Rural" = 6,
               "Dhaka Urban" = 7,
               "Dhaka City Corp." = 8,
               "Khulna Rural" = 9,
               "Khulna Urban" = 10,
               "Khulna City Corp." = 11,
               "Rajshahi Rural" = 12,
               "Rajshahi Urban" = 13,
               "Rajshahi City Corp." = 14,
               "Sylhet Rural" = 15,
               "Sylhet Urban" = 16)
)
attr(rdatafile[["STRATUM16"]], "label") <- "Stratum 16 quarterly estimates"

rdatafile[["RUC"]] <- haven::labelled_spss(rdatafile[["RUC"]],
    labels = c("" = )
)
attr(rdatafile[["RUC"]], "label") <- "Rural / PSA / City Corp"

rdatafile[["URBRURAL"]] <- haven::labelled_spss(rdatafile[["URBRURAL"]],
    labels = c("Rural" = 1,
               "Urban" = 2)
)
attr(rdatafile[["URBRURAL"]], "label") <- "1 Rural, 2 Urban"

attr(rdatafile[["DIVISION_CODE"]], "label") <- "Division Code"

rdatafile[["DIVISION_NAME"]] <- haven::labelled_spss(rdatafile[["DIVISION_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["DIVISION_NAME"]], "label") <- "Division Name"

attr(rdatafile[["ZILA_CODE"]], "label") <- "Zila/District code"

rdatafile[["ZILA_NAME"]] <- haven::labelled_spss(rdatafile[["ZILA_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["ZILA_NAME"]], "label") <- "Zila/District name"

rdatafile[["S5Q00"]] <- haven::labelled_spss(rdatafile[["S5Q00"]],
    labels = c("" = )
)
attr(rdatafile[["S5Q00"]], "label") <- "ENTERPRISE NUMBER"

attr(rdatafile[["S5Q01A"]], "label") <- "What kind of enterprise did/ do your household solely or jointly own and operate"

attr(rdatafile[["S5Q01B"]], "label") <- "INDUSTRY CODE"

rdatafile[["S5Q02A"]] <- haven::labelled_spss(rdatafile[["S5Q02A"]],
    labels = c("" = )
)
attr(rdatafile[["S5Q02A"]], "label") <- "Which people in the household work in this enterprise/activity? ID1"

rdatafile[["S5Q02B"]] <- haven::labelled_spss(rdatafile[["S5Q02B"]],
    labels = c("" = )
)
attr(rdatafile[["S5Q02B"]], "label") <- "Which people in the household work in this enterprise/activity? ID2"

rdatafile[["S5Q02C"]] <- haven::labelled_spss(rdatafile[["S5Q02C"]],
    labels = c("" = )
)
attr(rdatafile[["S5Q02C"]], "label") <- "Which people in the household work in this enterprise/activity? ID3"

rdatafile[["S5Q02D"]] <- haven::labelled_spss(rdatafile[["S5Q02D"]],
    labels = c("" = )
)
attr(rdatafile[["S5Q02D"]], "label") <- "Which people in the household work in this enterprise/activity? ID4"

rdatafile[["S5Q02E"]] <- haven::labelled_spss(rdatafile[["S5Q02E"]],
    labels = c("" = )
)
attr(rdatafile[["S5Q02E"]], "label") <- "Which people in the household work in this enterprise/activity? ID5"

attr(rdatafile[["S5Q03A"]], "label") <- "For how long has this enterprise/ activity been operating? (Year)"

rdatafile[["S5Q03B"]] <- haven::labelled_spss(rdatafile[["S5Q03B"]],
    labels = c("" = )
)
attr(rdatafile[["S5Q03B"]], "label") <- "For how long has this enterprise/ activity been operating? (Month)"

rdatafile[["S5Q04"]] <- haven::labelled_spss(rdatafile[["S5Q04"]],
    labels = c("Own house" = 1,
               "Rented house" = 2,
               "Govt land/house" = 3,
               "Fixed location outside house" = 4,
               "Variable location" = 5)
)
attr(rdatafile[["S5Q04"]], "label") <- "Where do you operate the enterprise/activity?"

attr(rdatafile[["S5Q05"]], "label") <- "How many months did the enterprise /activity operate in the past 12 months?"

attr(rdatafile[["S5Q06"]], "label") <- "What is the household's share of this enterprise/ activity?"

attr(rdatafile[["S5Q07"]], "label") <- "What share of profit is owned by household?"

rdatafile[["S5Q08A"]] <- haven::labelled_spss(rdatafile[["S5Q08A"]],
    labels = c("Households/ Individuals" = 1,
               "Govt. or other public firm" = 2,
               "Private enterprises" = 3,
               "Foreign individual /organization" = 4,
               "Others (specify)" = 5)
)
attr(rdatafile[["S5Q08A"]], "label") <- "Who are your customers? (1st importance)"

rdatafile[["S5Q08B"]] <- haven::labelled_spss(rdatafile[["S5Q08B"]],
    labels = c("Households/ Individuals" = 1,
               "Govt. or other public firm" = 2,
               "Private enterprises" = 3,
               "Foreign individual /organization" = 4,
               "Others (specify)" = 5)
)
attr(rdatafile[["S5Q08B"]], "label") <- "Who are your customers? (2nd importance)"

rdatafile[["S5Q09"]] <- haven::labelled_spss(rdatafile[["S5Q09"]],
    labels = c("Yes" = 1,
               "No" = 2,
               "Not applicable" = 3)
)
attr(rdatafile[["S5Q09"]], "label") <- "Is the enterprise/ activity registered by the govt. or local govt.?"

rdatafile[["S5Q10A"]] <- haven::labelled_spss(rdatafile[["S5Q10A"]],
    labels = c("Inherited/ through gift" = 1,
               "Own savings" = 2,
               "Borrowing from relatives/ friends" = 3,
               "Agricultural dev. bank" = 4,
               "Commercial bank" = 5,
               "Grameen bank" = 6,
               "Other financial Inst." = 7,
               "NGO/ Relief agency" = 8,
               "Sale of assets" = 9,
               "Supplier's credit" = 10,
               "Other (specify)" = 11)
)
attr(rdatafile[["S5Q10A"]], "label") <- "What was your main source of finance for setting up the business? (1st)"

rdatafile[["S5Q10B"]] <- haven::labelled_spss(rdatafile[["S5Q10B"]],
    labels = c("Inherited/ through gift" = 1,
               "Own savings" = 2,
               "Borrowing from relatives/ friends" = 3,
               "Agricultural dev. bank" = 4,
               "Commercial bank" = 5,
               "Grameen bank" = 6,
               "Other financial Inst." = 7,
               "NGO/ Relief agency" = 8,
               "Sale of assets" = 9,
               "Supplier's credit" = 10,
               "Other (specify)" = 11)
)
attr(rdatafile[["S5Q10B"]], "label") <- "What was your main source of finance for setting up the business? (2ndt)"

attr(rdatafile[["S5Q11"]], "label") <- "How many employees were engaged in the past 12 months?"

rdatafile[["S5Q12A"]] <- haven::labelled_spss(rdatafile[["S5Q12A"]],
    labels = c("No problem" = 1,
               "Inadequate capital or credit" = 2,
               "Inadequate tech. knowledge" = 3,
               "Lack of required no. of expertise" = 4,
               "High-cost of running ent." = 5,
               "Water supply problem" = 6,
               "Power supply problem" = 7,
               "Problems with equipment/ spare parts" = 8,
               "Government regulations" = 9,
               "Lack of raw materials" = 10,
               "Lack of customers" = 11,
               "Transport problems" = 12,
               "Telecom and Internet access" = 13,
               "Other (specify)" = 14)
)
attr(rdatafile[["S5Q12A"]], "label") <- "What problems, if any, have you had in running your business in the last 12 mont"

rdatafile[["S5Q12B"]] <- haven::labelled_spss(rdatafile[["S5Q12B"]],
    labels = c("No problem" = 1,
               "Inadequate capital or credit" = 2,
               "Inadequate tech. knowledge" = 3,
               "Lack of required no. of expertise" = 4,
               "High-cost of running ent." = 5,
               "Water supply problem" = 6,
               "Power supply problem" = 7,
               "Problems with equipment/ spare parts" = 8,
               "Government regulations" = 9,
               "Lack of raw materials" = 10,
               "Lack of customers" = 11,
               "Transport problems" = 12,
               "Telecom and Internet access" = 13,
               "Other (specify)" = 14)
)
attr(rdatafile[["S5Q12B"]], "label") <- "What problems, if any, have you had in running your business in the last 12 mont"

attr(rdatafile[["S5Q13"]], "label") <- "Gross revenues over the past 12 months"

attr(rdatafile[["S5Q14"]], "label") <- "Expenditures on wages in the last 12 months"

attr(rdatafile[["S5Q15"]], "label") <- "Expenditure on rent in the past 12 months"

attr(rdatafile[["S5Q16"]], "label") <- "Expenditure on raw materials in the past 12 months"

attr(rdatafile[["S5Q17"]], "label") <- "Expenditure on Fuel, Kerosene, Electricity, etc. in the past 12 months"

attr(rdatafile[["S5Q18"]], "label") <- "Expenditure on finished goods purchased for reselling in the past 12 months"

attr(rdatafile[["S5Q19"]], "label") <- "Other operating expenses in the past 12 months"

attr(rdatafile[["S5Q20"]], "label") <- "Net revenues"

attr(rdatafile[["S5Q21"]], "label") <- "Expenditure on capital goods in past 12 months"

attr(rdatafile[["S5Q22"]], "label") <- "Sales of assets in past 12 months"

attr(rdatafile[["S5Q23"]], "label") <- "If someone wanted to buy this enterprise today, how much would he have to pay?"

attr(rdatafile[["PSU"]], "label") <- "Primary Sampling Unit Serial Number"

attr(rdatafile[["HHID"]], "label") <- "Household id"

rdatafile[["QUARTER"]] <- haven::labelled_spss(rdatafile[["QUARTER"]],
    labels = c("" = )
)
attr(rdatafile[["QUARTER"]], "label") <- "Quarters"

attr(rdatafile[["HHWGT"]], "label") <- "Household annual weight"

attr(rdatafile[["STRATUM"]], "label") <- "Stratum 132 annual estimates"

rdatafile[["STRATUM16"]] <- haven::labelled_spss(rdatafile[["STRATUM16"]],
    labels = c("Barisal Rural" = 1,
               "Barisal Urban" = 2,
               "Chittagong Rural" = 3,
               "Chittagong Urban" = 4,
               "Chittagong City Corp." = 5,
               "Dhaka Rural" = 6,
               "Dhaka Urban" = 7,
               "Dhaka City Corp." = 8,
               "Khulna Rural" = 9,
               "Khulna Urban" = 10,
               "Khulna City Corp." = 11,
               "Rajshahi Rural" = 12,
               "Rajshahi Urban" = 13,
               "Rajshahi City Corp." = 14,
               "Sylhet Rural" = 15,
               "Sylhet Urban" = 16)
)
attr(rdatafile[["STRATUM16"]], "label") <- "Stratum 16 quarterly estimates"

rdatafile[["RUC"]] <- haven::labelled_spss(rdatafile[["RUC"]],
    labels = c("" = )
)
attr(rdatafile[["RUC"]], "label") <- "Rural / PSA / City Corp"

rdatafile[["URBRURAL"]] <- haven::labelled_spss(rdatafile[["URBRURAL"]],
    labels = c("Rural" = 1,
               "Urban" = 2)
)
attr(rdatafile[["URBRURAL"]], "label") <- "1 Rural, 2 Urban"

attr(rdatafile[["DIVISION_CODE"]], "label") <- "Division Code"

rdatafile[["DIVISION_NAME"]] <- haven::labelled_spss(rdatafile[["DIVISION_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["DIVISION_NAME"]], "label") <- "Division Name"

attr(rdatafile[["ZILA_CODE"]], "label") <- "Zila/District code"

rdatafile[["ZILA_NAME"]] <- haven::labelled_spss(rdatafile[["ZILA_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["ZILA_NAME"]], "label") <- "Zila/District name"

rdatafile[["S6AQ01"]] <- haven::labelled_spss(rdatafile[["S6AQ01"]],
    labels = c("" = )
)
attr(rdatafile[["S6AQ01"]], "label") <- "ID code of the respondent"

attr(rdatafile[["S6AQ02"]], "label") <- "How many rooms does your household occupy?"

rdatafile[["S6AQ03"]] <- haven::labelled_spss(rdatafile[["S6AQ03"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S6AQ03"]], "label") <- "Does your dwelling posses a separate dining room?"

rdatafile[["S6AQ04"]] <- haven::labelled_spss(rdatafile[["S6AQ04"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S6AQ04"]], "label") <- "Does your dwelling posses a separate kitchen?"

rdatafile[["S6AQ05"]] <- haven::labelled_spss(rdatafile[["S6AQ05"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S6AQ05"]], "label") <- "If Yes, does thedwelling share this facility with others who are not members  of"

rdatafile[["S6AQ06"]] <- haven::labelled_spss(rdatafile[["S6AQ06"]],
    labels = c("None" = 1,
               "Electric" = 2,
               "Gas" = 3,
               "Own built traditional mud stoves" = 4,
               "Improved stove (mud stove purchased/received from NGO)" = 5,
               "Concrete stove purchased /received from NGO" = 6,
               "Pre-fabricated steel stoves (non-electric & non-gas)" = 7)
)
attr(rdatafile[["S6AQ06"]], "label") <- "What type of stove do you have?"

rdatafile[["S6AQ07"]] <- haven::labelled_spss(rdatafile[["S6AQ07"]],
    labels = c("Straw/Bamboo/ Polythene/Plastic/ Canvas" = 1,
               "Mud/Unburnt brick" = 2,
               "Tin (CI sheet)" = 3,
               "Wood" = 4,
               "Brick/Cement" = 5,
               "Other (specify)" = 6)
)
attr(rdatafile[["S6AQ07"]], "label") <- "What is the construction material of the walls of the main room?"

rdatafile[["S6AQ08"]] <- haven::labelled_spss(rdatafile[["S6AQ08"]],
    labels = c("Straw/Bamboo/ Polythene/Plastic/ Canvas" = 1,
               "Tin (CI sheet)" = 2,
               "Tally" = 3,
               "Brick/Cement" = 4,
               "Other (specify)" = 5)
)
attr(rdatafile[["S6AQ08"]], "label") <- "What is the construction material of the roof of the main room?"

attr(rdatafile[["S6AQ09"]], "label") <- "What is the total usable space/area of covered rooms?"

rdatafile[["S6AQ10"]] <- haven::labelled_spss(rdatafile[["S6AQ10"]],
    labels = c("Sanitary" = 1,
               "Pacca latrine (water seal)" = 2,
               "Pacca latrine (pit)" = 3,
               "Kacha latrine (perm)" = 4,
               "Kacha latrine (temp)" = 5,
               "Open space/no latrine" = 6)
)
attr(rdatafile[["S6AQ10"]], "label") <- "What kind of toilet facility do members of your household usually use?"

rdatafile[["S6AQ11"]] <- haven::labelled_spss(rdatafile[["S6AQ11"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S6AQ11"]], "label") <- "Does the household share this toilet facility with other households?"

rdatafile[["S6AQ12"]] <- haven::labelled_spss(rdatafile[["S6AQ12"]],
    labels = c("Supply water" = 1,
               "Tubewell" = 2,
               "Pond/river" = 3,
               "Well" = 4,
               "Waterfall/string" = 5,
               "Other (specify)" = 6)
)
attr(rdatafile[["S6AQ12"]], "label") <- "What is the main source of drinking water?"

rdatafile[["S6AQ13"]] <- haven::labelled_spss(rdatafile[["S6AQ13"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S6AQ13"]], "label") <- "Has  your Tubewell been tested for arsenic?"

rdatafile[["S6AQ14"]] <- haven::labelled_spss(rdatafile[["S6AQ14"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S6AQ14"]], "label") <- "Was arsenic found?"

rdatafile[["S6AQ15"]] <- haven::labelled_spss(rdatafile[["S6AQ15"]],
    labels = c("Supply water" = 1,
               "Tubewell" = 2,
               "Pond/river" = 3,
               "Well" = 4,
               "Waterfall/string" = 5,
               "Other (specify)" = 6)
)
attr(rdatafile[["S6AQ15"]], "label") <- "If Yes, what is the alternative source of drinking water?"

rdatafile[["S6AQ16"]] <- haven::labelled_spss(rdatafile[["S6AQ16"]],
    labels = c("Supply water" = 1,
               "Tubewell" = 2,
               "Pond/river" = 3,
               "Well" = 4,
               "Waterfall/string" = 5,
               "Other (specify)" = 6)
)
attr(rdatafile[["S6AQ16"]], "label") <- "What is the main source of  water for other use?"

rdatafile[["S6AQ17"]] <- haven::labelled_spss(rdatafile[["S6AQ17"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S6AQ17"]], "label") <- "Does the household have an electricity connection?"

attr(rdatafile[["S6AQ18"]], "label") <- "How many hours in a day normally have electricity in your house?"

rdatafile[["S6AQ19"]] <- haven::labelled_spss(rdatafile[["S6AQ19"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S6AQ19"]], "label") <- "Does the household have a landline telephone connection?"

rdatafile[["S6AQ20"]] <- haven::labelled_spss(rdatafile[["S6AQ20"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S6AQ20"]], "label") <- "Does your household own  a computer?"

rdatafile[["S6AQ21"]] <- haven::labelled_spss(rdatafile[["S6AQ21"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S6AQ21"]], "label") <- "Does this household have access to internet/e-mail facilities?"

rdatafile[["S6AQ22"]] <- haven::labelled_spss(rdatafile[["S6AQ22"]],
    labels = c("Mobile phone" = 1,
               "Home computer" = 2,
               "Cybercafe" = 3,
               "Community  information Center" = 4,
               "Other (specify)" = 5)
)
attr(rdatafile[["S6AQ22"]], "label") <- "How does your household most often access the internet?"

rdatafile[["S6AQ23"]] <- haven::labelled_spss(rdatafile[["S6AQ23"]],
    labels = c("Own" = 1,
               "Rented" = 2,
               "Rent-free" = 3)
)
attr(rdatafile[["S6AQ23"]], "label") <- "What is your present occupancy status?"

attr(rdatafile[["S6AQ24"]], "label") <- "If you want to buy or construct a dwelling just like this today, how much money"

rdatafile[["S6AQ25"]] <- haven::labelled_spss(rdatafile[["S6AQ25"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S6AQ25"]], "label") <- "is this a slum household?"

attr(rdatafile[["PSU"]], "label") <- "Primary Sampling Unit Serial Number"

attr(rdatafile[["HHID"]], "label") <- "Household id"

rdatafile[["QUARTER"]] <- haven::labelled_spss(rdatafile[["QUARTER"]],
    labels = c("" = )
)
attr(rdatafile[["QUARTER"]], "label") <- "Quarters"

attr(rdatafile[["HHWGT"]], "label") <- "Household annual weight"

attr(rdatafile[["STRATUM"]], "label") <- "Stratum 132 annual estimates"

rdatafile[["STRATUM16"]] <- haven::labelled_spss(rdatafile[["STRATUM16"]],
    labels = c("Barisal Rural" = 1,
               "Barisal Urban" = 2,
               "Chittagong Rural" = 3,
               "Chittagong Urban" = 4,
               "Chittagong City Corp." = 5,
               "Dhaka Rural" = 6,
               "Dhaka Urban" = 7,
               "Dhaka City Corp." = 8,
               "Khulna Rural" = 9,
               "Khulna Urban" = 10,
               "Khulna City Corp." = 11,
               "Rajshahi Rural" = 12,
               "Rajshahi Urban" = 13,
               "Rajshahi City Corp." = 14,
               "Sylhet Rural" = 15,
               "Sylhet Urban" = 16)
)
attr(rdatafile[["STRATUM16"]], "label") <- "Stratum 16 quarterly estimates"

rdatafile[["RUC"]] <- haven::labelled_spss(rdatafile[["RUC"]],
    labels = c("" = )
)
attr(rdatafile[["RUC"]], "label") <- "Rural / PSA / City Corp"

rdatafile[["URBRURAL"]] <- haven::labelled_spss(rdatafile[["URBRURAL"]],
    labels = c("Rural" = 1,
               "Urban" = 2)
)
attr(rdatafile[["URBRURAL"]], "label") <- "1 Rural, 2 Urban"

attr(rdatafile[["DIVISION_CODE"]], "label") <- "Division Code"

rdatafile[["DIVISION_NAME"]] <- haven::labelled_spss(rdatafile[["DIVISION_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["DIVISION_NAME"]], "label") <- "Division Name"

attr(rdatafile[["ZILA_CODE"]], "label") <- "Zila/District code"

rdatafile[["ZILA_NAME"]] <- haven::labelled_spss(rdatafile[["ZILA_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["ZILA_NAME"]], "label") <- "Zila/District name"

rdatafile[["S6BQ00"]] <- haven::labelled_spss(rdatafile[["S6BQ00"]],
    labels = c("Drought / Irregular rains" = 101,
               "Floods" = 102,
               "Landslides/ Erosion" = 103,
               "Unusually High Level of Crop Pests and Disease" = 104,
               "Unusually High Level of Livestock Disease" = 105,
               "Unusually High Prices of Agricultural Inputs" = 106,
               "Unusually Low Prices of Agricultural Output" = 107,
               "Reduction in the Earnings of currently (Off-Farm) Employed Household Member(s)" = 108,
               "Loss of Employment of Previously Employed Household member(s) (not due to illness/accident)" = 109,
               "Serious Illness or Accident of income Earner(s)" = 111,
               "Serious Illness or Accident of other HH Member(s)" = 112,
               "Death of Income Earner(s)" = 113,
               "Death of other HH Member(s)" = 114,
               "Theft of Money/Valuables/Non Agricultural Assets" = 115,
               "Theft of  Agricultural Assets/Output(Crop or Livestock)" = 116,
               "Conflict/Violence" = 117,
               "Fire/Tornedo/Earthquake, etc" = 118,
               "Other (Specify)" = 119)
)
attr(rdatafile[["S6BQ00"]], "label") <- "CODE"

rdatafile[["S6BQ01"]] <- haven::labelled_spss(rdatafile[["S6BQ01"]],
    labels = c("" = )
)
attr(rdatafile[["S6BQ01"]], "label") <- "Description of distress events"

rdatafile[["S6BQ02"]] <- haven::labelled_spss(rdatafile[["S6BQ02"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S6BQ02"]], "label") <- "Did you experience [shock] during the past 12 months?"

rdatafile[["S6BQ03"]] <- haven::labelled_spss(rdatafile[["S6BQ03"]],
    labels = c("Jan" = 1,
               "Feb" = 2,
               "Mar" = 3,
               "Apr" = 4,
               "May" = 5,
               "Jun" = 6,
               "Jul" = 7,
               "Aug" = 8,
               "Sep" = 9,
               "Oct" = 10,
               "Nov" = 11,
               "Dec" = 12)
)
attr(rdatafile[["S6BQ03"]], "label") <- "When did the shock first occur?"

attr(rdatafile[["S6BQ04"]], "label") <- "How long did the shock last? (If Shocks continued till now write '99')"

rdatafile[["S6BQ05A"]] <- haven::labelled_spss(rdatafile[["S6BQ05A"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S6BQ05A"]], "label") <- "As a result of the [SHOCK], was there a decline in your households? Income"

rdatafile[["S6BQ05B"]] <- haven::labelled_spss(rdatafile[["S6BQ05B"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S6BQ05B"]], "label") <- "Assets"

rdatafile[["S6BQ05C"]] <- haven::labelled_spss(rdatafile[["S6BQ05C"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S6BQ05C"]], "label") <- "Food Production"

rdatafile[["S6BQ05D"]] <- haven::labelled_spss(rdatafile[["S6BQ05D"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S6BQ05D"]], "label") <- "Food Purchased"

rdatafile[["S6BQ06A"]] <- haven::labelled_spss(rdatafile[["S6BQ06A"]],
    labels = c("Unconditional help provided by relatives/friends" = 1,
               "Unconditional help provided by local government" = 2,
               "Change dietary patterns involuntarily" = 3,
               "Change cropping practices  (crop choices or technology)" = 4,
               "Household member(s) took on more non-farm (wage or self employment)" = 5,
               "Household members took on more farm ways employment" = 6,
               "Household members migrated" = 7,
               "Relied on savings" = 8,
               "Obtained credit" = 9,
               "Sold durable household assets" = 10,
               "Sold land or building" = 11,
               "Rented out land/building" = 12,
               "Distress sales of animal stock" = 13,
               "Send children to live elsewhere" = 14,
               "Reduce expenditure on health and education" = 15,
               "Other (specify)" = 16)
)
attr(rdatafile[["S6BQ06A"]], "label") <- "How did your household cope with this [shock]? Up to three answers with rank for"

rdatafile[["S6BQ06B"]] <- haven::labelled_spss(rdatafile[["S6BQ06B"]],
    labels = c("Unconditional help provided by relatives/friends" = 1,
               "Unconditional help provided by local government" = 2,
               "Change dietary patterns involuntarily" = 3,
               "Change cropping practices  (crop choices or technology)" = 4,
               "Household member(s) took on more non-farm (wage or self employment)" = 5,
               "Household members took on more farm ways employment" = 6,
               "Household members migrated" = 7,
               "Relied on savings" = 8,
               "Obtained credit" = 9,
               "Sold durable household assets" = 10,
               "Sold land or building" = 11,
               "Rented out land/building" = 12,
               "Distress sales of animal stock" = 13,
               "Send children to live elsewhere" = 14,
               "Reduce expenditure on health and education" = 15,
               "Other (specify)" = 16)
)
attr(rdatafile[["S6BQ06B"]], "label") <- "How did your household cope with this [shock]? Up to three answers with rank for"

rdatafile[["S6BQ06C"]] <- haven::labelled_spss(rdatafile[["S6BQ06C"]],
    labels = c("Unconditional help provided by relatives/friends" = 1,
               "Unconditional help provided by local government" = 2,
               "Change dietary patterns involuntarily" = 3,
               "Change cropping practices  (crop choices or technology)" = 4,
               "Household member(s) took on more non-farm (wage or self employment)" = 5,
               "Household members took on more farm ways employment" = 6,
               "Household members migrated" = 7,
               "Relied on savings" = 8,
               "Obtained credit" = 9,
               "Sold durable household assets" = 10,
               "Sold land or building" = 11,
               "Rented out land/building" = 12,
               "Distress sales of animal stock" = 13,
               "Send children to live elsewhere" = 14,
               "Reduce expenditure on health and education" = 15,
               "Other (specify)" = 16)
)
attr(rdatafile[["S6BQ06C"]], "label") <- "How did your household cope with this [shock]? Up to three answers with rank for"

attr(rdatafile[["S6BQ04_R"]], "label") <- "How long did the shock last? (If Shocks continued till now write '99')"

attr(rdatafile[["PSU"]], "label") <- "Primary Sampling Unit Serial Number"

attr(rdatafile[["HHID"]], "label") <- "Household id"

rdatafile[["QUARTER"]] <- haven::labelled_spss(rdatafile[["QUARTER"]],
    labels = c("" = )
)
attr(rdatafile[["QUARTER"]], "label") <- "Quarters"

attr(rdatafile[["HHWGT"]], "label") <- "Household annual weight"

attr(rdatafile[["STRATUM"]], "label") <- "Stratum 132 annual estimates"

rdatafile[["STRATUM16"]] <- haven::labelled_spss(rdatafile[["STRATUM16"]],
    labels = c("Barisal Rural" = 1,
               "Barisal Urban" = 2,
               "Chittagong Rural" = 3,
               "Chittagong Urban" = 4,
               "Chittagong City Corp." = 5,
               "Dhaka Rural" = 6,
               "Dhaka Urban" = 7,
               "Dhaka City Corp." = 8,
               "Khulna Rural" = 9,
               "Khulna Urban" = 10,
               "Khulna City Corp." = 11,
               "Rajshahi Rural" = 12,
               "Rajshahi Urban" = 13,
               "Rajshahi City Corp." = 14,
               "Sylhet Rural" = 15,
               "Sylhet Urban" = 16)
)
attr(rdatafile[["STRATUM16"]], "label") <- "Stratum 16 quarterly estimates"

rdatafile[["RUC"]] <- haven::labelled_spss(rdatafile[["RUC"]],
    labels = c("" = )
)
attr(rdatafile[["RUC"]], "label") <- "Rural / PSA / City Corp"

rdatafile[["URBRURAL"]] <- haven::labelled_spss(rdatafile[["URBRURAL"]],
    labels = c("Rural" = 1,
               "Urban" = 2)
)
attr(rdatafile[["URBRURAL"]], "label") <- "1 Rural, 2 Urban"

attr(rdatafile[["DIVISION_CODE"]], "label") <- "Division Code"

rdatafile[["DIVISION_NAME"]] <- haven::labelled_spss(rdatafile[["DIVISION_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["DIVISION_NAME"]], "label") <- "Division Name"

attr(rdatafile[["ZILA_CODE"]], "label") <- "Zila/District code"

rdatafile[["ZILA_NAME"]] <- haven::labelled_spss(rdatafile[["ZILA_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["ZILA_NAME"]], "label") <- "Zila/District name"

attr(rdatafile[["S7AQ01"]], "label") <- "Total cultivable agricultural land owned: (Acres)"

attr(rdatafile[["S7AQ02"]], "label") <- "Total dwelling-house/Homestead land owned:: (Acres)"

attr(rdatafile[["S7AQ03"]], "label") <- "Total Non-cultivated Land: (Acres)"

attr(rdatafile[["S7AQ04"]], "label") <- "Total cultivable agricultural land rented/ share-cropped/mortgaged in: (Acres)"

attr(rdatafile[["S7AQ05"]], "label") <- "Total cultivable agricultural land rented/ share-cropped/mortgaged out: (Acres)"

attr(rdatafile[["S7AQ06"]], "label") <- "Total operating land (1+2+3+4-5) : (Acres)"

attr(rdatafile[["PSU"]], "label") <- "Primary Sampling Unit Serial Number"

attr(rdatafile[["HHID"]], "label") <- "Household id"

rdatafile[["QUARTER"]] <- haven::labelled_spss(rdatafile[["QUARTER"]],
    labels = c("" = )
)
attr(rdatafile[["QUARTER"]], "label") <- "Quarters"

attr(rdatafile[["HHWGT"]], "label") <- "Household annual weight"

attr(rdatafile[["STRATUM"]], "label") <- "Stratum 132 annual estimates"

rdatafile[["STRATUM16"]] <- haven::labelled_spss(rdatafile[["STRATUM16"]],
    labels = c("Barisal Rural" = 1,
               "Barisal Urban" = 2,
               "Chittagong Rural" = 3,
               "Chittagong Urban" = 4,
               "Chittagong City Corp." = 5,
               "Dhaka Rural" = 6,
               "Dhaka Urban" = 7,
               "Dhaka City Corp." = 8,
               "Khulna Rural" = 9,
               "Khulna Urban" = 10,
               "Khulna City Corp." = 11,
               "Rajshahi Rural" = 12,
               "Rajshahi Urban" = 13,
               "Rajshahi City Corp." = 14,
               "Sylhet Rural" = 15,
               "Sylhet Urban" = 16)
)
attr(rdatafile[["STRATUM16"]], "label") <- "Stratum 16 quarterly estimates"

rdatafile[["RUC"]] <- haven::labelled_spss(rdatafile[["RUC"]],
    labels = c("" = )
)
attr(rdatafile[["RUC"]], "label") <- "Rural / PSA / City Corp"

rdatafile[["URBRURAL"]] <- haven::labelled_spss(rdatafile[["URBRURAL"]],
    labels = c("Rural" = 1,
               "Urban" = 2)
)
attr(rdatafile[["URBRURAL"]], "label") <- "1 Rural, 2 Urban"

attr(rdatafile[["DIVISION_CODE"]], "label") <- "Division Code"

rdatafile[["DIVISION_NAME"]] <- haven::labelled_spss(rdatafile[["DIVISION_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["DIVISION_NAME"]], "label") <- "Division Name"

attr(rdatafile[["ZILA_CODE"]], "label") <- "Zila/District code"

rdatafile[["ZILA_NAME"]] <- haven::labelled_spss(rdatafile[["ZILA_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["ZILA_NAME"]], "label") <- "Zila/District name"

rdatafile[["S7BQ00_DC"]] <- haven::labelled_spss(rdatafile[["S7BQ00_DC"]],
    labels = c("" = )
)
attr(rdatafile[["S7BQ00_DC"]], "label") <- "CROP/BY-PRODUCT"

rdatafile[["S7BQ00"]] <- haven::labelled_spss(rdatafile[["S7BQ00"]],
    labels = c("Aus" = 1,
               "Aman" = 2,
               "Boro" = 3,
               "Wheat" = 4,
               "Maize" = 5,
               "Jute" = 6,
               "Sugarcane" = 7,
               "Pulses" = 8,
               "Oil Seed" = 9,
               "By product of paddy" = 11,
               "By product of wheat" = 12,
               "By product of jute" = 13,
               "By product of sugarcane" = 14,
               "Potato" = 15,
               "Onion" = 16,
               "Garlic" = 17,
               "Ginger" = 18,
               "Turmeric" = 19,
               "Tomato" = 21,
               "Brinjal" = 22,
               "Green Banana/Green Papaya" = 23,
               "Cauliflower/Cabbage" = 24,
               "Pumpkin" = 25,
               "Radish" = 26,
               "Green Chili" = 27,
               "Bean" = 28,
               "Patal" = 29,
               "Lady's Finger" = 31,
               "Puisak" = 32,
               "Others (specify)" = 33,
               "Mango" = 41,
               "Jackfruit" = 42,
               "Ripe Banana" = 43,
               "Ripe Papaya" = 44,
               "Pineapple" = 45,
               "Leechee" = 46,
               "Melon/Bangi" = 47,
               "Guava" = 48,
               "Others (specify)" = 49)
)
attr(rdatafile[["S7BQ00"]], "label") <- "ITEM CODE"

rdatafile[["S7BQ01"]] <- haven::labelled_spss(rdatafile[["S7BQ01"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S7BQ01"]], "label") <- "Did you or anyone in your household cultivate any following crops in the last 12"

rdatafile[["S7BQ02"]] <- haven::labelled_spss(rdatafile[["S7BQ02"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S7BQ02"]], "label") <- "Did you cultivate (crop) in the last 12 months?"

attr(rdatafile[["S7BQ03"]], "label") <- "How much land did you cultivate under this crop in the last 12 months? (Acres)"

attr(rdatafile[["S7BQ04A"]], "label") <- "How much in total of crop did you produce in the last 12 months? (kg)"

attr(rdatafile[["S7BQ04B"]], "label") <- "How much in total of crop did you produce in the last 12 months? (kg taka)"

attr(rdatafile[["S7BQ05"]], "label") <- "How much did your household consumed in the last 12 months"

attr(rdatafile[["S7BQ06"]], "label") <- "How much did your household sell in the last 12 months?"

attr(rdatafile[["S7BQ07"]], "label") <- "How much did your household stock in the last 12 months?"

attr(rdatafile[["S7BQ08A"]], "label") <- "How much of it was used for the following purposes in the last 12 months? (Given"

attr(rdatafile[["S7BQ08B"]], "label") <- "How much of it was used for the following purposes in the last 12 months? (Given"

attr(rdatafile[["S7BQ08C"]], "label") <- "How much of it was used for the following purposes in the last 12 months? (Used"

attr(rdatafile[["S7BQ08D"]], "label") <- "How much of it was used for the following purposes in the last 12 months? (Feed"

attr(rdatafile[["S7BQ08E"]], "label") <- "How much of it was used for the following purposes in the last 12 months? (Waste"

attr(rdatafile[["S7BQ08F"]], "label") <- "How much of it was used for the following purposes in the last 12 months? (Other"

attr(rdatafile[["S7BQ08G"]], "label") <- "How much of it was used for the following purposes in the last 12 months? (Total"

attr(rdatafile[["S7BQ05_R"]], "label") <- "How much did your household consumed in the last 12 months"

attr(rdatafile[["S7BQ06_R"]], "label") <- "How much did your household sell in the last 12 months?"

attr(rdatafile[["S7BQ07_R"]], "label") <- "How much did your household stock in the last 12 months?"

attr(rdatafile[["S7BQ08A_R"]], "label") <- "How much of it was used for the following purposes in the last 12 months? (Given"

attr(rdatafile[["S7BQ08B_R"]], "label") <- "How much of it was used for the following purposes in the last 12 months? (Given"

attr(rdatafile[["S7BQ08C_R"]], "label") <- "How much of it was used for the following purposes in the last 12 months? (Used"

attr(rdatafile[["S7BQ08D_R"]], "label") <- "How much of it was used for the following purposes in the last 12 months? (Feed"

attr(rdatafile[["S7BQ08E_R"]], "label") <- "How much of it was used for the following purposes in the last 12 months? (Waste"

attr(rdatafile[["S7BQ08F_R"]], "label") <- "How much of it was used for the following purposes in the last 12 months? (Other"

attr(rdatafile[["S7BQ08G_R"]], "label") <- "How much of it was used for the following purposes in the last 12 months? (Total"

attr(rdatafile[["PSU"]], "label") <- "Primary Sampling Unit Serial Number"

attr(rdatafile[["HHID"]], "label") <- "Household id"

rdatafile[["QUARTER"]] <- haven::labelled_spss(rdatafile[["QUARTER"]],
    labels = c("" = )
)
attr(rdatafile[["QUARTER"]], "label") <- "Quarters"

attr(rdatafile[["HHWGT"]], "label") <- "Household annual weight"

attr(rdatafile[["STRATUM"]], "label") <- "Stratum 132 annual estimates"

rdatafile[["STRATUM16"]] <- haven::labelled_spss(rdatafile[["STRATUM16"]],
    labels = c("Barisal Rural" = 1,
               "Barisal Urban" = 2,
               "Chittagong Rural" = 3,
               "Chittagong Urban" = 4,
               "Chittagong City Corp." = 5,
               "Dhaka Rural" = 6,
               "Dhaka Urban" = 7,
               "Dhaka City Corp." = 8,
               "Khulna Rural" = 9,
               "Khulna Urban" = 10,
               "Khulna City Corp." = 11,
               "Rajshahi Rural" = 12,
               "Rajshahi Urban" = 13,
               "Rajshahi City Corp." = 14,
               "Sylhet Rural" = 15,
               "Sylhet Urban" = 16)
)
attr(rdatafile[["STRATUM16"]], "label") <- "Stratum 16 quarterly estimates"

rdatafile[["RUC"]] <- haven::labelled_spss(rdatafile[["RUC"]],
    labels = c("" = )
)
attr(rdatafile[["RUC"]], "label") <- "Rural / PSA / City Corp"

rdatafile[["URBRURAL"]] <- haven::labelled_spss(rdatafile[["URBRURAL"]],
    labels = c("Rural" = 1,
               "Urban" = 2)
)
attr(rdatafile[["URBRURAL"]], "label") <- "1 Rural, 2 Urban"

attr(rdatafile[["DIVISION_CODE"]], "label") <- "Division Code"

rdatafile[["DIVISION_NAME"]] <- haven::labelled_spss(rdatafile[["DIVISION_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["DIVISION_NAME"]], "label") <- "Division Name"

attr(rdatafile[["ZILA_CODE"]], "label") <- "Zila/District code"

rdatafile[["ZILA_NAME"]] <- haven::labelled_spss(rdatafile[["ZILA_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["ZILA_NAME"]], "label") <- "Zila/District name"

rdatafile[["S7C1Q00_DC"]] <- haven::labelled_spss(rdatafile[["S7C1Q00_DC"]],
    labels = c("" = )
)
attr(rdatafile[["S7C1Q00_DC"]], "label") <- "Name of domestic animals"

rdatafile[["S7C1Q00"]] <- haven::labelled_spss(rdatafile[["S7C1Q00"]],
    labels = c("Cattle" = 201,
               "Goat" = 202,
               "Sheep" = 203,
               "Buffalo" = 204,
               "Chicken" = 205,
               "Duck" = 206,
               "Pigeon" = 207,
               "Other domestic  Birds" = 208,
               "Other (specify)" = 209,
               "Total value" = 210)
)
attr(rdatafile[["S7C1Q00"]], "label") <- "CODE"

attr(rdatafile[["S7C1Q02A"]], "label") <- "How many ..[NAME OF THE ANIMAL].. own? What is their total value? (Number)"

attr(rdatafile[["S7C1Q02B"]], "label") <- "How many ..[NAME OF THE ANIMAL].. own? What is their total value? (taka)"

attr(rdatafile[["S7C1Q03A"]], "label") <- "How many were born/did your household purchase in the last 12 months? (Number)"

attr(rdatafile[["S7C1Q03B"]], "label") <- "How many were born/did your household purchase in the last 12 months?(taka)"

attr(rdatafile[["S7C1Q04A"]], "label") <- "How many died/did your household sell in the last 12 months? (Number)"

attr(rdatafile[["S7C1Q04B"]], "label") <- "How many died/did your household sell in the last 12 months? (taka)"

attr(rdatafile[["S7C1Q05A"]], "label") <- "How many did your household consume in the 12 months? (Number)"

attr(rdatafile[["S7C1Q05B"]], "label") <- "How many did your household consume in the 12 months? (taka)"

attr(rdatafile[["S7C1Q02A_R"]], "label") <- "How many ..[NAME OF THE ANIMAL].. own? What is their total value? (Number)"

attr(rdatafile[["S7C1Q02B_R"]], "label") <- "How many ..[NAME OF THE ANIMAL].. own? What is their total value? (taka)"

attr(rdatafile[["S7C1Q03A_R"]], "label") <- "How many were born/did your household purchase in the last 12 months? (Number)"

attr(rdatafile[["S7C1Q03B_R"]], "label") <- "How many were born/did your household purchase in the last 12 months?(taka)"

attr(rdatafile[["S7C1Q04A_R"]], "label") <- "How many died/did your household sell in the last 12 months? (Number)"

attr(rdatafile[["S7C1Q04B_R"]], "label") <- "How many died/did your household sell in the last 12 months? (taka)"

attr(rdatafile[["S7C1Q05A_R"]], "label") <- "How many did your household consume in the 12 months? (Number)"

attr(rdatafile[["S7C1Q05B_R"]], "label") <- "How many did your household consume in the 12 months? (taka)"

attr(rdatafile[["PSU"]], "label") <- "Primary Sampling Unit Serial Number"

attr(rdatafile[["HHID"]], "label") <- "Household id"

rdatafile[["QUARTER"]] <- haven::labelled_spss(rdatafile[["QUARTER"]],
    labels = c("" = )
)
attr(rdatafile[["QUARTER"]], "label") <- "Quarters"

attr(rdatafile[["HHWGT"]], "label") <- "Household annual weight"

attr(rdatafile[["STRATUM"]], "label") <- "Stratum 132 annual estimates"

rdatafile[["STRATUM16"]] <- haven::labelled_spss(rdatafile[["STRATUM16"]],
    labels = c("Barisal Rural" = 1,
               "Barisal Urban" = 2,
               "Chittagong Rural" = 3,
               "Chittagong Urban" = 4,
               "Chittagong City Corp." = 5,
               "Dhaka Rural" = 6,
               "Dhaka Urban" = 7,
               "Dhaka City Corp." = 8,
               "Khulna Rural" = 9,
               "Khulna Urban" = 10,
               "Khulna City Corp." = 11,
               "Rajshahi Rural" = 12,
               "Rajshahi Urban" = 13,
               "Rajshahi City Corp." = 14,
               "Sylhet Rural" = 15,
               "Sylhet Urban" = 16)
)
attr(rdatafile[["STRATUM16"]], "label") <- "Stratum 16 quarterly estimates"

rdatafile[["RUC"]] <- haven::labelled_spss(rdatafile[["RUC"]],
    labels = c("" = )
)
attr(rdatafile[["RUC"]], "label") <- "Rural / PSA / City Corp"

rdatafile[["URBRURAL"]] <- haven::labelled_spss(rdatafile[["URBRURAL"]],
    labels = c("Rural" = 1,
               "Urban" = 2)
)
attr(rdatafile[["URBRURAL"]], "label") <- "1 Rural, 2 Urban"

attr(rdatafile[["DIVISION_CODE"]], "label") <- "Division Code"

rdatafile[["DIVISION_NAME"]] <- haven::labelled_spss(rdatafile[["DIVISION_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["DIVISION_NAME"]], "label") <- "Division Name"

attr(rdatafile[["ZILA_CODE"]], "label") <- "Zila/District code"

rdatafile[["ZILA_NAME"]] <- haven::labelled_spss(rdatafile[["ZILA_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["ZILA_NAME"]], "label") <- "Zila/District name"

rdatafile[["S7C2Q00_DC"]] <- haven::labelled_spss(rdatafile[["S7C2Q00_DC"]],
    labels = c("" = )
)
attr(rdatafile[["S7C2Q00_DC"]], "label") <- "Animal product"

rdatafile[["S7C2Q00"]] <- haven::labelled_spss(rdatafile[["S7C2Q00"]],
    labels = c("Beef" = 211,
               "Chicken" = 212,
               "Mutton" = 213,
               "Milk" = 214,
               "Eggs" = 215,
               "Animal skins" = 216,
               "Cow dung" = 217,
               "Other" = 218,
               "Total value" = 220)
)
attr(rdatafile[["S7C2Q00"]], "label") <- "CODE"

attr(rdatafile[["S7C2Q06A"]], "label") <- "How much did you produce in the last 12 months? (Quantity)"

attr(rdatafile[["S7C2Q06B"]], "label") <- "How much did you produce in the last 12 months? (taka)"

attr(rdatafile[["S7C2Q07A"]], "label") <- "How much did you sell in the last 12 months? (Quantity)"

attr(rdatafile[["S7C2Q07B"]], "label") <- "How much did you sell in the last 12 months? (taka)"

attr(rdatafile[["S7C2Q08A"]], "label") <- "How much did you consume in the last 12 months? (Quantity)"

attr(rdatafile[["S7C2Q08B"]], "label") <- "How much did you consume in the last 12 months? (taka)"

attr(rdatafile[["S7C2Q06A_R"]], "label") <- "How much did you produce in the last 12 months? (Quantity)"

attr(rdatafile[["S7C2Q06B_R"]], "label") <- "How much did you produce in the last 12 months? (taka)"

attr(rdatafile[["S7C2Q07A_R"]], "label") <- "How much did you sell in the last 12 months? (Quantity)"

attr(rdatafile[["S7C2Q07B_R"]], "label") <- "How much did you sell in the last 12 months? (taka)"

attr(rdatafile[["S7C2Q08A_R"]], "label") <- "How much did you consume in the last 12 months? (Quantity)"

attr(rdatafile[["S7C2Q08B_R"]], "label") <- "How much did you consume in the last 12 months? (taka)"

attr(rdatafile[["PSU"]], "label") <- "Primary Sampling Unit Serial Number"

attr(rdatafile[["HHID"]], "label") <- "Household id"

rdatafile[["QUARTER"]] <- haven::labelled_spss(rdatafile[["QUARTER"]],
    labels = c("" = )
)
attr(rdatafile[["QUARTER"]], "label") <- "Quarters"

attr(rdatafile[["HHWGT"]], "label") <- "Household annual weight"

attr(rdatafile[["STRATUM"]], "label") <- "Stratum 132 annual estimates"

rdatafile[["STRATUM16"]] <- haven::labelled_spss(rdatafile[["STRATUM16"]],
    labels = c("Barisal Rural" = 1,
               "Barisal Urban" = 2,
               "Chittagong Rural" = 3,
               "Chittagong Urban" = 4,
               "Chittagong City Corp." = 5,
               "Dhaka Rural" = 6,
               "Dhaka Urban" = 7,
               "Dhaka City Corp." = 8,
               "Khulna Rural" = 9,
               "Khulna Urban" = 10,
               "Khulna City Corp." = 11,
               "Rajshahi Rural" = 12,
               "Rajshahi Urban" = 13,
               "Rajshahi City Corp." = 14,
               "Sylhet Rural" = 15,
               "Sylhet Urban" = 16)
)
attr(rdatafile[["STRATUM16"]], "label") <- "Stratum 16 quarterly estimates"

rdatafile[["RUC"]] <- haven::labelled_spss(rdatafile[["RUC"]],
    labels = c("" = )
)
attr(rdatafile[["RUC"]], "label") <- "Rural / PSA / City Corp"

rdatafile[["URBRURAL"]] <- haven::labelled_spss(rdatafile[["URBRURAL"]],
    labels = c("Rural" = 1,
               "Urban" = 2)
)
attr(rdatafile[["URBRURAL"]], "label") <- "1 Rural, 2 Urban"

attr(rdatafile[["DIVISION_CODE"]], "label") <- "Division Code"

rdatafile[["DIVISION_NAME"]] <- haven::labelled_spss(rdatafile[["DIVISION_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["DIVISION_NAME"]], "label") <- "Division Name"

attr(rdatafile[["ZILA_CODE"]], "label") <- "Zila/District code"

rdatafile[["ZILA_NAME"]] <- haven::labelled_spss(rdatafile[["ZILA_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["ZILA_NAME"]], "label") <- "Zila/District name"

rdatafile[["S7C3Q00_DC"]] <- haven::labelled_spss(rdatafile[["S7C3Q00_DC"]],
    labels = c("" = )
)
attr(rdatafile[["S7C3Q00_DC"]], "label") <- "Source"

rdatafile[["S7C3Q00"]] <- haven::labelled_spss(rdatafile[["S7C3Q00"]],
    labels = c("Fish farm" = 221,
               "Fish Hatchery" = 222,
               "Marine fishing" = 223,
               "Canal/river fishing" = 224,
               "Swampland/marsh/fen fishing" = 225,
               "Pond/sink fishing" = 226,
               "Fish fry, crab frog and Other, specify" = 227,
               "Dry fish" = 228,
               "Total value" = 230)
)
attr(rdatafile[["S7C3Q00"]], "label") <- "CODE"

attr(rdatafile[["S7C3Q10A"]], "label") <- "How much did you produce (catch) in the past 12 months? (kg)"

attr(rdatafile[["S7C3Q10B"]], "label") <- "How much did you produce (catch) in the past 12 months? (taka)"

attr(rdatafile[["S7C3Q11A"]], "label") <- "How much did your household sell in the past 12 months? (kg)"

attr(rdatafile[["S7C3Q11B"]], "label") <- "How much did your household sell in the past 12 months? (taka)"

attr(rdatafile[["S7C3Q12A"]], "label") <- "How much did your household consume in the 12 months? (kg)"

attr(rdatafile[["S7C3Q12B"]], "label") <- "How much did your household consume in the 12 months? (taka)"

attr(rdatafile[["S7C3Q10A_R"]], "label") <- "How much did you produce (catch) in the past 12 months? (kg)"

attr(rdatafile[["S7C3Q11A_R"]], "label") <- "How much did your household sell in the past 12 months? (kg)"

attr(rdatafile[["S7C3Q12A_R"]], "label") <- "How much did your household consume in the 12 months? (kg)"

attr(rdatafile[["PSU"]], "label") <- "Primary Sampling Unit Serial Number"

attr(rdatafile[["HHID"]], "label") <- "Household id"

rdatafile[["QUARTER"]] <- haven::labelled_spss(rdatafile[["QUARTER"]],
    labels = c("" = )
)
attr(rdatafile[["QUARTER"]], "label") <- "Quarters"

attr(rdatafile[["HHWGT"]], "label") <- "Household annual weight"

attr(rdatafile[["STRATUM"]], "label") <- "Stratum 132 annual estimates"

rdatafile[["STRATUM16"]] <- haven::labelled_spss(rdatafile[["STRATUM16"]],
    labels = c("Barisal Rural" = 1,
               "Barisal Urban" = 2,
               "Chittagong Rural" = 3,
               "Chittagong Urban" = 4,
               "Chittagong City Corp." = 5,
               "Dhaka Rural" = 6,
               "Dhaka Urban" = 7,
               "Dhaka City Corp." = 8,
               "Khulna Rural" = 9,
               "Khulna Urban" = 10,
               "Khulna City Corp." = 11,
               "Rajshahi Rural" = 12,
               "Rajshahi Urban" = 13,
               "Rajshahi City Corp." = 14,
               "Sylhet Rural" = 15,
               "Sylhet Urban" = 16)
)
attr(rdatafile[["STRATUM16"]], "label") <- "Stratum 16 quarterly estimates"

rdatafile[["RUC"]] <- haven::labelled_spss(rdatafile[["RUC"]],
    labels = c("" = )
)
attr(rdatafile[["RUC"]], "label") <- "Rural / PSA / City Corp"

rdatafile[["URBRURAL"]] <- haven::labelled_spss(rdatafile[["URBRURAL"]],
    labels = c("Rural" = 1,
               "Urban" = 2)
)
attr(rdatafile[["URBRURAL"]], "label") <- "1 Rural, 2 Urban"

attr(rdatafile[["DIVISION_CODE"]], "label") <- "Division Code"

rdatafile[["DIVISION_NAME"]] <- haven::labelled_spss(rdatafile[["DIVISION_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["DIVISION_NAME"]], "label") <- "Division Name"

attr(rdatafile[["ZILA_CODE"]], "label") <- "Zila/District code"

rdatafile[["ZILA_NAME"]] <- haven::labelled_spss(rdatafile[["ZILA_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["ZILA_NAME"]], "label") <- "Zila/District name"

rdatafile[["S7C4Q00_DC"]] <- haven::labelled_spss(rdatafile[["S7C4Q00_DC"]],
    labels = c("" = )
)
attr(rdatafile[["S7C4Q00_DC"]], "label") <- "Tree"

rdatafile[["S7C4Q00"]] <- haven::labelled_spss(rdatafile[["S7C4Q00"]],
    labels = c("Bamboo" = 231,
               "Timber trees" = 232,
               "Fruit trees" = 233,
               "Firewood trees" = 234,
               "Honey" = 235,
               "Sapling/seedling sale" = 236,
               "Flower sale" = 237,
               "Flower /fruit seed sale" = 238,
               "Other, specify" = 239,
               "Total value" = 240)
)
attr(rdatafile[["S7C4Q00"]], "label") <- "CODE"

attr(rdatafile[["S7C4Q14A"]], "label") <- "How many trees do you presently own? What is their total value? (No of trees)"

attr(rdatafile[["S7C4Q14B"]], "label") <- "How many trees do you presently own? What is their total value? (taka)"

attr(rdatafile[["S7C4Q15"]], "label") <- "How much did your household sell in the last 12 months? (taka)"

attr(rdatafile[["S7C4Q16"]], "label") <- "How much did your household sell in the last 12 months? (taka)"

attr(rdatafile[["S7C4Q14A_R"]], "label") <- "How many trees do you presently own? What is their total value? (No of trees)"

attr(rdatafile[["PSU"]], "label") <- "Primary Sampling Unit Serial Number"

attr(rdatafile[["HHID"]], "label") <- "Household id"

rdatafile[["QUARTER"]] <- haven::labelled_spss(rdatafile[["QUARTER"]],
    labels = c("" = )
)
attr(rdatafile[["QUARTER"]], "label") <- "Quarters"

attr(rdatafile[["HHWGT"]], "label") <- "Household annual weight"

attr(rdatafile[["STRATUM"]], "label") <- "Stratum 132 annual estimates"

rdatafile[["STRATUM16"]] <- haven::labelled_spss(rdatafile[["STRATUM16"]],
    labels = c("Barisal Rural" = 1,
               "Barisal Urban" = 2,
               "Chittagong Rural" = 3,
               "Chittagong Urban" = 4,
               "Chittagong City Corp." = 5,
               "Dhaka Rural" = 6,
               "Dhaka Urban" = 7,
               "Dhaka City Corp." = 8,
               "Khulna Rural" = 9,
               "Khulna Urban" = 10,
               "Khulna City Corp." = 11,
               "Rajshahi Rural" = 12,
               "Rajshahi Urban" = 13,
               "Rajshahi City Corp." = 14,
               "Sylhet Rural" = 15,
               "Sylhet Urban" = 16)
)
attr(rdatafile[["STRATUM16"]], "label") <- "Stratum 16 quarterly estimates"

rdatafile[["RUC"]] <- haven::labelled_spss(rdatafile[["RUC"]],
    labels = c("" = )
)
attr(rdatafile[["RUC"]], "label") <- "Rural / PSA / City Corp"

rdatafile[["URBRURAL"]] <- haven::labelled_spss(rdatafile[["URBRURAL"]],
    labels = c("Rural" = 1,
               "Urban" = 2)
)
attr(rdatafile[["URBRURAL"]], "label") <- "1 Rural, 2 Urban"

attr(rdatafile[["DIVISION_CODE"]], "label") <- "Division Code"

rdatafile[["DIVISION_NAME"]] <- haven::labelled_spss(rdatafile[["DIVISION_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["DIVISION_NAME"]], "label") <- "Division Name"

attr(rdatafile[["ZILA_CODE"]], "label") <- "Zila/District code"

rdatafile[["ZILA_NAME"]] <- haven::labelled_spss(rdatafile[["ZILA_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["ZILA_NAME"]], "label") <- "Zila/District name"

rdatafile[["S7DQ00_DC"]] <- haven::labelled_spss(rdatafile[["S7DQ00_DC"]],
    labels = c("" = )
)
attr(rdatafile[["S7DQ00_DC"]], "label") <- "Items of expenditure"

rdatafile[["S7DQ00"]] <- haven::labelled_spss(rdatafile[["S7DQ00"]],
    labels = c("Seed seedling (crop seedling)" = 301,
               "Seed (forest seedling)" = 302,
               "Fertilizer (chemical)" = 303,
               "Fertilizer (compose/mix)" = 304,
               "Food of livestock/ draft animal" = 305,
               "Tractor/ tiller/ power tiller (rental)" = 306,
               "Irrigation expenses" = 307,
               "Insecticides" = 308,
               "Land revenue (agricultural land)" = 309,
               "Rent (agricultural land)" = 311,
               "Carrying cost of goods and transportation expenses (agricultural goods)" = 312,
               "Salary/wages of laborer employed in agriculture" = 313,
               "Insurance expenses (agriculture related)" = 314,
               "Interest of the Agriculture loan" = 315,
               "Electricity and fuel cost" = 316,
               "Bees culture expenses" = 317,
               "Fish production expenses" = 318,
               "Livestock rearing expenses (Treatment cost etc.)" = 319,
               "Poultry rearing expenses (Treatment cost etc.)" = 321,
               "Other (specify)" = 322,
               "Total value" = 330)
)
attr(rdatafile[["S7DQ00"]], "label") <- "Code"

rdatafile[["S7DQ01"]] <- haven::labelled_spss(rdatafile[["S7DQ01"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S7DQ01"]], "label") <- "Did your household spend any money on the (item) in last 12 months?"

attr(rdatafile[["S7DQ02A"]], "label") <- "How much did your household spend on the (item) in the last 12 months? (Kg)"

attr(rdatafile[["S7DQ02B"]], "label") <- "How much did your household spend on the (item) in the last 12 months? (Taka)"

attr(rdatafile[["PSU"]], "label") <- "Primary Sampling Unit Serial Number"

attr(rdatafile[["HHID"]], "label") <- "Household id"

rdatafile[["QUARTER"]] <- haven::labelled_spss(rdatafile[["QUARTER"]],
    labels = c("" = )
)
attr(rdatafile[["QUARTER"]], "label") <- "Quarters"

attr(rdatafile[["HHWGT"]], "label") <- "Household annual weight"

attr(rdatafile[["STRATUM"]], "label") <- "Stratum 132 annual estimates"

rdatafile[["STRATUM16"]] <- haven::labelled_spss(rdatafile[["STRATUM16"]],
    labels = c("Barisal Rural" = 1,
               "Barisal Urban" = 2,
               "Chittagong Rural" = 3,
               "Chittagong Urban" = 4,
               "Chittagong City Corp." = 5,
               "Dhaka Rural" = 6,
               "Dhaka Urban" = 7,
               "Dhaka City Corp." = 8,
               "Khulna Rural" = 9,
               "Khulna Urban" = 10,
               "Khulna City Corp." = 11,
               "Rajshahi Rural" = 12,
               "Rajshahi Urban" = 13,
               "Rajshahi City Corp." = 14,
               "Sylhet Rural" = 15,
               "Sylhet Urban" = 16)
)
attr(rdatafile[["STRATUM16"]], "label") <- "Stratum 16 quarterly estimates"

rdatafile[["RUC"]] <- haven::labelled_spss(rdatafile[["RUC"]],
    labels = c("" = )
)
attr(rdatafile[["RUC"]], "label") <- "Rural / PSA / City Corp"

rdatafile[["URBRURAL"]] <- haven::labelled_spss(rdatafile[["URBRURAL"]],
    labels = c("Rural" = 1,
               "Urban" = 2)
)
attr(rdatafile[["URBRURAL"]], "label") <- "1 Rural, 2 Urban"

attr(rdatafile[["DIVISION_CODE"]], "label") <- "Division Code"

rdatafile[["DIVISION_NAME"]] <- haven::labelled_spss(rdatafile[["DIVISION_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["DIVISION_NAME"]], "label") <- "Division Name"

attr(rdatafile[["ZILA_CODE"]], "label") <- "Zila/District code"

rdatafile[["ZILA_NAME"]] <- haven::labelled_spss(rdatafile[["ZILA_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["ZILA_NAME"]], "label") <- "Zila/District name"

rdatafile[["S7EQ00_DC"]] <- haven::labelled_spss(rdatafile[["S7EQ00_DC"]],
    labels = c("" = )
)
attr(rdatafile[["S7EQ00_DC"]], "label") <- "Farming asset"

rdatafile[["S7EQ00"]] <- haven::labelled_spss(rdatafile[["S7EQ00"]],
    labels = c("Tractor" = 401,
               "Thresher" = 402,
               "Power tiller" = 403,
               "Power pump" = 404,
               "Hand pump" = 405,
               "Plough and yoke" = 406,
               "Deep tube-well" = 407,
               "Shallow tube-well" = 408,
               "Sprayer" = 409,
               "Husking machine" = 411,
               "Ginning machine" = 412,
               "Country boat" = 413,
               "Engine boat" = 414,
               "Fishing net" = 415,
               "Cage incubator" = 416,
               "Brooder" = 417,
               "Bees-box" = 418,
               "Other (specify)" = 419,
               "Total value" = 420)
)
attr(rdatafile[["S7EQ00"]], "label") <- "CODE"

attr(rdatafile[["S7EQ01A"]], "label") <- "How many ..[NAME OF ASSET].. do you presently own? What is their total value? (N"

attr(rdatafile[["S7EQ01B"]], "label") <- "How many ..[NAME OF ASSET].. do you presently own? What is their total value? (t"

attr(rdatafile[["S7EQ02A"]], "label") <- "How many did your household buy in the last 12 months? (Number)"

attr(rdatafile[["S7EQ02B"]], "label") <- "How many did your household buy in the last 12 months?(taka)"

attr(rdatafile[["S7EQ03A"]], "label") <- "How many did your household sell in the last 12 months? (Number)"

attr(rdatafile[["S7EQ03B"]], "label") <- "How many did your household sell in the last 12 months? (taka)"

attr(rdatafile[["S7EQ04"]], "label") <- "How much did your household earn from rental of this item in the last 12 months?"

attr(rdatafile[["PSU"]], "label") <- "Primary Sampling Unit Serial Number"

attr(rdatafile[["HHID"]], "label") <- "Household id"

rdatafile[["QUARTER"]] <- haven::labelled_spss(rdatafile[["QUARTER"]],
    labels = c("" = )
)
attr(rdatafile[["QUARTER"]], "label") <- "Quarters"

attr(rdatafile[["HHWGT"]], "label") <- "Household annual weight"

attr(rdatafile[["STRATUM"]], "label") <- "Stratum 132 annual estimates"

rdatafile[["STRATUM16"]] <- haven::labelled_spss(rdatafile[["STRATUM16"]],
    labels = c("Barisal Rural" = 1,
               "Barisal Urban" = 2,
               "Chittagong Rural" = 3,
               "Chittagong Urban" = 4,
               "Chittagong City Corp." = 5,
               "Dhaka Rural" = 6,
               "Dhaka Urban" = 7,
               "Dhaka City Corp." = 8,
               "Khulna Rural" = 9,
               "Khulna Urban" = 10,
               "Khulna City Corp." = 11,
               "Rajshahi Rural" = 12,
               "Rajshahi Urban" = 13,
               "Rajshahi City Corp." = 14,
               "Sylhet Rural" = 15,
               "Sylhet Urban" = 16)
)
attr(rdatafile[["STRATUM16"]], "label") <- "Stratum 16 quarterly estimates"

rdatafile[["RUC"]] <- haven::labelled_spss(rdatafile[["RUC"]],
    labels = c("" = )
)
attr(rdatafile[["RUC"]], "label") <- "Rural / PSA / City Corp"

rdatafile[["URBRURAL"]] <- haven::labelled_spss(rdatafile[["URBRURAL"]],
    labels = c("Rural" = 1,
               "Urban" = 2)
)
attr(rdatafile[["URBRURAL"]], "label") <- "1 Rural, 2 Urban"

attr(rdatafile[["DIVISION_CODE"]], "label") <- "Division Code"

rdatafile[["DIVISION_NAME"]] <- haven::labelled_spss(rdatafile[["DIVISION_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["DIVISION_NAME"]], "label") <- "Division Name"

attr(rdatafile[["ZILA_CODE"]], "label") <- "Zila/District code"

rdatafile[["ZILA_NAME"]] <- haven::labelled_spss(rdatafile[["ZILA_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["ZILA_NAME"]], "label") <- "Zila/District name"

rdatafile[["S8AQ01A"]] <- haven::labelled_spss(rdatafile[["S8AQ01A"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S8AQ01A"]], "label") <- "Is there any land or property which your household owns but doesn't operate?"

rdatafile[["S8AQ01B"]] <- haven::labelled_spss(rdatafile[["S8AQ01B"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S8AQ01B"]], "label") <- "Is there any land or property which your household owns but doesn't operate? (Ac"

attr(rdatafile[["S8AQ02"]], "label") <- "How much would it cost to buy land or property owned by your household?"

rdatafile[["S8AQ03"]] <- haven::labelled_spss(rdatafile[["S8AQ03"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S8AQ03"]], "label") <- "Did your household purchase any land or property during the last 12 months?"

attr(rdatafile[["S8AQ04"]], "label") <- "How much did your household spend on purchasing this land or property?"

rdatafile[["S8AQ05"]] <- haven::labelled_spss(rdatafile[["S8AQ05"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S8AQ05"]], "label") <- "Did your household purchase any house or flat over the past 12 months?"

attr(rdatafile[["S8AQ06"]], "label") <- "How much did your household spend on purchasing  that house or flat?"

rdatafile[["S8AQ07"]] <- haven::labelled_spss(rdatafile[["S8AQ07"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S8AQ07"]], "label") <- "Does your household own any other assets (e.g. stocks, bonds, other financial as"

attr(rdatafile[["S8AQ08"]], "label") <- "How much in total are these worth?"

rdatafile[["S8AQ09"]] <- haven::labelled_spss(rdatafile[["S8AQ09"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S8AQ09"]], "label") <- "Did your household purchase any assets other than land over the past 12 months?"

attr(rdatafile[["S8AQ10"]], "label") <- "How much did your household spend on purchasing these assets?"

rdatafile[["S8AQ11"]] <- haven::labelled_spss(rdatafile[["S8AQ11"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S8AQ11"]], "label") <- "Did your household sell any assets over the past 12 months?"

attr(rdatafile[["S8AQ12"]], "label") <- "How much did your household get from selling these assets?"

attr(rdatafile[["PSU"]], "label") <- "Primary Sampling Unit Serial Number"

attr(rdatafile[["HHID"]], "label") <- "Household id"

rdatafile[["QUARTER"]] <- haven::labelled_spss(rdatafile[["QUARTER"]],
    labels = c("" = )
)
attr(rdatafile[["QUARTER"]], "label") <- "Quarters"

attr(rdatafile[["HHWGT"]], "label") <- "Household annual weight"

attr(rdatafile[["STRATUM"]], "label") <- "Stratum 132 annual estimates"

rdatafile[["STRATUM16"]] <- haven::labelled_spss(rdatafile[["STRATUM16"]],
    labels = c("Barisal Rural" = 1,
               "Barisal Urban" = 2,
               "Chittagong Rural" = 3,
               "Chittagong Urban" = 4,
               "Chittagong City Corp." = 5,
               "Dhaka Rural" = 6,
               "Dhaka Urban" = 7,
               "Dhaka City Corp." = 8,
               "Khulna Rural" = 9,
               "Khulna Urban" = 10,
               "Khulna City Corp." = 11,
               "Rajshahi Rural" = 12,
               "Rajshahi Urban" = 13,
               "Rajshahi City Corp." = 14,
               "Sylhet Rural" = 15,
               "Sylhet Urban" = 16)
)
attr(rdatafile[["STRATUM16"]], "label") <- "Stratum 16 quarterly estimates"

rdatafile[["RUC"]] <- haven::labelled_spss(rdatafile[["RUC"]],
    labels = c("" = )
)
attr(rdatafile[["RUC"]], "label") <- "Rural / PSA / City Corp"

rdatafile[["URBRURAL"]] <- haven::labelled_spss(rdatafile[["URBRURAL"]],
    labels = c("Rural" = 1,
               "Urban" = 2)
)
attr(rdatafile[["URBRURAL"]], "label") <- "1 Rural, 2 Urban"

attr(rdatafile[["DIVISION_CODE"]], "label") <- "Division Code"

rdatafile[["DIVISION_NAME"]] <- haven::labelled_spss(rdatafile[["DIVISION_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["DIVISION_NAME"]], "label") <- "Division Name"

attr(rdatafile[["ZILA_CODE"]], "label") <- "Zila/District code"

rdatafile[["ZILA_NAME"]] <- haven::labelled_spss(rdatafile[["ZILA_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["ZILA_NAME"]], "label") <- "Zila/District name"

attr(rdatafile[["S8BQ01"]], "label") <- "Income from rent of land received during the past 12 months:"

attr(rdatafile[["S8BQ02"]], "label") <- "Income from rent of other property received during the past 12 months:"

attr(rdatafile[["S8BQ03A"]], "label") <- "Social and insurance (life and non-life) income received during the past 12 mont"

attr(rdatafile[["S8BQ03B"]], "label") <- "Social and insurance (life and non-life) income received during the past 12 mont"

attr(rdatafile[["S8BQ03C"]], "label") <- "Social and insurance (life and non-life) income received during the past 12 mont"

attr(rdatafile[["S8BQ04"]], "label") <- "Profit and dividend received as partner/share holder during the past 12 months:"

attr(rdatafile[["S8BQ05"]], "label") <- "Lottery/prize bond/ other similar income received in cash or in-kind during the"

attr(rdatafile[["S8BQ06"]], "label") <- "Charity, gift, royalty, help, zakat, fitra or other such assistance, etc. receiv"

attr(rdatafile[["S8BQ07"]], "label") <- "Charity, gift, royalty, help, zakat, fitra or other such assistance, etc. receiv"

attr(rdatafile[["S8BQ08"]], "label") <- "Remittances received from relatives during the past 12 months:"

attr(rdatafile[["S8BQ09"]], "label") <- "Remittances received from relatives during the past 12 months:"

rdatafile[["S8BQ10"]] <- haven::labelled_spss(rdatafile[["S8BQ10"]],
    labels = c("Construction" = 1,
               "Business" = 2,
               "Education" = 3,
               "Marriage" = 4,
               "Consumption" = 5,
               "Treatment" = 6,
               "Other (Specify)" = 7)
)
attr(rdatafile[["S8BQ10"]], "label") <- "Where did you invest/spend the received money?"

attr(rdatafile[["S8BQ11"]], "label") <- "Gratuity, separation payment, retirement benefit received during the past 12 mon"

attr(rdatafile[["S8BQ12"]], "label") <- "Interest received during the past 12 months:"

attr(rdatafile[["S8BQ13"]], "label") <- "Other cash or in-kind receipts during the past 12 months:"

attr(rdatafile[["PSU"]], "label") <- "Primary Sampling Unit Serial Number"

attr(rdatafile[["HHID"]], "label") <- "Household id"

rdatafile[["QUARTER"]] <- haven::labelled_spss(rdatafile[["QUARTER"]],
    labels = c("" = )
)
attr(rdatafile[["QUARTER"]], "label") <- "Quarters"

attr(rdatafile[["HHWGT"]], "label") <- "Household annual weight"

attr(rdatafile[["STRATUM"]], "label") <- "Stratum 132 annual estimates"

rdatafile[["STRATUM16"]] <- haven::labelled_spss(rdatafile[["STRATUM16"]],
    labels = c("Barisal Rural" = 1,
               "Barisal Urban" = 2,
               "Chittagong Rural" = 3,
               "Chittagong Urban" = 4,
               "Chittagong City Corp." = 5,
               "Dhaka Rural" = 6,
               "Dhaka Urban" = 7,
               "Dhaka City Corp." = 8,
               "Khulna Rural" = 9,
               "Khulna Urban" = 10,
               "Khulna City Corp." = 11,
               "Rajshahi Rural" = 12,
               "Rajshahi Urban" = 13,
               "Rajshahi City Corp." = 14,
               "Sylhet Rural" = 15,
               "Sylhet Urban" = 16)
)
attr(rdatafile[["STRATUM16"]], "label") <- "Stratum 16 quarterly estimates"

rdatafile[["RUC"]] <- haven::labelled_spss(rdatafile[["RUC"]],
    labels = c("" = )
)
attr(rdatafile[["RUC"]], "label") <- "Rural / PSA / City Corp"

rdatafile[["URBRURAL"]] <- haven::labelled_spss(rdatafile[["URBRURAL"]],
    labels = c("Rural" = 1,
               "Urban" = 2)
)
attr(rdatafile[["URBRURAL"]], "label") <- "1 Rural, 2 Urban"

attr(rdatafile[["DIVISION_CODE"]], "label") <- "Division Code"

rdatafile[["DIVISION_NAME"]] <- haven::labelled_spss(rdatafile[["DIVISION_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["DIVISION_NAME"]], "label") <- "Division Name"

attr(rdatafile[["ZILA_CODE"]], "label") <- "Zila/District code"

rdatafile[["ZILA_NAME"]] <- haven::labelled_spss(rdatafile[["ZILA_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["ZILA_NAME"]], "label") <- "Zila/District name"

rdatafile[["S8CQ00"]] <- haven::labelled_spss(rdatafile[["S8CQ00"]],
    labels = c("" = )
)
attr(rdatafile[["S8CQ00"]], "label") <- "PERSON ID"

attr(rdatafile[["S8CQ03"]], "label") <- "Name"

rdatafile[["S8CQ04"]] <- haven::labelled_spss(rdatafile[["S8CQ04"]],
    labels = c("Head" = 1,
               "Husband/Wife" = 2,
               "Son/Daughter" = 3,
               "Spouse of Son/Daughter" = 4,
               "Grandchild" = 5,
               "Father/Mother" = 6,
               "Brother/Sister" = 7,
               "Niece/Nephew" = 8,
               "Father/Mother-in-law" = 9,
               "Brother/Sister-in-law" = 10,
               "Other relative (specify)" = 11,
               "Servant" = 12,
               "Employee" = 13,
               "Other (specify)" = 14)
)
attr(rdatafile[["S8CQ04"]], "label") <- "Relation-ship to head of the H.H."

attr(rdatafile[["S8CQ05A"]], "label") <- "When did (name) migrate? (Months)"

attr(rdatafile[["S8CQ05B"]], "label") <- "When did (name) migrate? (Years)"

rdatafile[["S8CQ06"]] <- haven::labelled_spss(rdatafile[["S8CQ06"]],
    labels = c("In country" = 1,
               "Abroad" = 2)
)
attr(rdatafile[["S8CQ06"]], "label") <- "Where is (name) working?"

attr(rdatafile[["S8CQ07"]], "label") <- "If in-country, write zila code."

rdatafile[["S8CQ08"]] <- haven::labelled_spss(rdatafile[["S8CQ08"]],
    labels = c("Saudi Arabia" = 1,
               "Qatar" = 2,
               "Kuwait" = 3,
               "Oman" = 4,
               "Malaysia" = 5,
               "Singapore" = 6,
               "Iraq" = 7,
               "Iran" = 8,
               "Libya" = 9,
               "United Arab Emirates" = 10,
               "Canada" = 11,
               "Australia" = 12,
               "U.K." = 13,
               "USA" = 14,
               "Korea (South)" = 15,
               "Japan" = 16,
               "Turkey" = 17,
               "Germany" = 18,
               "Sweden" = 19,
               "Federation of Russia" = 20,
               "Italy" = 21,
               "Other European Country" = 22,
               "Brunai" = 23,
               "Mauritius" = 24,
               "South Africa" = 25,
               "Other (specify)" = 26)
)
attr(rdatafile[["S8CQ08"]], "label") <- "If abroad, write country code."

attr(rdatafile[["S8CQ09"]], "label") <- "Age"

rdatafile[["S8CQ10"]] <- haven::labelled_spss(rdatafile[["S8CQ10"]],
    labels = c("Male" = 1,
               "Female" = 2)
)
attr(rdatafile[["S8CQ10"]], "label") <- "Sex"

rdatafile[["S8CQ11"]] <- haven::labelled_spss(rdatafile[["S8CQ11"]],
    labels = c("No class passed/pre-schooling" = 0,
               "Class 1" = 1,
               "Class 2" = 2,
               "Class 3" = 3,
               "Class 4" = 4,
               "PEC/equivalent" = 5,
               "Class6" = 6,
               "Class 7" = 7,
               "JSC/equivalent" = 8,
               "Class 9" = 9,
               "SSC/equivalent" = 10,
               "HSC/equivalent" = 11,
               "Vocational" = 12,
               "Nursing" = 13,
               "Technical Education" = 14,
               "Graduate/equivalent" = 15,
               "Medical" = 16,
               "Engineering" = 17,
               "Post graduate/ equivalent" = 18,
               "Other (specify)" = 19)
)
attr(rdatafile[["S8CQ11"]], "label") <- "Level of education Literacy"

attr(rdatafile[["S8CQ12"]], "label") <- "Occupation"

rdatafile[["S8CQ13"]] <- haven::labelled_spss(rdatafile[["S8CQ13"]],
    labels = c("Once" = 1,
               "Twice" = 2,
               "Three times" = 3,
               "Four times" = 4,
               "More than five times" = 5,
               "Never send" = 6,
               "Other (Specify)" = 7)
)
attr(rdatafile[["S8CQ13"]], "label") <- "How many times (name) send money during the last 2 years?"

attr(rdatafile[["S8CQ14"]], "label") <- "What is the total amount of money that (name) has sent over the last 2 years?"

rdatafile[["S8CQ15"]] <- haven::labelled_spss(rdatafile[["S8CQ15"]],
    labels = c("Western Union" = 1,
               "Money Gram" = 2,
               "Postal Money Order" = 3,
               "Through Bank" = 4,
               "Through Friend/Relatives" = 5,
               "Through Travel Agency" = 6,
               "Agent/Broker" = 7,
               "Other (specify)" = 8)
)
attr(rdatafile[["S8CQ15"]], "label") <- "How did (name) send money to the household?"

rdatafile[["S8CQ16A"]] <- haven::labelled_spss(rdatafile[["S8CQ16A"]],
    labels = c("Food" = 1,
               "Electronic Goods (TV, VCD, etc.)" = 2,
               "Mobile Phone" = 3,
               "Computer" = 4,
               "Vehicle" = 5,
               "Clothing" = 6,
               "Household Appliance" = 7,
               "Other (specify)" = 8)
)
attr(rdatafile[["S8CQ16A"]], "label") <- "Write the code of any goods/ things that (name) has sent to the household in the"

rdatafile[["S8CQ16B"]] <- haven::labelled_spss(rdatafile[["S8CQ16B"]],
    labels = c("Food" = 1,
               "Electronic Goods (TV, VCD, etc.)" = 2,
               "Mobile Phone" = 3,
               "Computer" = 4,
               "Vehicle" = 5,
               "Clothing" = 6,
               "Household Appliance" = 7,
               "Other (specify)" = 8)
)
attr(rdatafile[["S8CQ16B"]], "label") <- "Write the code of any goods/ things that (name) has sent to the household in the"

rdatafile[["S8CQ16C"]] <- haven::labelled_spss(rdatafile[["S8CQ16C"]],
    labels = c("Food" = 1,
               "Electronic Goods (TV, VCD, etc.)" = 2,
               "Mobile Phone" = 3,
               "Computer" = 4,
               "Vehicle" = 5,
               "Clothing" = 6,
               "Household Appliance" = 7,
               "Other (specify)" = 8)
)
attr(rdatafile[["S8CQ16C"]], "label") <- "Write the code of any goods/ things that (name) has sent to the household in the"

attr(rdatafile[["S8CQ17"]], "label") <- "What is the total value of all the goods/ things that (name) sent in the last 2"

rdatafile[["S8CQ18A1"]] <- haven::labelled_spss(rdatafile[["S8CQ18A1"]],
    labels = c("Food and clothing" = 1,
               "Education" = 2,
               "Health" = 3,
               "Other (specify)" = 4)
)
attr(rdatafile[["S8CQ18A1"]], "label") <- "How did you spend the remittance received during last two years? (Current Expend"

attr(rdatafile[["S8CQ18A2"]], "label") <- "How did you spend the remittance received during last two years? (Current Expend"

rdatafile[["S8CQ18B1"]] <- haven::labelled_spss(rdatafile[["S8CQ18B1"]],
    labels = c("Construction of residential/ non-residential structures" = 1,
               "Major repair and maintenance  work of residential/non- residential structures" = 2,
               "Purchase of land" = 3,
               "Purchase of residential/ commercial space" = 4,
               "Purchase of agricultural machineries and equipment" = 5,
               "Purchase of transport machineries and equipment (for commercial purposes)" = 6,
               "Repayment for past borrowing" = 7,
               "Major repair and maintenance of machineries and equipment" = 8,
               "Other investment expenditures (specify)" = 9)
)
attr(rdatafile[["S8CQ18B1"]], "label") <- "How did you spend the remittance received during last two years? (Investment Exp"

attr(rdatafile[["S8CQ18B2"]], "label") <- "How did you spend the remittance received during last two years? (Investment Exp"

rdatafile[["S8CQ18C1"]] <- haven::labelled_spss(rdatafile[["S8CQ18C1"]],
    labels = c("Vehicles" = 1,
               "Refrigerator" = 2,
               "Air cooler" = 3,
               "Television" = 4,
               "Other equipment for  household use (specify)" = 5)
)
attr(rdatafile[["S8CQ18C1"]], "label") <- "How did you spend the remittance received during last two years? (Expenditure fo"

attr(rdatafile[["S8CQ18C2"]], "label") <- "How did you spend the remittance received during last two years? (Expenditure fo"

rdatafile[["S8CQ18D1"]] <- haven::labelled_spss(rdatafile[["S8CQ18D1"]],
    labels = c("Purchasing shares/ bond/equity" = 1,
               "Deposit in bank" = 2,
               "Purchase of valuables (gold, diamond etc)" = 3,
               "Cash in hand" = 4,
               "Other savings (specify)" = 5)
)
attr(rdatafile[["S8CQ18D1"]], "label") <- "How did you spend the remittance received during last two years? (Savings (in la"

attr(rdatafile[["S8CQ18D2"]], "label") <- "How did you spend the remittance received during last two years? (Savings (in la"

attr(rdatafile[["S8CQ17_R"]], "label") <- "What is the total value of all the goods/ things that (name) sent in the last 2"

attr(rdatafile[["S8CQ18D2_R"]], "label") <- "How did you spend the remittance received during last two years? (Savings (in la"

attr(rdatafile[["S8CQ18A2_R"]], "label") <- "How did you spend the remittance received during last two years? (Current Expend"

attr(rdatafile[["S8CQ18B2_R"]], "label") <- "How did you spend the remittance received during last two years? (Investment Exp"

attr(rdatafile[["S8CQ18C2_R"]], "label") <- "How did you spend the remittance received during last two years? (Expenditure fo"

attr(rdatafile[["PSU"]], "label") <- "Primary Sampling Unit Serial Number"

attr(rdatafile[["HHID"]], "label") <- "Household id"

rdatafile[["QUARTER"]] <- haven::labelled_spss(rdatafile[["QUARTER"]],
    labels = c("" = )
)
attr(rdatafile[["QUARTER"]], "label") <- "Quarters"

attr(rdatafile[["HHWGT"]], "label") <- "Household annual weight"

attr(rdatafile[["STRATUM"]], "label") <- "Stratum 132 annual estimates"

rdatafile[["STRATUM16"]] <- haven::labelled_spss(rdatafile[["STRATUM16"]],
    labels = c("Barisal Rural" = 1,
               "Barisal Urban" = 2,
               "Chittagong Rural" = 3,
               "Chittagong Urban" = 4,
               "Chittagong City Corp." = 5,
               "Dhaka Rural" = 6,
               "Dhaka Urban" = 7,
               "Dhaka City Corp." = 8,
               "Khulna Rural" = 9,
               "Khulna Urban" = 10,
               "Khulna City Corp." = 11,
               "Rajshahi Rural" = 12,
               "Rajshahi Urban" = 13,
               "Rajshahi City Corp." = 14,
               "Sylhet Rural" = 15,
               "Sylhet Urban" = 16)
)
attr(rdatafile[["STRATUM16"]], "label") <- "Stratum 16 quarterly estimates"

rdatafile[["RUC"]] <- haven::labelled_spss(rdatafile[["RUC"]],
    labels = c("" = )
)
attr(rdatafile[["RUC"]], "label") <- "Rural / PSA / City Corp"

rdatafile[["URBRURAL"]] <- haven::labelled_spss(rdatafile[["URBRURAL"]],
    labels = c("Rural" = 1,
               "Urban" = 2)
)
attr(rdatafile[["URBRURAL"]], "label") <- "1 Rural, 2 Urban"

attr(rdatafile[["DIVISION_CODE"]], "label") <- "Division Code"

rdatafile[["DIVISION_NAME"]] <- haven::labelled_spss(rdatafile[["DIVISION_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["DIVISION_NAME"]], "label") <- "Division Name"

attr(rdatafile[["ZILA_CODE"]], "label") <- "Zila/District code"

rdatafile[["ZILA_NAME"]] <- haven::labelled_spss(rdatafile[["ZILA_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["ZILA_NAME"]], "label") <- "Zila/District name"

rdatafile[["S8D1Q01"]] <- haven::labelled_spss(rdatafile[["S8D1Q01"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S8D1Q01"]], "label") <- "Have you or any member of your household open a bank account during the last 12"

rdatafile[["S8D1Q02"]] <- haven::labelled_spss(rdatafile[["S8D1Q02"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S8D1Q02"]], "label") <- "Have you or any member of your household deposit money in the credit or microfin"

rdatafile[["S8D1Q03"]] <- haven::labelled_spss(rdatafile[["S8D1Q03"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S8D1Q03"]], "label") <- "Have you or any member of your household deposit money in any informal depositor"

rdatafile[["S8D1Q04"]] <- haven::labelled_spss(rdatafile[["S8D1Q04"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S8D1Q04"]], "label") <- "Have you or anyone in your household borrowed money from a family member, friend"

attr(rdatafile[["PSU"]], "label") <- "Primary Sampling Unit Serial Number"

attr(rdatafile[["HHID"]], "label") <- "Household id"

rdatafile[["QUARTER"]] <- haven::labelled_spss(rdatafile[["QUARTER"]],
    labels = c("" = )
)
attr(rdatafile[["QUARTER"]], "label") <- "Quarters"

attr(rdatafile[["HHWGT"]], "label") <- "Household annual weight"

attr(rdatafile[["STRATUM"]], "label") <- "Stratum 132 annual estimates"

rdatafile[["STRATUM16"]] <- haven::labelled_spss(rdatafile[["STRATUM16"]],
    labels = c("Barisal Rural" = 1,
               "Barisal Urban" = 2,
               "Chittagong Rural" = 3,
               "Chittagong Urban" = 4,
               "Chittagong City Corp." = 5,
               "Dhaka Rural" = 6,
               "Dhaka Urban" = 7,
               "Dhaka City Corp." = 8,
               "Khulna Rural" = 9,
               "Khulna Urban" = 10,
               "Khulna City Corp." = 11,
               "Rajshahi Rural" = 12,
               "Rajshahi Urban" = 13,
               "Rajshahi City Corp." = 14,
               "Sylhet Rural" = 15,
               "Sylhet Urban" = 16)
)
attr(rdatafile[["STRATUM16"]], "label") <- "Stratum 16 quarterly estimates"

rdatafile[["RUC"]] <- haven::labelled_spss(rdatafile[["RUC"]],
    labels = c("" = )
)
attr(rdatafile[["RUC"]], "label") <- "Rural / PSA / City Corp"

rdatafile[["URBRURAL"]] <- haven::labelled_spss(rdatafile[["URBRURAL"]],
    labels = c("Rural" = 1,
               "Urban" = 2)
)
attr(rdatafile[["URBRURAL"]], "label") <- "1 Rural, 2 Urban"

attr(rdatafile[["DIVISION_CODE"]], "label") <- "Division Code"

rdatafile[["DIVISION_NAME"]] <- haven::labelled_spss(rdatafile[["DIVISION_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["DIVISION_NAME"]], "label") <- "Division Name"

attr(rdatafile[["ZILA_CODE"]], "label") <- "Zila/District code"

rdatafile[["ZILA_NAME"]] <- haven::labelled_spss(rdatafile[["ZILA_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["ZILA_NAME"]], "label") <- "Zila/District name"

rdatafile[["S8D2Q0A"]] <- haven::labelled_spss(rdatafile[["S8D2Q0A"]],
    labels = c("" = )
)
attr(rdatafile[["S8D2Q0A"]], "label") <- "LOAN"

attr(rdatafile[["S8D2Q0B"]], "label") <- "ID CODE in Roster"

rdatafile[["S8D2Q05"]] <- haven::labelled_spss(rdatafile[["S8D2Q05"]],
    labels = c("Private Commercial Bank" = 1,
               "Public Commercial Bank" = 2,
               "Krishi Bank/Rajshahi Krishi Bank" = 3,
               "Co-operative Bank" = 4,
               "Co-operative association" = 5,
               "BSIC" = 6,
               "Youth Development" = 7,
               "Grameen Bank" = 8,
               "BRAC" = 9,
               "BRDB" = 10,
               "Other Govt. Department" = 11,
               "ASA" = 12,
               "Proshika" = 13,
               "Other NGO" = 14,
               "Other Micro Finance Establishment" = 15,
               "Input supplier" = 16,
               "Money Lender" = 17,
               "Land Lord" = 18,
               "Employer" = 19,
               "Friends" = 20,
               "Relatives" = 21,
               "Grocery Store" = 22,
               "Other (specify)" = 23)
)
attr(rdatafile[["S8D2Q05"]], "label") <- "What was the source of this loan or credit?"

attr(rdatafile[["S8D2Q06"]], "label") <- "How much money was borrowed (in taka)?"

attr(rdatafile[["S8D2Q07"]], "label") <- "How long is the repayment period (in months)?"

attr(rdatafile[["S8D2Q08A"]], "label") <- "Interest rate applied on loan (%) (Monthly Rate)"

attr(rdatafile[["S8D2Q08B"]], "label") <- "Interest rate applied on loan (%) (Yearly Rate)"

rdatafile[["S8D2Q09A"]] <- haven::labelled_spss(rdatafile[["S8D2Q09A"]],
    labels = c("Once" = 1,
               "Daily" = 2,
               "Weekly" = 3,
               "Fortnightly" = 4,
               "Monthly" = 5,
               "Yearly" = 6,
               "Other (specify)" = 7)
)
attr(rdatafile[["S8D2Q09A"]], "label") <- "How often do you make payments and what is the amount of each payment? (Frequenc"

attr(rdatafile[["S8D2Q09B"]], "label") <- "How often do you make payments and what is the amount of each payment? (Frequenc"

rdatafile[["S8D2Q10"]] <- haven::labelled_spss(rdatafile[["S8D2Q10"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S8D2Q10"]], "label") <- "Have you completed repayment of your loan?"

attr(rdatafile[["S8D2Q11"]], "label") <- "Amount of unpaid loan (in taka)?"

rdatafile[["S8D2Q12"]] <- haven::labelled_spss(rdatafile[["S8D2Q12"]],
    labels = c("Education" = 1,
               "Health" = 2,
               "Agriculture" = 3,
               "Business" = 4,
               "Housing" = 5,
               "Food Purchase" = 6,
               "Marriage" = 7,
               "Other (specify)" = 8)
)
attr(rdatafile[["S8D2Q12"]], "label") <- "What was the purpose of receiving loan?"

rdatafile[["S8D2Q13"]] <- haven::labelled_spss(rdatafile[["S8D2Q13"]],
    labels = c("Yes" = 1,
               "No" = 2)
)
attr(rdatafile[["S8D2Q13"]], "label") <- "Would you like to have borrowed more money at the same rate of interest?"

attr(rdatafile[["S8D2Q14"]], "label") <- "If yes, how much?"

attr(rdatafile[["S8D2Q06_R"]], "label") <- "How much money was borrowed (in taka)?"

attr(rdatafile[["S8D2Q09B_R"]], "label") <- "How often do you make payments and what is the amount of each payment? (Frequenc"

attr(rdatafile[["PSU"]], "label") <- "Primary Sampling Unit Serial Number"

attr(rdatafile[["HHID"]], "label") <- "Household id"

rdatafile[["QUARTER"]] <- haven::labelled_spss(rdatafile[["QUARTER"]],
    labels = c("" = )
)
attr(rdatafile[["QUARTER"]], "label") <- "Quarters"

attr(rdatafile[["HHWGT"]], "label") <- "Household annual weight"

attr(rdatafile[["STRATUM"]], "label") <- "Stratum 132 annual estimates"

rdatafile[["STRATUM16"]] <- haven::labelled_spss(rdatafile[["STRATUM16"]],
    labels = c("Barisal Rural" = 1,
               "Barisal Urban" = 2,
               "Chittagong Rural" = 3,
               "Chittagong Urban" = 4,
               "Chittagong City Corp." = 5,
               "Dhaka Rural" = 6,
               "Dhaka Urban" = 7,
               "Dhaka City Corp." = 8,
               "Khulna Rural" = 9,
               "Khulna Urban" = 10,
               "Khulna City Corp." = 11,
               "Rajshahi Rural" = 12,
               "Rajshahi Urban" = 13,
               "Rajshahi City Corp." = 14,
               "Sylhet Rural" = 15,
               "Sylhet Urban" = 16)
)
attr(rdatafile[["STRATUM16"]], "label") <- "Stratum 16 quarterly estimates"

rdatafile[["RUC"]] <- haven::labelled_spss(rdatafile[["RUC"]],
    labels = c("" = )
)
attr(rdatafile[["RUC"]], "label") <- "Rural / PSA / City Corp"

rdatafile[["URBRURAL"]] <- haven::labelled_spss(rdatafile[["URBRURAL"]],
    labels = c("Rural" = 1,
               "Urban" = 2)
)
attr(rdatafile[["URBRURAL"]], "label") <- "1 Rural, 2 Urban"

attr(rdatafile[["DIVISION_CODE"]], "label") <- "Division Code"

rdatafile[["DIVISION_NAME"]] <- haven::labelled_spss(rdatafile[["DIVISION_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["DIVISION_NAME"]], "label") <- "Division Name"

attr(rdatafile[["ZILA_CODE"]], "label") <- "Zila/District code"

rdatafile[["ZILA_NAME"]] <- haven::labelled_spss(rdatafile[["ZILA_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["ZILA_NAME"]], "label") <- "Zila/District name"

rdatafile[["DAY"]] <- haven::labelled_spss(rdatafile[["DAY"]],
    labels = c("" = )
)
attr(rdatafile[["DAY"]], "label") <- "Day"

attr(rdatafile[["S9A1Q01"]], "label") <- "Less than 10 years old (No. of Boys)"

attr(rdatafile[["S9A1Q02"]], "label") <- "Less than 10 years old (No. of Girls)"

attr(rdatafile[["S9A1Q03"]], "label") <- "10 years and older (No. of Men)"

attr(rdatafile[["S9A1Q04"]], "label") <- "10 years and older (No. of Women)"

attr(rdatafile[["S9A1Q05A"]], "label") <- "Record Date (Day)"

rdatafile[["S9A1Q05B"]] <- haven::labelled_spss(rdatafile[["S9A1Q05B"]],
    labels = c("January" = 1,
               "February" = 2,
               "March" = 3,
               "April" = 4,
               "May" = 5,
               "June" = 6,
               "July" = 7,
               "August" = 8,
               "September" = 9,
               "October" = 10,
               "November" = 11,
               "December" = 12)
)
attr(rdatafile[["S9A1Q05B"]], "label") <- "Record Date (Month)"

attr(rdatafile[["S9A1Q05C"]], "label") <- "Record Date (Year)"

attr(rdatafile[["PSU"]], "label") <- "Primary Sampling Unit Serial Number"

attr(rdatafile[["HHID"]], "label") <- "Household id"

rdatafile[["QUARTER"]] <- haven::labelled_spss(rdatafile[["QUARTER"]],
    labels = c("" = )
)
attr(rdatafile[["QUARTER"]], "label") <- "Quarters"

attr(rdatafile[["HHWGT"]], "label") <- "Household annual weight"

attr(rdatafile[["STRATUM"]], "label") <- "Stratum 132 annual estimates"

rdatafile[["STRATUM16"]] <- haven::labelled_spss(rdatafile[["STRATUM16"]],
    labels = c("Barisal Rural" = 1,
               "Barisal Urban" = 2,
               "Chittagong Rural" = 3,
               "Chittagong Urban" = 4,
               "Chittagong City Corp." = 5,
               "Dhaka Rural" = 6,
               "Dhaka Urban" = 7,
               "Dhaka City Corp." = 8,
               "Khulna Rural" = 9,
               "Khulna Urban" = 10,
               "Khulna City Corp." = 11,
               "Rajshahi Rural" = 12,
               "Rajshahi Urban" = 13,
               "Rajshahi City Corp." = 14,
               "Sylhet Rural" = 15,
               "Sylhet Urban" = 16)
)
attr(rdatafile[["STRATUM16"]], "label") <- "Stratum 16 quarterly estimates"

rdatafile[["RUC"]] <- haven::labelled_spss(rdatafile[["RUC"]],
    labels = c("" = )
)
attr(rdatafile[["RUC"]], "label") <- "Rural / PSA / City Corp"

rdatafile[["URBRURAL"]] <- haven::labelled_spss(rdatafile[["URBRURAL"]],
    labels = c("Rural" = 1,
               "Urban" = 2)
)
attr(rdatafile[["URBRURAL"]], "label") <- "1 Rural, 2 Urban"

attr(rdatafile[["DIVISION_CODE"]], "label") <- "Division Code"

rdatafile[["DIVISION_NAME"]] <- haven::labelled_spss(rdatafile[["DIVISION_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["DIVISION_NAME"]], "label") <- "Division Name"

attr(rdatafile[["ZILA_CODE"]], "label") <- "Zila/District code"

rdatafile[["ZILA_NAME"]] <- haven::labelled_spss(rdatafile[["ZILA_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["ZILA_NAME"]], "label") <- "Zila/District name"

rdatafile[["DAY"]] <- haven::labelled_spss(rdatafile[["DAY"]],
    labels = c("" = )
)
attr(rdatafile[["DAY"]], "label") <- "Day"

rdatafile[["S9A2Q01"]] <- haven::labelled_spss(rdatafile[["S9A2Q01"]],
    labels = c("Food grains" = 10,
               "Rice - Fine" = 11,
               "Rice - Medium" = 12,
               "Rice - Coarse" = 13,
               "Beaten rice" = 14,
               "Pop rice" = 15,
               "Puffed rice" = 16,
               "Wheat (Atta)" = 17,
               "Flour" = 18,
               "Vermicelli/ Suji" = 19,
               "Bread/ Bonroti" = 21,
               "Biscuits" = 22,
               "Cake" = 23,
               "Other (specify)" = 24,
               "Pulses" = 30,
               "Lentil (musur)" = 31,
               "Chickling-Vetch (mug)" = 32,
               "Green gram (boot)" = 33,
               "Pea gram (kheshari)" = 34,
               "Mashkalai" = 35,
               "Other (specify)" = 36,
               "Fish" = 40,
               "Hilsa" = 41,
               "Rhui/ Katla/ Mrigel/ Kali baush" = 42,
               "Pangash" = 43,
               "Boal/ Air" = 44,
               "Magur/ Shing" = 45,
               "koi" = 46,
               "Silver carp/ Grass carp/ Miror carp" = 47,
               "Shoal/ Gajar/ Taki" = 48,
               "Puti/ Big Puti/ Telapia/ Nilotica" = 49,
               "Mala-kachi/ Chala-chapila/Khalsha" = 51,
               "Other small fishes (with tangra)" = 52,
               "Shrimp" = 53,
               "Dried fish" = 54,
               "Eelfish" = 55,
               "sea fish" = 56,
               "Baila" = 57,
               "Other (specify)" = 58,
               "Eggs" = 60,
               "Hen egg" = 61,
               "Duck egg" = 62,
               "Other (specify)" = 63,
               "Meat" = 70,
               "Beef" = 71,
               "Buffalo" = 72,
               "Mutton" = 73,
               "Sheep" = 74,
               "Hen" = 75,
               "Duck" = 76,
               "Other (specify)" = 77,
               "Vegetables" = 80,
               "Potato" = 81,
               "Brinjal" = 82,
               "White gourd/ Pumpkin" = 83,
               "Water gourd" = 84,
               "Balsam apple" = 85,
               "Perbol (Patal)" = 86,
               "Snake gourd/ Ribbed gourd" = 87,
               "Green banana/ Green papaya" = 88,
               "Arum/ Ol-kachu/ Kachur-mukhi" = 89,
               "Cauliflower/ Cabbage" = 91,
               "Bean/ Lobey" = 92,
               "Tomato" = 93,
               "Radish" = 94,
               "Ladies' finger" = 95,
               "(All types of leafy veg.(Spinach/ Amaranta/ Basil)" = 96,
               "Other (specify)" = 97,
               "Milk & Dairy" = 100,
               "Liquid milk" = 101,
               "Powder milk" = 102,
               "Curd" = 103,
               "Casein (ponir)/ Butter" = 104,
               "Milk drinks" = 105,
               "Other (specify)" = 106,
               "Sweetmeat" = 110,
               "Rasogolla/ Chamcham/ Shandash" = 111,
               "Jilapi/ Bundia/ Amriti" = 112,
               "Halua/ Batasha/ Kadma" = 113,
               "Other (specify)" = 114,
               "Oil & Fats" = 120,
               "Mustard oil" = 121,
               "Soybean oil" = 122,
               "Palm oil" = 123,
               "Dalda/ Vanashpati" = 124,
               "Ghee" = 125,
               "Other (specify)" = 126,
               "Fruits" = 130,
               "Ripe banana" = 131,
               "Mango" = 132,
               "Melon/ Bangi" = 133,
               "Jack fruit" = 134,
               "Leeches" = 135,
               "Ripe papaya" = 136,
               "Guava" = 137,
               "Pineapple" = 138,
               "Safeda" = 139,
               "Palm" = 141,
               "Bedana" = 142,
               "Apple" = 143,
               "Orange" = 144,
               "Grape" = 145,
               "Black berry" = 146,
               "Amra/Kamranga" = 147,
               "Others (specify)" = 148,
               "Drinks" = 150,
               "Soft drinks(peepsi/RC/Mojo/Coke, Sherbat, etc." = 151,
               "Ovaltine/ Horlicks" = 152,
               "Tea/ Coffee leaf" = 153,
               "Liquid (Ros) of Sugarcane/ Date/Palm" = 154,
               "Green coconut water" = 155,
               "Other (specify)" = 156,
               "Sugar & molasses" = 160,
               "Sugar/ Misri" = 161,
               "Molasses (Sugarcane/ Date/ Palm)" = 162,
               "Khaja/ Logenze/ Toffee" = 163,
               "Chocolate" = 164,
               "Ice-cream" = 165,
               "Other (specify)" = 166,
               "Miscellaneous Food" = 170,
               "Pickles" = 171,
               "Jelly/ Jam" = 172,
               "Amshatta" = 173,
               "Sauce/Sirka" = 174,
               "Other (specify)" = 175,
               "Dining out (Food outside)" = 180,
               "Meals (Rice/Biriani)" = 181,
               "Fried chicken" = 182,
               "Fish" = 183,
               "Meat" = 184,
               "Patties/Cake" = 185,
               "Sandwich" = 186,
               "Burger" = 187,
               "Hotdog" = 188,
               "Pizza" = 189,
               "Samucha/Singara/Puri/Cake" = 191,
               "Tea" = 192,
               "Coffee" = 193,
               "Soft drinks/bottle water" = 194,
               "Other (specify)" = 195,
               "Tobacco & tobacco products" = 200,
               "Cigarette" = 201,
               "Tobacco leaf" = 202,
               "Bidies" = 203,
               "Gul and Other (specify)" = 204)
)
attr(rdatafile[["S9A2Q01"]], "label") <- "Food Item (Code)"

attr(rdatafile[["S9A2Q02"]], "label") <- "Quantity"

rdatafile[["S9A2Q03"]] <- haven::labelled_spss(rdatafile[["S9A2Q03"]],
    labels = c("Grams" = 1,
               "Number" = 2,
               "Millilitres" = 3,
               "Cup" = 4)
)
attr(rdatafile[["S9A2Q03"]], "label") <- "Unit"

attr(rdatafile[["S9A2Q04"]], "label") <- "Value (Taka)"

rdatafile[["S9A2Q05"]] <- haven::labelled_spss(rdatafile[["S9A2Q05"]],
    labels = c("Purchase" = 1,
               "Wage in-kind" = 2,
               "Self Produced" = 3,
               "Gift" = 4)
)
attr(rdatafile[["S9A2Q05"]], "label") <- "Major Source"

attr(rdatafile[["S9A2_OS"]], "label") <- "Other(Specify)"

rdatafile[["AUX"]] <- haven::labelled_spss(rdatafile[["AUX"]],
    labels = c("" = )
)
attr(rdatafile[["AUX"]], "label") <- ""

rdatafile[["DUP"]] <- haven::labelled_spss(rdatafile[["DUP"]],
    labels = c("" = )
)
attr(rdatafile[["DUP"]], "label") <- ""

attr(rdatafile[["PSU"]], "label") <- "Primary Sampling Unit Serial Number"

attr(rdatafile[["HHID"]], "label") <- "Household id"

rdatafile[["QUARTER"]] <- haven::labelled_spss(rdatafile[["QUARTER"]],
    labels = c("" = )
)
attr(rdatafile[["QUARTER"]], "label") <- "Quarters"

attr(rdatafile[["HHWGT"]], "label") <- "Household annual weight"

attr(rdatafile[["STRATUM"]], "label") <- "Stratum 132 annual estimates"

rdatafile[["STRATUM16"]] <- haven::labelled_spss(rdatafile[["STRATUM16"]],
    labels = c("Barisal Rural" = 1,
               "Barisal Urban" = 2,
               "Chittagong Rural" = 3,
               "Chittagong Urban" = 4,
               "Chittagong City Corp." = 5,
               "Dhaka Rural" = 6,
               "Dhaka Urban" = 7,
               "Dhaka City Corp." = 8,
               "Khulna Rural" = 9,
               "Khulna Urban" = 10,
               "Khulna City Corp." = 11,
               "Rajshahi Rural" = 12,
               "Rajshahi Urban" = 13,
               "Rajshahi City Corp." = 14,
               "Sylhet Rural" = 15,
               "Sylhet Urban" = 16)
)
attr(rdatafile[["STRATUM16"]], "label") <- "Stratum 16 quarterly estimates"

rdatafile[["RUC"]] <- haven::labelled_spss(rdatafile[["RUC"]],
    labels = c("" = )
)
attr(rdatafile[["RUC"]], "label") <- "Rural / PSA / City Corp"

rdatafile[["URBRURAL"]] <- haven::labelled_spss(rdatafile[["URBRURAL"]],
    labels = c("Rural" = 1,
               "Urban" = 2)
)
attr(rdatafile[["URBRURAL"]], "label") <- "1 Rural, 2 Urban"

attr(rdatafile[["DIVISION_CODE"]], "label") <- "Division Code"

rdatafile[["DIVISION_NAME"]] <- haven::labelled_spss(rdatafile[["DIVISION_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["DIVISION_NAME"]], "label") <- "Division Name"

attr(rdatafile[["ZILA_CODE"]], "label") <- "Zila/District code"

rdatafile[["ZILA_NAME"]] <- haven::labelled_spss(rdatafile[["ZILA_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["ZILA_NAME"]], "label") <- "Zila/District name"

rdatafile[["WEEK"]] <- haven::labelled_spss(rdatafile[["WEEK"]],
    labels = c("Day 1-7" = 1,
               "Day 8-14" = 2)
)
attr(rdatafile[["WEEK"]], "label") <- "Week"

attr(rdatafile[["S9B1Q01A"]], "label") <- "Record Date (Day)"

rdatafile[["S9B1Q01B"]] <- haven::labelled_spss(rdatafile[["S9B1Q01B"]],
    labels = c("January" = 1,
               "February" = 2,
               "March" = 3,
               "April" = 4,
               "May" = 5,
               "June" = 6,
               "July" = 7,
               "August" = 8,
               "September" = 9,
               "October" = 10,
               "November" = 11,
               "December" = 12)
)
attr(rdatafile[["S9B1Q01B"]], "label") <- "Record Date (Month)"

attr(rdatafile[["S9B1Q01C"]], "label") <- "Record Date (Year)"

attr(rdatafile[["PSU"]], "label") <- "Primary Sampling Unit Serial Number"

attr(rdatafile[["HHID"]], "label") <- "Household id"

rdatafile[["QUARTER"]] <- haven::labelled_spss(rdatafile[["QUARTER"]],
    labels = c("" = )
)
attr(rdatafile[["QUARTER"]], "label") <- "Quarters"

attr(rdatafile[["HHWGT"]], "label") <- "Household annual weight"

attr(rdatafile[["STRATUM"]], "label") <- "Stratum 132 annual estimates"

rdatafile[["STRATUM16"]] <- haven::labelled_spss(rdatafile[["STRATUM16"]],
    labels = c("Barisal Rural" = 1,
               "Barisal Urban" = 2,
               "Chittagong Rural" = 3,
               "Chittagong Urban" = 4,
               "Chittagong City Corp." = 5,
               "Dhaka Rural" = 6,
               "Dhaka Urban" = 7,
               "Dhaka City Corp." = 8,
               "Khulna Rural" = 9,
               "Khulna Urban" = 10,
               "Khulna City Corp." = 11,
               "Rajshahi Rural" = 12,
               "Rajshahi Urban" = 13,
               "Rajshahi City Corp." = 14,
               "Sylhet Rural" = 15,
               "Sylhet Urban" = 16)
)
attr(rdatafile[["STRATUM16"]], "label") <- "Stratum 16 quarterly estimates"

rdatafile[["RUC"]] <- haven::labelled_spss(rdatafile[["RUC"]],
    labels = c("" = )
)
attr(rdatafile[["RUC"]], "label") <- "Rural / PSA / City Corp"

rdatafile[["URBRURAL"]] <- haven::labelled_spss(rdatafile[["URBRURAL"]],
    labels = c("Rural" = 1,
               "Urban" = 2)
)
attr(rdatafile[["URBRURAL"]], "label") <- "1 Rural, 2 Urban"

attr(rdatafile[["DIVISION_CODE"]], "label") <- "Division Code"

rdatafile[["DIVISION_NAME"]] <- haven::labelled_spss(rdatafile[["DIVISION_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["DIVISION_NAME"]], "label") <- "Division Name"

attr(rdatafile[["ZILA_CODE"]], "label") <- "Zila/District code"

rdatafile[["ZILA_NAME"]] <- haven::labelled_spss(rdatafile[["ZILA_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["ZILA_NAME"]], "label") <- "Zila/District name"

rdatafile[["WEEK"]] <- haven::labelled_spss(rdatafile[["WEEK"]],
    labels = c("Day 1-7" = 1,
               "Day 8-14" = 2)
)
attr(rdatafile[["WEEK"]], "label") <- "Week"

rdatafile[["S9B2Q01"]] <- haven::labelled_spss(rdatafile[["S9B2Q01"]],
    labels = c("Spices" = 210,
               "Dried chili" = 211,
               "Green chili" = 212,
               "Onion" = 213,
               "Garlic" = 214,
               "Turmeric" = 215,
               "Salt" = 216,
               "Ginger" = 217,
               "Cummins" = 218,
               "Coriander-seed" = 219,
               "Aromatic-seed" = 221,
               "Clove/ Black pepper/ Cassia-leaf" = 222,
               "Other (specify)" = 223,
               "Betel leaf & Chewgoods" = 230,
               "Betel leaf" = 231,
               "Betel nut" = 232,
               "Zorda/ tobacco leaf" = 233,
               "Lime" = 234,
               "Khoer" = 235,
               "Rolled betel leaf" = 236,
               "Other (specify)" = 237)
)
attr(rdatafile[["S9B2Q01"]], "label") <- "Food Item (Code)"

attr(rdatafile[["S9B2Q02"]], "label") <- "Quantity"

rdatafile[["S9B2Q03"]] <- haven::labelled_spss(rdatafile[["S9B2Q03"]],
    labels = c("Grams" = 1,
               "Number" = 2,
               "Millilitres" = 3,
               "Cup" = 4)
)
attr(rdatafile[["S9B2Q03"]], "label") <- "Unit"

attr(rdatafile[["S9BBQ04"]], "label") <- "Value (Taka)"

rdatafile[["S9BBQ05"]] <- haven::labelled_spss(rdatafile[["S9BBQ05"]],
    labels = c("Purchase" = 1,
               "Wage in-kind" = 2,
               "Self Produced" = 3,
               "Gift" = 4)
)
attr(rdatafile[["S9BBQ05"]], "label") <- "Major Source"

attr(rdatafile[["PSU"]], "label") <- "Primary Sampling Unit Serial Number"

attr(rdatafile[["HHID"]], "label") <- "Household id"

rdatafile[["QUARTER"]] <- haven::labelled_spss(rdatafile[["QUARTER"]],
    labels = c("" = )
)
attr(rdatafile[["QUARTER"]], "label") <- "Quarters"

attr(rdatafile[["HHWGT"]], "label") <- "Household annual weight"

attr(rdatafile[["STRATUM"]], "label") <- "Stratum 132 annual estimates"

rdatafile[["STRATUM16"]] <- haven::labelled_spss(rdatafile[["STRATUM16"]],
    labels = c("Barisal Rural" = 1,
               "Barisal Urban" = 2,
               "Chittagong Rural" = 3,
               "Chittagong Urban" = 4,
               "Chittagong City Corp." = 5,
               "Dhaka Rural" = 6,
               "Dhaka Urban" = 7,
               "Dhaka City Corp." = 8,
               "Khulna Rural" = 9,
               "Khulna Urban" = 10,
               "Khulna City Corp." = 11,
               "Rajshahi Rural" = 12,
               "Rajshahi Urban" = 13,
               "Rajshahi City Corp." = 14,
               "Sylhet Rural" = 15,
               "Sylhet Urban" = 16)
)
attr(rdatafile[["STRATUM16"]], "label") <- "Stratum 16 quarterly estimates"

rdatafile[["RUC"]] <- haven::labelled_spss(rdatafile[["RUC"]],
    labels = c("" = )
)
attr(rdatafile[["RUC"]], "label") <- "Rural / PSA / City Corp"

rdatafile[["URBRURAL"]] <- haven::labelled_spss(rdatafile[["URBRURAL"]],
    labels = c("Rural" = 1,
               "Urban" = 2)
)
attr(rdatafile[["URBRURAL"]], "label") <- "1 Rural, 2 Urban"

attr(rdatafile[["DIVISION_CODE"]], "label") <- "Division Code"

rdatafile[["DIVISION_NAME"]] <- haven::labelled_spss(rdatafile[["DIVISION_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["DIVISION_NAME"]], "label") <- "Division Name"

attr(rdatafile[["ZILA_CODE"]], "label") <- "Zila/District code"

rdatafile[["ZILA_NAME"]] <- haven::labelled_spss(rdatafile[["ZILA_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["ZILA_NAME"]], "label") <- "Zila/District name"

rdatafile[["S9CQ00"]] <- haven::labelled_spss(rdatafile[["S9CQ00"]],
    labels = c("FUEL AND LIGHTING" = 240,
               "Firewood" = 241,
               "Cow dung/cakes/bhushi/wood-powder" = 242,
               "Jute stick" = 243,
               "Kerosene" = 244,
               "Agri by products fuel: paddy, hag, pressed sugarcane and dried com plants, etc." = 245,
               "Gas (natural, bio-gas)/LPG" = 246,
               "Electricity" = 247,
               "Pit coal, char coal, wood coal" = 248,
               "Other fuels and light (e.g. matches and candles etc.)" = 249,
               "COSMETICS AND OTHER EXPENSES" = 250,
               "Snow, cream, powder" = 251,
               "Perfume etc." = 252,
               "Hair cutting, styling, shaving, etc." = 253,
               "Hair oil, hair cream, combs, clips, etc." = 254,
               "Razor, razor blades, shaving cream and lotions, etc." = 255,
               "Lipstick, nailpolish, make-up box etc." = 256,
               "Beautifying items (hair ribbon, churi, kajal, etc.)" = 257,
               "HOUSEHOLD HYGIENE (WASHING AND CLEANING) EXPENSES" = 260,
               "Bath soap, shampoo, conditioner, toothpaste, etc." = 261,
               "Washing soap, powder for cloths" = 262,
               "Washing/ laundry expenses" = 263,
               "Bleaching powder, soda etc." = 264,
               "Vim/ dish cleaning supplies" = 265,
               "Finis/ phenyl/ airfreshener/ other household cleaning supplies" = 266,
               "Toilet papers, Tissue papers" = 267,
               "Sanitary pad, Sanitary napkin, diaper etc" = 268,
               "Charge for household solid waste disposal" = 269,
               "Expenses for pit emptying" = 271,
               "Mosquito coil" = 272,
               "Mosquito spray, Insect spray (Aerosol)" = 273,
               "TRANSPORT/ TRAVEL AND OTHER MISC. CHARGES" = 280,
               "Bus fare" = 281,
               "Rickshaw/ van fare" = 282,
               "Taxi/ tempoo/ mishuk fare" = 283,
               "Boat/ launch fare" = 284,
               "Train fare" = 285,
               "Other transport fare (specify)" = 286,
               "Bicycle maintenance, tyres, tubes repairs etc." = 287,
               "Motor-cycle maintenance, repairs, etc." = 288,
               "Car  maintenance, repairs, etc." = 289,
               "Boat maintenance, repairs, etc." = 291,
               "Petrol" = 292,
               "Diesel" = 293,
               "Motor oil/CNG. etc" = 294,
               "Other transport, repair and maintenance." = 295,
               "Telephone bill/ charges/mobile/internet bill" = 296,
               "Telegram, postal and courier service expenses, etc." = 297,
               "Salaries and wages of servants" = 298,
               "Salaries and wages of drivers" = 299,
               "Salaries and wages of others including guards, gardeners, housekeepers etc." = 301,
               "Night over at hotel, boarding house, mess for travel purposes" = 302,
               "Other contegencies expenses (specify)" = 303)
)
attr(rdatafile[["S9CQ00"]], "label") <- "Item Code"

attr(rdatafile[["S9CQ01"]], "label") <- "What was the value of goods consumed that were bought in cash/ credit or wages i"

attr(rdatafile[["S9CQ02"]], "label") <- "What was the value of goods consumed that were produced by the household or rece"

attr(rdatafile[["S9CQ03"]], "label") <- "SUM OF COLUMN 1 AND 2 (Taka)"

attr(rdatafile[["PSU"]], "label") <- "Primary Sampling Unit Serial Number"

attr(rdatafile[["HHID"]], "label") <- "Household id"

rdatafile[["QUARTER"]] <- haven::labelled_spss(rdatafile[["QUARTER"]],
    labels = c("" = )
)
attr(rdatafile[["QUARTER"]], "label") <- "Quarters"

attr(rdatafile[["HHWGT"]], "label") <- "Household annual weight"

attr(rdatafile[["STRATUM"]], "label") <- "Stratum 132 annual estimates"

rdatafile[["STRATUM16"]] <- haven::labelled_spss(rdatafile[["STRATUM16"]],
    labels = c("Barisal Rural" = 1,
               "Barisal Urban" = 2,
               "Chittagong Rural" = 3,
               "Chittagong Urban" = 4,
               "Chittagong City Corp." = 5,
               "Dhaka Rural" = 6,
               "Dhaka Urban" = 7,
               "Dhaka City Corp." = 8,
               "Khulna Rural" = 9,
               "Khulna Urban" = 10,
               "Khulna City Corp." = 11,
               "Rajshahi Rural" = 12,
               "Rajshahi Urban" = 13,
               "Rajshahi City Corp." = 14,
               "Sylhet Rural" = 15,
               "Sylhet Urban" = 16)
)
attr(rdatafile[["STRATUM16"]], "label") <- "Stratum 16 quarterly estimates"

rdatafile[["RUC"]] <- haven::labelled_spss(rdatafile[["RUC"]],
    labels = c("" = )
)
attr(rdatafile[["RUC"]], "label") <- "Rural / PSA / City Corp"

rdatafile[["URBRURAL"]] <- haven::labelled_spss(rdatafile[["URBRURAL"]],
    labels = c("Rural" = 1,
               "Urban" = 2)
)
attr(rdatafile[["URBRURAL"]], "label") <- "1 Rural, 2 Urban"

attr(rdatafile[["DIVISION_CODE"]], "label") <- "Division Code"

rdatafile[["DIVISION_NAME"]] <- haven::labelled_spss(rdatafile[["DIVISION_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["DIVISION_NAME"]], "label") <- "Division Name"

attr(rdatafile[["ZILA_CODE"]], "label") <- "Zila/District code"

rdatafile[["ZILA_NAME"]] <- haven::labelled_spss(rdatafile[["ZILA_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["ZILA_NAME"]], "label") <- "Zila/District name"

rdatafile[["S9D1Q00"]] <- haven::labelled_spss(rdatafile[["S9D1Q00"]],
    labels = c("READY-MADE GARMENTS" = 310,
               "Lungi/dhuti" = 311,
               "Shirts" = 312,
               "Pant" = 313,
               "Saree" = 314,
               "Blouse/ peticoat" = 315,
               "Salwar kameez/ Orna" = 316,
               "Punjabi/ Pajamas" = 317,
               "Suit, overcoat, ashkan, etc." = 318,
               "Sweaters, Jacket, pullovers, mufflers, etc." = 319,
               "Underwear etc." = 321,
               "Socks, handkerchiefs, scarves, caps, neckties etc." = 322,
               "Other (specify)" = 323,
               "Full pant" = 324,
               "Half pant" = 325,
               "Shirts" = 326,
               "T-shirt" = 327,
               "Frocks, dresses, babysuit etc." = 328,
               "Socks, handkerchiefs, scarves, caps, neckties etc." = 329,
               "Sweaters, Jacket, pullovers, mufflers, etc." = 331,
               "Other for children (specify)" = 332,
               "Towel, Gamcha" = 333,
               "Chador, shawl, etc." = 334,
               "Other (specify)" = 335,
               "CLOTHING MATERIAL AND TAILORING" = 340,
               "Mill-made cloth/ fabric" = 341,
               "Hand loom cloth/ fabric" = 342,
               "Drill and other cloth for trousers" = 343,
               "Woolen cloth" = 344,
               "Silk" = 345,
               "Artificial silk etc." = 346,
               "Other artificial-yarn made cloths" = 347,
               "Tailoring expenses" = 348,
               "Other clothing related expenses" = 349,
               "FOOTWEAR" = 350,
               "Leather shoes" = 351,
               "Leather sandal-shoes" = 352,
               "Leather sandal" = 353,
               "Plastic shoes" = 354,
               "Plastic sandal-shoes" = 355,
               "Other sandal" = 356,
               "Canvas shoes, sports shoes, etc." = 357,
               "Wooden sandals" = 358,
               "Shoe brush, polish, cleaning supplies, etc." = 359,
               "Maintenance and repair expenses of foot wear" = 361,
               "Other expenses regarding footwear" = 362)
)
attr(rdatafile[["S9D1Q00"]], "label") <- "Item Code"

attr(rdatafile[["S9D1Q01"]], "label") <- "How many did you buy/produce at home/receive as gift? (Number)"

attr(rdatafile[["S9D1Q02"]], "label") <- "What was the value of these goods? (Taka)"

attr(rdatafile[["PSU"]], "label") <- "Primary Sampling Unit Serial Number"

attr(rdatafile[["HHID"]], "label") <- "Household id"

rdatafile[["QUARTER"]] <- haven::labelled_spss(rdatafile[["QUARTER"]],
    labels = c("" = )
)
attr(rdatafile[["QUARTER"]], "label") <- "Quarters"

attr(rdatafile[["HHWGT"]], "label") <- "Household annual weight"

attr(rdatafile[["STRATUM"]], "label") <- "Stratum 132 annual estimates"

rdatafile[["STRATUM16"]] <- haven::labelled_spss(rdatafile[["STRATUM16"]],
    labels = c("Barisal Rural" = 1,
               "Barisal Urban" = 2,
               "Chittagong Rural" = 3,
               "Chittagong Urban" = 4,
               "Chittagong City Corp." = 5,
               "Dhaka Rural" = 6,
               "Dhaka Urban" = 7,
               "Dhaka City Corp." = 8,
               "Khulna Rural" = 9,
               "Khulna Urban" = 10,
               "Khulna City Corp." = 11,
               "Rajshahi Rural" = 12,
               "Rajshahi Urban" = 13,
               "Rajshahi City Corp." = 14,
               "Sylhet Rural" = 15,
               "Sylhet Urban" = 16)
)
attr(rdatafile[["STRATUM16"]], "label") <- "Stratum 16 quarterly estimates"

rdatafile[["RUC"]] <- haven::labelled_spss(rdatafile[["RUC"]],
    labels = c("" = )
)
attr(rdatafile[["RUC"]], "label") <- "Rural / PSA / City Corp"

rdatafile[["URBRURAL"]] <- haven::labelled_spss(rdatafile[["URBRURAL"]],
    labels = c("Rural" = 1,
               "Urban" = 2)
)
attr(rdatafile[["URBRURAL"]], "label") <- "1 Rural, 2 Urban"

attr(rdatafile[["DIVISION_CODE"]], "label") <- "Division Code"

rdatafile[["DIVISION_NAME"]] <- haven::labelled_spss(rdatafile[["DIVISION_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["DIVISION_NAME"]], "label") <- "Division Name"

attr(rdatafile[["ZILA_CODE"]], "label") <- "Zila/District code"

rdatafile[["ZILA_NAME"]] <- haven::labelled_spss(rdatafile[["ZILA_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["ZILA_NAME"]], "label") <- "Zila/District name"

rdatafile[["S9D2Q00"]] <- haven::labelled_spss(rdatafile[["S9D2Q00"]],
    labels = c("HOUSEHOLD-USE TEXTILES, ETC." = 370,
               "Quilt/blanket/Katha" = 371,
               "Toshok" = 372,
               "Jajim" = 373,
               "Foam sheet" = 374,
               "Bedsheets" = 375,
               "Bed cover" = 376,
               "Pillows, cushions" = 377,
               "Pillow cover, cushion cover" = 378,
               "Table cover" = 379,
               "Curtain" = 381,
               "Mosquito netting" = 382,
               "Other (specify)" = 383,
               "HOUSING RELATED EXPENSES" = 390,
               "House rent (rented house without water & electricity services)" = 391,
               "Imputed rent (owner-occupied or other)" = 392,
               "Water expenditure (bought bottle or delivered by water truck/water/sewagre services)" = 393,
               "Home additions/ improvements" = 394,
               "Painting" = 395,
               "Disaster-related maintenance/ repair" = 396,
               "Other routine maintenance/ repair" = 397,
               "Municipal tax" = 398,
               "Other related services/ expenses" = 399,
               "MEDICAL TREATMENT EXPENSES (MALE)" = 400,
               "Doctor's fees" = 401,
               "Other practitioner's fees (homeopath etc.)" = 402,
               "Drugs/Medicines" = 403,
               "Ayurvedic/ Kbiraji" = 404,
               "Medical Tests (X-ray, blood, urine etc.)" = 405,
               "Hospitalization, clinic charges, etc." = 406,
               "Dental related expenses" = 407,
               "Spectacles" = 408,
               "Hearing aids" = 409,
               "Crutches" = 411,
               "Contraceptive (condom, vesactomy etc)" = 412,
               "Health-related travel/ incidental expenses" = 413,
               "MEDICAL TREATMENT EXPENSES (FEMALE)" = 420,
               "Doctor's fees" = 421,
               "Other practitioner's fees (homeopath etc.)" = 422,
               "Drugs/Medicines" = 423,
               "Ayurvedic/ Kbiraji" = 424,
               "Medical Tests (X-ray, blood, urine etc.)" = 425,
               "Hospitalization, clinic charges, etc." = 426,
               "Dental related expenses" = 427,
               "Hearing aids" = 429,
               "Crutches" = 431,
               "Maternity expenses" = 432,
               "Contraceptive (pill, ligation)" = 433,
               "Health-related travel/ incidental expenses" = 434,
               "EDUCATIONAL EXPENSES (MALE)" = 440,
               "Registration fees" = 441,
               "Examination fees" = 442,
               "Annual fees" = 443,
               "School fees" = 444,
               "Personal Teaching expenses" = 445,
               "Text book/ note books/ stationary" = 446,
               "Hostel Expenses" = 447,
               "Other (specify)" = 448,
               "EDUCATIONAL EXPENSES (FEMALE)" = 450,
               "Registration fees" = 451,
               "Examination fees" = 452,
               "Annual fees" = 453,
               "School fees" = 454,
               "Personal Teaching expenses" = 455,
               "Text book/ note books/ stationary" = 456,
               "Hostel Expenses" = 457,
               "Other (specify)" = 458,
               "REMITTANCES, CEREMONIES, GIFTS, ETC." = 460,
               "Remittances to others living separately" = 461,
               "Zakat" = 462,
               "Fitra" = 463,
               "Donation/ Sadqa" = 464,
               "Qurbani" = 465,
               "Religious functions (milad etc.)" = 466,
               "Expenditure on Hajj" = 467,
               "Expenditure on Pilgrimage" = 468,
               "Expenditure on marriage" = 469,
               "Expenditure on births" = 471,
               "Expenditure on deaths" = 472,
               "Other (specific)" = 473,
               "RECREATION & LEISURE, ETC." = 480,
               "Books, newspaper, magazines, story books" = 481,
               "Cinema" = 482,
               "Theater" = 483,
               "Variety shows, concerts, etc." = 484,
               "Sporting expenses, club membership fees, etc." = 485,
               "Video cassette purchases and rental etc." = 486,
               "Audio cassette purchases etc." = 487,
               "Photography" = 488,
               "TV/ video/ satelite license fees etc." = 489,
               "Other recreation, marriage day/birthday, tourisum & leisure related expenses" = 491,
               "TAXES, INTEREST, FINES, ETC." = 500,
               "Income tax" = 501,
               "Bank interest charge, Payment of banking charge" = 502,
               "Fines" = 503,
               "Legal practitioner fees" = 504,
               "Other legal expenses" = 505,
               "Property registration fees" = 506,
               "Vehicle registration fees" = 507,
               "Other (specify)" = 508,
               "COOKING EQUIPMENT" = 510,
               "Glass/china/clay plates and dishes etc." = 511,
               "Refrigerators" = 512,
               "Stove (electric/ gas/ kerosene)" = 513,
               "Pots/ pans" = 514,
               "Other kitchen ware and utensils" = 515,
               "spoons/ forks/ knives etc." = 516,
               "Micro oven/Pressure cooker" = 517,
               "Other (specify)" = 518,
               "FURNITURE & RELATED PARAPHERNALIA" = 520,
               "Khat/ chokey" = 521,
               "Chai/ table/ dresing table /computer table etc." = 522,
               "Sofa" = 523,
               "Wooden/ steel almira/ wardrobe/ bookself" = 524,
               "Trunks, suitcases, etc." = 525,
               "Furniture repair/ polish etc." = 526,
               "Other furniture (specify)" = 527,
               "PERSONAL ARTICLES" = 530,
               "Gold Jwelry" = 531,
               "Silver Jwelry" = 532,
               "Imitation Jwelry" = 533,
               "Purses/ money bags" = 534,
               "Vanity bags" = 535,
               "Umbrella, walking stick" = 536,
               "Tie-pin, cigarette cases, lighter etc." = 537,
               "Wrist watch/ clock etc." = 538,
               "Other personal use items (belts, etc>)" = 539,
               "MISC. HOUSEHOLD DURABLE" = 540,
               "Radio" = 541,
               "Two-in-one" = 542,
               "Black & White Television" = 543,
               "Color Television" = 544,
               "VDO game set" = 545,
               "VCD/ VCR/dish antenna/cable membership fees/cable subcription etc" = 546,
               "Mobile phone" = 547,
               "Washing machine, iron, etc." = 548,
               "Guitar/ orchestra/ harmonium etc" = 549,
               "Typewriter, personal computer, laptop, tablet, etc." = 551,
               "Lenten/ chimney lamp etc." = 552,
               "Electric fans, air-conditioners, coolers, etc." = 553,
               "Gas burner, rice cooker, blander, oven etc" = 554,
               "Sewing machine" = 555,
               "Cameras/ camcorders/vedio camera etc" = 556,
               "INSURANCE EXPENDITURE" = 560,
               "Life insurance" = 561,
               "Health insurance" = 562,
               "General insurance" = 563,
               "Spectacles" = 728)
)
attr(rdatafile[["S9D2Q00"]], "label") <- "Item Code"

attr(rdatafile[["S9D2Q01"]], "label") <- "What was the value of goods bought/ produced at home/ received as gift? (Taka)"

attr(rdatafile[["PSU"]], "label") <- "Primary Sampling Unit Serial Number"

attr(rdatafile[["HHID"]], "label") <- "Household id"

rdatafile[["QUARTER"]] <- haven::labelled_spss(rdatafile[["QUARTER"]],
    labels = c("" = )
)
attr(rdatafile[["QUARTER"]], "label") <- "Quarters"

attr(rdatafile[["HHWGT"]], "label") <- "Household annual weight"

attr(rdatafile[["STRATUM"]], "label") <- "Stratum 132 annual estimates"

rdatafile[["STRATUM16"]] <- haven::labelled_spss(rdatafile[["STRATUM16"]],
    labels = c("Barisal Rural" = 1,
               "Barisal Urban" = 2,
               "Chittagong Rural" = 3,
               "Chittagong Urban" = 4,
               "Chittagong City Corp." = 5,
               "Dhaka Rural" = 6,
               "Dhaka Urban" = 7,
               "Dhaka City Corp." = 8,
               "Khulna Rural" = 9,
               "Khulna Urban" = 10,
               "Khulna City Corp." = 11,
               "Rajshahi Rural" = 12,
               "Rajshahi Urban" = 13,
               "Rajshahi City Corp." = 14,
               "Sylhet Rural" = 15,
               "Sylhet Urban" = 16)
)
attr(rdatafile[["STRATUM16"]], "label") <- "Stratum 16 quarterly estimates"

rdatafile[["RUC"]] <- haven::labelled_spss(rdatafile[["RUC"]],
    labels = c("" = )
)
attr(rdatafile[["RUC"]], "label") <- "Rural / PSA / City Corp"

rdatafile[["URBRURAL"]] <- haven::labelled_spss(rdatafile[["URBRURAL"]],
    labels = c("Rural" = 1,
               "Urban" = 2)
)
attr(rdatafile[["URBRURAL"]], "label") <- "1 Rural, 2 Urban"

attr(rdatafile[["DIVISION_CODE"]], "label") <- "Division Code"

rdatafile[["DIVISION_NAME"]] <- haven::labelled_spss(rdatafile[["DIVISION_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["DIVISION_NAME"]], "label") <- "Division Name"

attr(rdatafile[["ZILA_CODE"]], "label") <- "Zila/District code"

rdatafile[["ZILA_NAME"]] <- haven::labelled_spss(rdatafile[["ZILA_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["ZILA_NAME"]], "label") <- "Zila/District name"

rdatafile[["S9EQ00"]] <- haven::labelled_spss(rdatafile[["S9EQ00"]],
    labels = c("Radio" = 571,
               "Two-in-one, Cassette player" = 572,
               "Camera/ camcorder" = 573,
               "Bicycle" = 574,
               "Motorcycle/ scooter" = 575,
               "Motor car etc." = 576,
               "Refrigerator or freezer" = 577,
               "Washing machine" = 578,
               "Fans" = 579,
               "Heaters" = 581,
               "Television" = 582,
               "VCR/ VCP/DVD" = 583,
               "Dish antena/ decoder" = 584,
               "Pressure lamps/ petromax" = 585,
               "Sewing machine" = 586,
               "Bedroom Furniture" = 587,
               "Drawing room Furniture" = 588,
               "Dining room Furniture" = 589,
               "Carpet" = 591,
               "Kitchen Items - Cutlery" = 592,
               "Kitchen Items - Crockery" = 593,
               "Mocrooven/Kitchen Items - Cooking" = 594,
               "Tubewell (for drinking water only)" = 595,
               "Wrist watch/Wall clock" = 596,
               "Mobile" = 597,
               "Computer/TV Card" = 598,
               "Boat/Others" = 599,
               "Total" = 600)
)
attr(rdatafile[["S9EQ00"]], "label") <- "Item Code"

rdatafile[["S9EQ01A"]] <- haven::labelled_spss(rdatafile[["S9EQ01A"]],
    labels = c("" = )
)
attr(rdatafile[["S9EQ01A"]], "label") <- "Does your household own any of the following items? (NO)"

rdatafile[["S9EQ01B"]] <- haven::labelled_spss(rdatafile[["S9EQ01B"]],
    labels = c("" = )
)
attr(rdatafile[["S9EQ01B"]], "label") <- "Does your household own any of the following items? (YES)"

attr(rdatafile[["S9EQ02"]], "label") <- "How many ..[ITEM].. Does your household own? (Number)"

attr(rdatafile[["S9EQ03"]], "label") <- "If you wanted to sell this/these ..[ITEM].. Today, how much money would you rece"

attr(rdatafile[["S9EQ04"]], "label") <- "If it is procured within the last 12 months, How much it costs? (Taka)"

attr(rdatafile[["PSU"]], "label") <- "Primary Sampling Unit Serial Number"

attr(rdatafile[["HHID"]], "label") <- "Household id"

rdatafile[["QUARTER"]] <- haven::labelled_spss(rdatafile[["QUARTER"]],
    labels = c("" = )
)
attr(rdatafile[["QUARTER"]], "label") <- "Quarters"

attr(rdatafile[["HHWGT"]], "label") <- "Household annual weight"

attr(rdatafile[["STRATUM"]], "label") <- "Stratum 132 annual estimates"

rdatafile[["STRATUM16"]] <- haven::labelled_spss(rdatafile[["STRATUM16"]],
    labels = c("Barisal Rural" = 1,
               "Barisal Urban" = 2,
               "Chittagong Rural" = 3,
               "Chittagong Urban" = 4,
               "Chittagong City Corp." = 5,
               "Dhaka Rural" = 6,
               "Dhaka Urban" = 7,
               "Dhaka City Corp." = 8,
               "Khulna Rural" = 9,
               "Khulna Urban" = 10,
               "Khulna City Corp." = 11,
               "Rajshahi Rural" = 12,
               "Rajshahi Urban" = 13,
               "Rajshahi City Corp." = 14,
               "Sylhet Rural" = 15,
               "Sylhet Urban" = 16)
)
attr(rdatafile[["STRATUM16"]], "label") <- "Stratum 16 quarterly estimates"

rdatafile[["RUC"]] <- haven::labelled_spss(rdatafile[["RUC"]],
    labels = c("" = )
)
attr(rdatafile[["RUC"]], "label") <- "Rural / PSA / City Corp"

rdatafile[["URBRURAL"]] <- haven::labelled_spss(rdatafile[["URBRURAL"]],
    labels = c("Rural" = 1,
               "Urban" = 2)
)
attr(rdatafile[["URBRURAL"]], "label") <- "1 Rural, 2 Urban"

attr(rdatafile[["DIVISION_CODE"]], "label") <- "Division Code"

rdatafile[["DIVISION_NAME"]] <- haven::labelled_spss(rdatafile[["DIVISION_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["DIVISION_NAME"]], "label") <- "Division Name"

attr(rdatafile[["ZILA_CODE"]], "label") <- "Zila/District code"

rdatafile[["ZILA_NAME"]] <- haven::labelled_spss(rdatafile[["ZILA_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["ZILA_NAME"]], "label") <- "Zila/District name"

rdatafile[["DAY"]] <- haven::labelled_spss(rdatafile[["DAY"]],
    labels = c("" = )
)
attr(rdatafile[["DAY"]], "label") <- "Day"

attr(rdatafile[["VERSION"]], "label") <- "Data Entry Application Version"

attr(rdatafile[["FILE_ID"]], "label") <- "File ID"

attr(rdatafile[["HH_9A_START"]], "label") <- "HH Section 9A Start Stamp"

attr(rdatafile[["HH_9A_END"]], "label") <- "HH Section 9A End Stamp"

attr(rdatafile[["PSU"]], "label") <- "Primary sampling Unit"

attr(rdatafile[["HHID"]], "label") <- "Household code"

rdatafile[["QUARTER"]] <- haven::labelled_spss(rdatafile[["QUARTER"]],
    labels = c("" = )
)
attr(rdatafile[["QUARTER"]], "label") <- "Quarters"

attr(rdatafile[["HHWGT"]], "label") <- "Household annual weight"

attr(rdatafile[["POPWGT"]], "label") <- "Annual population weight"

attr(rdatafile[["STRATUM"]], "label") <- "Stratum 132 annual estimates"

rdatafile[["STRATUM16"]] <- haven::labelled_spss(rdatafile[["STRATUM16"]],
    labels = c("Barisal Rural" = 1,
               "Barisal Urban" = 2,
               "Chittagong Rural" = 3,
               "Chittagong Urban" = 4,
               "Chittagong City Corp." = 5,
               "Dhaka Rural" = 6,
               "Dhaka Urban" = 7,
               "Dhaka City Corp." = 8,
               "Khulna Rural" = 9,
               "Khulna Urban" = 10,
               "Khulna City Corp." = 11,
               "Rajshahi Rural" = 12,
               "Rajshahi Urban" = 13,
               "Rajshahi City Corp." = 14,
               "Sylhet Rural" = 15,
               "Sylhet Urban" = 16)
)
attr(rdatafile[["STRATUM16"]], "label") <- "Stratum 16 quarterly estimates"

rdatafile[["RUC"]] <- haven::labelled_spss(rdatafile[["RUC"]],
    labels = c("" = )
)
attr(rdatafile[["RUC"]], "label") <- "Rural / PSA / City Corp"

rdatafile[["URBRURAL"]] <- haven::labelled_spss(rdatafile[["URBRURAL"]],
    labels = c("Rural" = 1,
               "Urban" = 2)
)
attr(rdatafile[["URBRURAL"]], "label") <- "1 Rural, 2 Urban"

attr(rdatafile[["DIVISION_CODE"]], "label") <- "Division Code"

rdatafile[["DIVISION_NAME"]] <- haven::labelled_spss(rdatafile[["DIVISION_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["DIVISION_NAME"]], "label") <- "Division Name"

attr(rdatafile[["ZILA_CODE"]], "label") <- "Zila/District code"

rdatafile[["ZILA_NAME"]] <- haven::labelled_spss(rdatafile[["ZILA_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["ZILA_NAME"]], "label") <- "Zila/District name"

attr(rdatafile[["ID_03_CODE"]], "label") <- "Thana / Upazilla Code"

rdatafile[["ID_03_NAME"]] <- haven::labelled_spss(rdatafile[["ID_03_NAME"]],
    labels = c("" = )
)
attr(rdatafile[["ID_03_NAME"]], "label") <- "Thana / Upazilla Name"

attr(rdatafile[["ID_04_CODE"]], "label") <- "Union / Ward Code"

attr(rdatafile[["ID_04_NAME"]], "label") <- "Union / Ward Name"

attr(rdatafile[["ID_05_CODE"]], "label") <- "Mouza / Mohalla Code"

attr(rdatafile[["ID_05_NAME"]], "label") <- "Mouza / Mohalla Name"

attr(rdatafile[["ZU16QUARTERS"]], "label") <- "Quarterly upper poverty lines"

attr(rdatafile[["ZL16QUARTERS"]], "label") <- "Quarterly lower poverty lines"

attr(rdatafile[["ZU16"]], "label") <- "Annual upper poverty lines"

attr(rdatafile[["ZL16"]], "label") <- "Annual lower poverty lines"

rdatafile[["MEMBER"]] <- haven::labelled_spss(rdatafile[["MEMBER"]],
    labels = c("" = )
)
attr(rdatafile[["MEMBER"]], "label") <- "Household size"

attr(rdatafile[["FEXP"]], "label") <- "Monthly food consumption"

attr(rdatafile[["HSVALHH"]], "label") <- "Monthly rents (rent, imprent, or pr_rent) for household"

attr(rdatafile[["NFEXP2"]], "label") <- "Monthly non-food expenditure including predicted rents"

attr(rdatafile[["CONSEXP2"]], "label") <- "Monthly expenditure including predicted rents for hhlds who didn't report rents"

attr(rdatafile[["HHINCOME"]], "label") <- "Monthly Household Income"

attr(rdatafile[["PCEXP"]], "label") <- "Monthly per capita consumption expenditure"

attr(rdatafile[["PCINCOME"]], "label") <- "Monthly Per Capita Income"

attr(rdatafile[["PLINE_NAT"]], "label") <- "National poverty line population weighted"

attr(rdatafile[["RPCEXP"]], "label") <- "Monthly real per capita expenditure (deflated across space only)"

attr(rdatafile[["RPCINCOME"]], "label") <- "Monthly Real Per Capita Income (deflated across space only)"

rdatafile[["LOWERPOORQUARTERS"]] <- haven::labelled_spss(rdatafile[["LOWERPOORQUARTERS"]],
    labels = c("Not poor" = 0,
               "Poor" = 1)
)
attr(rdatafile[["LOWERPOORQUARTERS"]], "label") <- "People below quarterly lower poverty lines"

rdatafile[["UPPERPOORQUARTERS"]] <- haven::labelled_spss(rdatafile[["UPPERPOORQUARTERS"]],
    labels = c("Not poor" = 0,
               "Poor" = 1)
)
attr(rdatafile[["UPPERPOORQUARTERS"]], "label") <- "People below quarterly upper poverty lines"

rdatafile[["LOWERPOOR"]] <- haven::labelled_spss(rdatafile[["LOWERPOOR"]],
    labels = c("Not poor" = 0,
               "Poor" = 1)
)
attr(rdatafile[["LOWERPOOR"]], "label") <- "People below annual lower poverty lines"

rdatafile[["UPPERPOOR"]] <- haven::labelled_spss(rdatafile[["UPPERPOOR"]],
    labels = c("Not poor" = 0,
               "Poor" = 1)
)
attr(rdatafile[["UPPERPOOR"]], "label") <- "People below annual upper poverty lines"



# --- Save the R data file --- 

rfilename <- unlist(strsplit(basename(rdatapath), split="\\."))[1]
rdatapath <- file.path(dirname(rdatapath), paste(rfilename, ".Rdata", sep=""))
assign(rfilename, rdatafile)
eval(parse(text = paste("save(", rfilename, ", file=rdatapath)", sep="")))



# ------------------------------------------------------------------------------

# --- Clean up the working space --- 

rm(rfilename, rdatafile, csvpath, rdatapath)
