library(archive)
library(haven)
library(usethis)
library(dplyr)
library(janitor)

url <- "https://www.ssc.wisc.edu/~bhansen/econometrics/Econometrics%20Data.zip"
zip <- paste0("dev/", gsub("%20", "", basename(url)))

if (!file.exists(zip)) {
  download.file(url, zip)
}

archive_extract(zip, dir = "dev")

# use_description()
# use_cc0_license()

# ab1991 ----

ab1991 <- read_dta("dev/AB1991/AB1991.dta")

ab1991 <- zap_formats(ab1991)

colnames(ab1991) <- tolower(colnames(ab1991))

use_data(ab1991, overwrite = TRUE, compress = "xz")

# ajr2001 ----

ajr2001 <- read_dta("dev/AJR2001/AJR2001.dta")

ajr2001 <- zap_formats(ajr2001)

colnames(ajr2001) <- tolower(colnames(ajr2001))

ajr2001 <- ajr2001 %>%
  mutate(
    neoeuro = factor(neoeuro, levels = c(0, 1), labels = c("No", "Yes")),
    asia = factor(asia, levels = c(0, 1), labels = c("No", "Yes")),
    africa = factor(africa, levels = c(0, 1), labels = c("No", "Yes")),
    other = factor(other, levels = c(0, 1), labels = c("No", "Yes")),
    campaignsj = factor(campaignsj, levels = c(0, 1), labels = c("No", "Yes")),
    wandcafrica = factor(wandcafrica, levels = c(0, 1), labels = c("No", "Yes")),
    wacacontested = factor(wacacontested, levels = c(0, 1), labels = c("No", "Yes"))
  )

use_data(ajr2001, overwrite = TRUE, compress = "xz")

# ak1991 ----

ak1991 <- read_dta("dev/AK1991/AK1991.dta")

ak1991 <- zap_formats(ak1991)

colnames(ak1991) <- tolower(colnames(ak1991))

ak1991 <- ak1991 %>%
  mutate(
    married = factor(married, levels = c(0, 1), labels = c("No", "Yes")),
    black = factor(black, levels = c(0, 1), labels = c("No", "Yes")),
    region = factor(region, levels = c(1:8), labels = c(
      "East North Central States", "East South Central States", "Mid-Atlantic States",
      "Mountain States", "New England States", "South Atlantic States",
      "West North Central States", "West South Central States"
    )),
    smsa = factor(smsa, levels = c(0, 1), labels = c("No", "Yes")),
    state = factor(state, levels = c(1, 2, 4, 5, 6, 8, 9, 10, 11, 12, 13, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 44, 45, 46, 47, 48, 49, 50, 51, 53, 54, 55, 56), labels = c(
      "Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado", "Connecticut", "Delaware",
      "District of Columbia", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa",
      "Kansas", "Kentucky", "Louisiana", "Maine", "Maryland", "Massachusetts", "Michigan", "Minnesota",
      "Mississippi", "Missouri", "Montana", "Nebraska", "Nevada", "New Hampshire", "New Jersey",
      "New Mexico", "New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma", "Oregon",
      "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah",
      "Vermont", "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming"
    ))
  )

use_data(ak1991, overwrite = TRUE, compress = "xz")

# al1999 ----

al1999 <- read_dta("dev/AL1999/AL1999.dta")

al1999 <- zap_formats(al1999)

colnames(al1999) <- tolower(colnames(al1999))

use_data(al1999, overwrite = TRUE, compress = "xz")

# bmn2016 ----

bmn2016 <- read_dta("dev/BMN2016/BMN2016.dta")

bmn2016 <- zap_formats(bmn2016)

colnames(bmn2016) <- tolower(colnames(bmn2016))

bmn2016 <- bmn2016 %>%
  mutate(
    beerage18 = factor(beerage18, levels = c(0, 1), labels = c("No", "Yes")),
    beerage19 = factor(beerage19, levels = c(0, 1), labels = c("No", "Yes")),
    beerage20 = factor(beerage20, levels = c(0, 1), labels = c("No", "Yes")),
    beerage21 = factor(beerage21, levels = c(0, 1), labels = c("No", "Yes")),
    wineage18 = factor(wineage18, levels = c(0, 1), labels = c("No", "Yes")),
    wineage19 = factor(wineage19, levels = c(0, 1), labels = c("No", "Yes")),
    wineage20 = factor(wineage20, levels = c(0, 1), labels = c("No", "Yes")),
    wineage21 = factor(wineage21, levels = c(0, 1), labels = c("No", "Yes")),
    liqage18 = factor(liqage18, levels = c(0, 1), labels = c("No", "Yes")),
    liqage19 = factor(liqage19, levels = c(0, 1), labels = c("No", "Yes")),
    liqage20 = factor(liqage20, levels = c(0, 1), labels = c("No", "Yes")),
    liqage21 = factor(liqage21, levels = c(0, 1), labels = c("No", "Yes")),
    liqoffsunp = factor(liqoffsunp, levels = c(0, 1), labels = c("No", "Yes")),
    liqonsunp = factor(liqonsunp, levels = c(0, 1), labels = c("No", "Yes")),
    barsmokingban = factor(barsmokingban, levels = c(0, 1), labels = c("No", "Yes")),
    restsmokingban = factor(restsmokingban, levels = c(0, 1), labels = c("No", "Yes"))
  )

use_data(bmn2016, overwrite = TRUE, compress = "xz")

# card1995 ----

card1995 <- read_dta("dev/Card1995/Card1995.dta")

card1995 <- zap_formats(card1995)

colnames(card1995) <- tolower(colnames(card1995))

card1995 <- card1995 %>%
  mutate(
    nearc2 = factor(nearc2, levels = c(0, 1), labels = c("No", "Yes")),
    nearc4 = factor(nearc4, levels = c(0, 1), labels = c("No", "Yes")),
    nearc4a = factor(nearc4a, levels = c(0, 1), labels = c("No", "Yes")),
    nearc4b = factor(nearc4b, levels = c(0, 1), labels = c("No", "Yes")),
    nodaded = factor(nodaded, levels = c(0, 1), labels = c("No", "Yes")),
    nomomed = factor(nomomed, levels = c(0, 1), labels = c("No", "Yes")),
    momdad14 = factor(momdad14, levels = c(0, 1), labels = c("No", "Yes")),
    sinmom14 = factor(sinmom14, levels = c(0, 1), labels = c("No", "Yes")),
    step14 = factor(step14, levels = c(0, 1), labels = c("No", "Yes")),
    reg661 = factor(reg661, levels = c(0, 1), labels = c("No", "Yes")),
    reg662 = factor(reg662, levels = c(0, 1), labels = c("No", "Yes")),
    reg663 = factor(reg663, levels = c(0, 1), labels = c("No", "Yes")),
    reg664 = factor(reg664, levels = c(0, 1), labels = c("No", "Yes")),
    reg665 = factor(reg665, levels = c(0, 1), labels = c("No", "Yes")),
    reg666 = factor(reg666, levels = c(0, 1), labels = c("No", "Yes")),
    reg667 = factor(reg667, levels = c(0, 1), labels = c("No", "Yes")),
    reg668 = factor(reg668, levels = c(0, 1), labels = c("No", "Yes")),
    reg669 = factor(reg669, levels = c(0, 1), labels = c("No", "Yes")),
    south66 = factor(south66, levels = c(0, 1), labels = c("No", "Yes")),
    work76 = factor(work76, levels = c(0, 1), labels = c("No", "Yes")),
    work78 = factor(work78, levels = c(0, 1), labels = c("No", "Yes")),
    black = factor(black, levels = c(0, 1), labels = c("No", "Yes")),
    smsa76r = factor(smsa76r, levels = c(0, 1), labels = c("No", "Yes")),
    smsa78r = factor(smsa78r, levels = c(0, 1), labels = c("No", "Yes")),
    reg76r = factor(reg76r, levels = c(0, 1), labels = c("No", "Yes")),
    reg78r = factor(reg78r, levels = c(0, 1), labels = c("No", "Yes")),
    reg80r = factor(reg80r, levels = c(0, 1), labels = c("No", "Yes")),
    smsa66r = factor(smsa66r, levels = c(0, 1), labels = c("No", "Yes")),
    noint78 = factor(noint78, levels = c(0, 1), labels = c("No", "Yes")),
    noint80 = factor(noint80, levels = c(0, 1), labels = c("No", "Yes")),
    enroll76 = factor(enroll76, levels = c(0, 1), labels = c("No", "Yes")),
    enroll78 = factor(enroll78, levels = c(0, 1), labels = c("No", "Yes")),
    enroll80 = factor(enroll80, levels = c(0, 1), labels = c("No", "Yes")),
    marsta76 = factor(marsta76, levels = c(0, 1), labels = c("No", "Yes")),
    marsta78 = factor(marsta78, levels = c(0, 1), labels = c("No", "Yes")),
    marsta80 = factor(marsta80, levels = c(0, 1), labels = c("No", "Yes")),
    libcrd14 = factor(libcrd14, levels = c(0, 1), labels = c("No", "Yes"))
  )

use_data(card1995, overwrite = TRUE, compress = "xz")

# chj2004 ----

chj2004 <- read_dta("dev/CHJ2004/CHJ2004.dta")

chj2004 <- zap_formats(chj2004)

colnames(chj2004) <- tolower(colnames(chj2004))

use_data(chj2004, overwrite = TRUE, compress = "xz")

# ck1994 ----

ck1994 <- read_dta("dev/CK1994/CK1994.dta")

ck1994 <- zap_formats(ck1994)

colnames(ck1994) <- tolower(colnames(ck1994))

ck1994 <- ck1994 %>%
  mutate(
    chain = factor(chain, levels = c(1, 2, 3, 4), labels = c("Burger King", "KFC", "Roys", "Wendys")),
    co_owned = factor(co_owned, levels = c(0, 1), labels = c("No", "Yes")),
    state = factor(state, levels = c(0, 1), labels = c("Pennsylvania", "New Jersey")),
    southj = factor(southj, levels = c(0, 1), labels = c("No", "Yes")),
    centralj = factor(centralj, levels = c(0, 1), labels = c("No", "Yes")),
    northj = factor(northj, levels = c(0, 1), labels = c("No", "Yes")),
    pa1 = factor(pa1, levels = c(0, 1), labels = c("No", "Yes")),
    pa2 = factor(pa2, levels = c(0, 1), labels = c("No", "Yes")),
    shore = factor(shore, levels = c(0, 1), labels = c("No", "Yes")),
    meals = factor(meals, levels = c(0, 1, 2, 3), labels = c("None", "Free meals", "Reduced price meals", "Both")),
    time = factor(time, levels = c(0, 1), labels = c("First survey (2/15/1992 to 3/4/1992)", "Second survey (11/5/1992 to 12/31/1992)"))
  )

use_data(ck1994, overwrite = TRUE, compress = "xz")

# cmr2008 ----

cmr2008 <- read_dta("dev/CMR2008/CMR2008.dta")

cmr2008 <- zap_formats(cmr2008)

colnames(cmr2008) <- tolower(colnames(cmr2008))

use_data(cmr2008, overwrite = TRUE, compress = "xz")

# cps09mar ----

cps09mar <- read_dta("dev/cps09mar/cps09mar.dta")

cps09mar <- zap_formats(cps09mar)

colnames(cps09mar) <- tolower(colnames(cps09mar))

cps09mar <- cps09mar %>%
  rename(
    female_num = female,
    hisp_num = hisp,
    education_num = education,
    region_num = region,
    race_num = race,
    marital_num = marital
  ) %>%
  mutate(
    female = factor(female_num, levels = c(0, 1), labels = c("No", "Yes")),
    hisp = factor(hisp_num, levels = c(0, 1), labels = c("No", "Yes")),
    education = factor(education_num, levels = c(0, 4, 6, 8, 9, 10, 11, 12, 13, 14, 16, 18, 20), labels = c(
      "Less than 1st grade", "1st to 4th grade", "5th or 6th grade", "7th or 8th grade", "9th grade",
      "10th grade", "11th grade or 12th grade without diploma", "High school graduate or equivalent",
      "Some college, no degree", "Associate degree (occupational/vocational programs included)",
      "Bachelor's degree (BA, AB, BS)", "Master's degree (MA, MS, MEng, MEd, MSW, MBA)",
      "Professional or Doctorate degree (MD, DDS, DVM, JD, PhD, EdD)"
    )),
    region = factor(region_num, levels = c(1, 2, 3, 4), labels = c("Northeast", "Midwest", "South", "West")),
    race = factor(race_num, levels = c(1:21), labels = c(
      "White only", "Black only", "American Indian, Alaskan Native (AI) only", "Asian only",
      "Hawaiian/Pacific Islander (HP) only", "White-Black", "White-AI", "White-Asian", "White-HP",
      "Black-AI", "Black-Asian", "Black-HP", "AI-Asian", "Asian-HP", "White-Black-AI",
      "White-Black-Asian", "White-AI-Asian", "White-Asian-HP", "White-Black-AI-Asian",
      "2 or 3 races", "4 or 5 races"
    )),
    marital = factor(marital_num, levels = c(1:7), labels = c(
      "Married - civilian spouse present", "Married - Armed Forces spouse present",
      "Married - spouse absent (except separated)", "Widowed", "Divorced", "Separated", "Never married"
    ))
  )

cps09mar <- cps09mar %>%
  select(
    age, female, female_num, hisp, hisp_num, education, education_num,
    earnings:uncov, region, region_num, race, race_num, marital, marital_num
  )

glimpse(cps09mar)

cps09mar <- cps09mar %>%
  mutate_if(is.double, as.integer)

use_data(cps09mar, overwrite = TRUE, compress = "xz")

# ddk2011 ----

ddk2011 <- read_dta("dev/DDK2011/DDK2011.dta")

ddk2011 <- zap_formats(ddk2011)

colnames(ddk2011) <- tolower(colnames(ddk2011))

ddk2011 <- ddk2011 %>%
  mutate(
    bungoma = factor(bungoma, levels = c(0, 1), labels = c("No", "Yes")),
    tracking = factor(tracking, levels = c(0, 1), labels = c("No", "Yes")),
    sbm = factor(sbm, levels = c(0, 1), labels = c("No", "Yes")),
    girl = factor(girl, levels = c(0, 1), labels = c("No", "Yes")),
    etpteacher = factor(etpteacher, levels = c(0, 1), labels = c("No", "Yes")),
    lowstream = factor(lowstream, levels = c(0, 1), labels = c("No", "Yes")),
    bottomhalf = factor(bottomhalf, levels = c(0, 1), labels = c("No", "Yes")),
    tophalf = factor(tophalf, levels = c(0, 1), labels = c("No", "Yes")),
    bottomquarter = factor(bottomquarter, levels = c(0, 1), labels = c("No", "Yes")),
    secondquarter = factor(secondquarter, levels = c(0, 1), labels = c("No", "Yes")),
    thirdquarter = factor(thirdquarter, levels = c(0, 1), labels = c("No", "Yes")),
    topquarter = factor(topquarter, levels = c(0, 1), labels = c("No", "Yes")),
    attrition = factor(attrition, levels = c(0, 1), labels = c("No", "Yes")),
    r2_attrition = factor(r2_attrition, levels = c(0, 1), labels = c("No", "Yes"))
  )

use_data(ddk2011, overwrite = TRUE, compress = "xz")

# ds2004 ----

ds2004 <- read_dta("dev/DS2004/DS2004.dta")

ds2004 <- zap_formats(ds2004)

colnames(ds2004) <- tolower(colnames(ds2004))

ds2004 <- ds2004 %>%
  mutate(
    sameblock = factor(sameblock, levels = c(0, 1), labels = c("No", "Yes")),
    public = factor(public, levels = c(0, 1), labels = c("No", "Yes")),
    gasstation = factor(gasstation, levels = c(0, 1), labels = c("No", "Yes")),
    bank = factor(bank, levels = c(0, 1), labels = c("No", "Yes")),
    oneblock = factor(oneblock, levels = c(0, 1), labels = c("No", "Yes"))
  )

use_data(ds2004, overwrite = TRUE, compress = "xz")

# fred_md ----

fred_md <- read_dta("dev/FRED-MD/FRED-MD.dta")

fred_md <- zap_formats(fred_md)

colnames(fred_md) <- tolower(colnames(fred_md))

# fred_md <- fred_md %>%
#   mutate(
#     tcode = factor(tcode, levels = c(1, 2, 3, 4, 5, 6, 7), labels = c(
#       "No transformation", "First difference", "Second difference",
#       "Log", "Log first difference", "Log second difference",
#       "Difference in growth rate"
#     ))
#   )

use_data(fred_md, overwrite = TRUE, compress = "xz")

# fred_qd ----

fred_qd <- read_dta("dev/FRED-QD/FRED-QD.dta")

fred_qd <- zap_formats(fred_qd)

colnames(fred_qd) <- tolower(colnames(fred_qd))

use_data(fred_qd, overwrite = TRUE, compress = "xz")

# invest1993 ----

invest1993 <- read_dta("dev/Invest1993/Invest1993.dta")

invest1993 <- zap_formats(invest1993)

colnames(invest1993) <- tolower(colnames(invest1993))

invest1993 <- invest1993 %>%
  mutate(
    nyseamex = factor(nyseamex, levels = c(0, 1), labels = c("No", "Yes")),
  )

use_data(invest1993, overwrite = TRUE, compress = "xz")

# kilian2009 ----

kilian2009 <- read_dta("dev/Kilian2009/Kilian2009.dta")

kilian2009 <- zap_formats(kilian2009)

colnames(kilian2009) <- tolower(colnames(kilian2009))

use_data(kilian2009, overwrite = TRUE, compress = "xz")

# koppelman ----

koppelman <- read_dta("dev/Koppelman/Koppelman.dta")

koppelman <- zap_formats(koppelman)

colnames(koppelman) <- tolower(colnames(koppelman))

unique(koppelman$alternative)

koppelman <- koppelman %>%
  mutate(
    alternative = factor(alternative, levels = 1:4, labels = c("Train", "Air", "Bus", "Car")),
    choice = factor(choice, levels = c(0, 1), labels = c("No", "Yes")),
    urban = factor(urban, levels = c(0, 1), labels = c("No", "Yes"))
  )

use_data(koppelman, overwrite = TRUE, compress = "xz")

# lm2007 ----

lm2007 <- read_dta("dev/LM2007/LM2007.dta")

lm2007 <- zap_formats(lm2007)

colnames(lm2007) <- tolower(colnames(lm2007))

sort(unique(lm2007$state))

lm2007 <- lm2007 %>%
  mutate(
    state = factor(state, levels = c(1:51), labels = c(
      "Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado", "Connecticut", "Delaware",
      "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky",
      "Louisiana", "Maine", "Maryland", "Massachusetts", "Michigan", "Minnesota", "Mississippi",
      "Missouri", "Montana", "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico",
      "New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma", "Oregon", "Pennsylvania",
      "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Vermont",
      "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming", "District of Columbia"
    ))
  )

use_data(lm2007, overwrite = TRUE, compress = "xz")

# mrw1992 ----

mrw1992 <- read_dta("dev/MRW1992/MRW1992.dta")

mrw1992 <- zap_formats(mrw1992)

colnames(mrw1992) <- tolower(colnames(mrw1992))

mrw1992 <- mrw1992 %>%
  mutate(
    n = factor(n, levels = c(0, 1), labels = c("No", "Yes")),
    i = factor(i, levels = c(0, 1), labels = c("No", "Yes")),
    o = factor(o, levels = c(0, 1), labels = c("No", "Yes"))
  )

use_data(mrw1992, overwrite = TRUE, compress = "xz")

# nerlove1963 ----

nerlove1963 <- read_dta("dev/Nerlove1963/Nerlove1963.dta")

nerlove1963 <- zap_formats(nerlove1963)

colnames(nerlove1963) <- tolower(colnames(nerlove1963))

use_data(nerlove1963, overwrite = TRUE, compress = "xz")

# pss2017 ----

pss2017 <- read_dta("dev/PSS2017/PSS2017.dta")

pss2017 <- zap_formats(pss2017)

colnames(pss2017) <- tolower(colnames(pss2017))

pss2017 <- pss2017 %>%
  mutate(
    country = as_factor(country)
  )

use_data(pss2017, overwrite = TRUE, compress = "xz")

# rr2010 ----

rr2010 <- read_dta("dev/RR2010/RR2010.dta")

rr2010 <- zap_formats(rr2010)

use_data(rr2010, overwrite = TRUE, compress = "xz")
