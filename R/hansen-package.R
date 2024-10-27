#' Arellano-Bond (1991) Panel Data for U.K. Companies
#'
#' Observations for 140 U.K. companies from 1976 to 1984.
#'
#' @format A data frame with 1,031 rows and 10 variables:
#' \describe{
#'   \item{year}{Year of observation}
#'   \item{emp}{Employment (number of employees). Number of U.K. employees (Datastream variable 216)}
#'   \item{wage}{Real wage per employee. A measure of average annual remuneration per employee was constructed by dividing U.K.
#'   remuneration (Datastream variable 214) by the number of U.K. employees. This was adjusted to
#'   take into account changes in average weekly hours worked in manufacturing industries (manual
#'   and non-manual employees, 18 years and over, male and female, all occupations-source:
#'   Department of Employment Gazette, various issues). A measure of real average hourly
#'   remuneration was then obtained by deflating using an implicit value-added price deflator. These
#'   implicit price deflators were calculated for each of our sub-sectors of manufacturing industry,
#'   using the current price and constant price GDP data published in various Blue Books.}
#'   \item{cap}{Gross capital stock. Denoting the historic cost book value of gross fixed assets (Datastream variable 330) by HCKt, we
#'   obtain an estimate of the inflation-adjusted (or replacement cost) value of gross fixed assets
#'   $RCK_t$ using the formula $RCK_t = HCK_t \\times P_t / P_\{t-A\}$ where $P$ is a price index for investment goods and
#'   $A$ is an estimate of the average age of gross fixed assets. An implicit price deflator for gross fixed
#'   investment by manufacturing industry was calculated using the current price and constant price
#'   gross fixed investment data published in Economic Trends Annual Supplement (1986, p. 56). For
#'   the purpose of this exercise a value of $A$ of 6 years was assumed. Our estimates of the gross
#'   capital stock at replacement cost are then expressed in constant prices using our investment
#'   goods deflator.}
#'   \item{indoutpt}{Industry output. An index of value-added output at constant factor cost was constructed for each of our 9 sub-
#'   sectors of manufacturing industry, using data published in the Blue Book (1986, Table 2.4). The
#'   15 sub-sectors of manufacturing for which this data is reported were combined into 9 using the
#'   weights given in the Blue Book.}
#'   \item{n}{Log of employment}
#'   \item{w}{Log of real wage}
#'   \item{k}{Log of gross capital stock}
#'   \item{ys}{Log of industry output}
#'   \item{id}{Firm identification code}
#' }
#'
#' @details
#' The principal data source used is company accounts from Datastream International which
#' provide accounts records of employment and remuneration (i.e., wage bill) for all U.K. quoted
#' companies from 1976 onwards. We have used a sample of 140 companies with operations
#' mainly in the U.K., whose main activity is manufacturing and for which we have at least 7
#' continuous observations during the period 1976-1984. Where more than 7 observations are
#' available we have exploited this additional information, so that our sample has the unbalanced
#' structure described in Table A1.
#'
#' As well as requiring at least 7 continuous observations, companies were excluded from our
#' sample for a number of reasons. We required complete records on a set of accounting variables
#' including gross fixed assets, investment, inventories and sales as well as employment and
#' remuneration. Companies that changed the date of their accounting year end by more than a
#' few days were excluded, so that our data all refer to 12 month periods. We also excluded
#' companies where either employment or one of our constructed measures of real wages, real
#' capital, real inventories or real sales jumped by more than a factor of 3 from one year to the
#' next. This filter will remove both those companies where data has been recorded erroneously
#' and those companies that have experienced major mergers. Finally, we restricted our attention
#' to companies that we could allocate to one of 9 broad sub-sectors of manufacturing industry
#' using Datastream's breakdown of total sales by product available from 1980 onwards.
#'
#' @source Arellano, Manual and Bond, Stephen. (1991). "Some Tests of Specification for Panel Data:
#' Monte Carlo Evidence and an Application to Employment Equations," *Review of Economic Studies*, 277-297.
#' Data available via Stata command `webuse abdata`.
"ab1991"

#' Acemoglou, Johnson, and Robinson (2001) Dataset on Colonial Origins of Comparative Development
#'
#' Colonial factors influencing economic development. Updated in 2012, it includes variables related to settler mortality, economic indicators, geographic data, and other socio-political metrics.
#'
#' @format A data frame with 64 observations across 31 columns. Missing values are coded as NA.
#' \describe{
#'   \item{longname}{Full country name}
#'   \item{shortnam}{3-letter country name}
#'   \item{logmort0}{Original log settler mortality}
#'   \item{risk}{Expected risk}
#'   \item{loggdp}{Log GDP per capita (PPP) in 1995}
#'   \item{campaign}{Original mortality from campaign}
#'   \item{source0}{Country source of own mortality rate}
#'   \item{slave}{Data from forced labor}
#'   \item{latitude}{Absolute value of latitude}
#'   \item{neoeuro}{Indicator for 'New-Europes' (USA, CAN, AUS, NZL)}
#'   \item{asia}{Indicator for Asia}
#'   \item{africa}{Indicator for Africa}
#'   \item{other}{Indicator for 'Other' continent (AUS, NZL, MLT)}
#'   \item{edes1975}{Population of European descent, 1975}
#'   \item{campaignsj}{Indicator for HKG and NZL}
#'   \item{campaignsj2}{Extended recoding of campaign variable}
#'   \item{mortnaval1}{Mortality using naval stations, method 1}
#'   \item{logmortnaval1}{Log mortality using naval stations, method 1}
#'   \item{mortnaval2}{Mortality using naval stations, method 2}
#'   \item{logmortnaval2}{Log mortality using naval stations, method 2}
#'   \item{mortjam}{Mortality benchmarked to the Caribbean}
#'   \item{logmortjam}{Log mortality benchmarked to the Caribbean}
#'   \item{logmortcap250}{Log mortality capped at 250}
#'   \item{logmortjam250}{Log mortality benchmarked to the Caribbean, capped at 250}
#'   \item{wandcafrica}{Indicator for West and Central Africa}
#'   \item{malfal94}{Falciparum malaria index, 1994}
#'   \item{wacacontested}{Indicator for contested observations in West and Central Africa}
#'   \item{mortnaval2250}{Mortality using naval stations, capped at 250}
#'   \item{logmortnaval2250}{Log mortality using naval stations, capped at 250}
#'   \item{mortnaval1250}{Mortality using naval stations, capped at 250}
#'   \item{logmortnaval1250}{Log mortality using naval stations, capped at 250}
#' }
#'
#' @source Acemoglou, D., Johnson, S., & Robinson, J. A. (2001). "The Colonial Origins of Comparative Development: An Empirical Investigation." American Economic Review. Updated version (2012): "The Colonial Origins of Comparative Development: An Empirical Investigation: Reply." Data available at <https://www.aeaweb.org/aer/data/oct2012/20110390_data.zip>
"ajr2001"

#' Angrist and Krueger (1991) Dataset on Compulsory School Attendance
#'
#' Schooling and earnings based on a subsample of men born 1930-1939 from the 1980 census extract. The dataset contains variables related to age, education, earnings, marital status, and geographic information.
#'
#' @format A data frame with 329,509 observations across 10 columns.
#' \describe{
#'   \item{ageq}{Age, including quarter of birth}
#'   \item{edu}{Highest grade completed}
#'   \item{logwage}{Log weekly earnings (in dollars)}
#'   \item{married}{Married and with spouse present}
#'   \item{qob}{Quarter of birth}
#'   \item{black}{Black race}
#'   \item{region}{Region of residence}
#'   \item{smsa}{Works in a standard metropolitan statistical area (SMSA)}
#'   \item{yob}{Year of birth}
#'   \item{state}{State of birth}
#' }
#'
#' @source Angrist, J., & Krueger, A. (1991). "Does Compulsory School Attendance Affect Schooling and Earnings?" *The Quarterly Journal of Economics*. Data available at <http://economics.mit.edu/faculty/angrist/data1/data/angkru1991>
"ak1991"

#' Angrist and Lavy (1999) Dataset on Class Size and Scholastic Achievement
#'
#' Class sizes, scholastic achievement scores, and various classroom demographics for 4th and 5th grades. The dataset is derived from the merged files `final4.dta` and `final5.dta` with data cleaning adjustments to remove recording errors, missing observations, class sizes above 44, and enrollments below 6.
#'
#' @format A data frame with 4,067 classrooms and 31 variables.
#' \describe{
#'   \item{schlcode}{School code}
#'   \item{enrollment}{School enrollment (number of students in grade)}
#'   \item{enrollment_boys}{Number of boys in grade}
#'   \item{enrollment_girls}{Number of girls in grade}
#'   \item{c_num4rd}{Number of 4th grade classes in school}
#'   \item{c_type}{Number of special education classes}
#'   \item{flgrm4}{Percentage failed in grammar 4th grade in 1991}
#'   \item{mrkgrm4}{Mean mark in grammar 4th grade in 1991}
#'   \item{ngrm4}{Number of students in grammar 4th grade in 1991}
#'   \item{flmth4}{Percentage failed in math 4th grade in 1991}
#'   \item{mrkmth4}{Mean mark in math 4th grade in 1991}
#'   \item{nmth4}{Number of students in math 4th grade in 1991}
#'   \item{towncode}{Town code}
#'   \item{popcode}{Population code}
#'   \item{grade}{Class grade (4 or 5)}
#'   \item{classid}{Class sequence number}
#'   \item{classize}{Number of students in class}
#'   \item{mathsize}{Number of students tested in mathematics}
#'   \item{avgmath}{Mathematics score}
#'   \item{passmath}{Pass mathematics test indicator}
#'   \item{verbsize}{Number of students tested in reading}
#'   \item{avgverb}{Grammar score}
#'   \item{passverb}{Pass grammar test indicator}
#'   \item{disadvantaged}{School socioeconomic status: percent disadvantaged}
#'   \item{c_num5rd}{Number of 5th grade classes in school}
#'   \item{flgrm5}{Percentage failed in grammar 5th grade in 1991}
#'   \item{mrkgrm5}{Mean mark in grammar 5th grade in 1991}
#'   \item{ngrm5}{Number of students in grammar 5th grade in 1991}
#'   \item{flmth5}{Percentage failed in math 5th grade in 1991}
#'   \item{mrkmth5}{Mean mark in math 5th grade in 1991}
#'   \item{nmth5}{Number of students in math 5th grade in 1991}
#' }
#'
#' @source Angrist, J., & Lavy, V. (1999). "Using Maimonides’ Rule to Estimate the Effect of Class Size on Scholastic Achievement." *The Quarterly Journal of Economics*. Data available at <https://economics.mit.edu/faculty/angrist/data1/data/anglavy99>
"al1999"

#' Bernheim, Meer, and Novarro (2016) Dataset on Liquor Consumption and Commitment Opportunities
#'
#' Liquor sale hours, alcohol consumption, and related state policies across 47 U.S. states from 1970 to 2007. The dataset includes off-premises and on-premises sales data for beer, wine, and liquor, along with other socioeconomic variables.
#'
#' @format A data frame with 1,722 observations and multiple variables related to liquor sales and policies.
#' \describe{
#'   \item{id}{Unique identifier for each observation}
#'   \item{state}{State name}
#'   \item{year}{Year of observation}
#'   \item{beeroffweekday}{Beer sales off-premises on weekdays}
#'   \item{beerofffri}{Beer sales off-premises on Fridays}
#'   \item{beeroffsat}{Beer sales off-premises on Saturdays}
#'   \item{beeroffsun}{Beer sales off-premises on Sundays}
#'   \item{wineoffweekday}{Wine sales off-premises on weekdays}
#'   \item{wineofffri}{Wine sales off-premises on Fridays}
#'   \item{wineoffsat}{Wine sales off-premises on Saturdays}
#'   \item{wineoffsun}{Wine sales off-premises on Sundays}
#'   \item{liqoffweekday}{Liquor sales off-premises on weekdays}
#'   \item{liqofffri}{Liquor sales off-premises on Fridays}
#'   \item{liqoffsat}{Liquor sales off-premises on Saturdays}
#'   \item{liqoffsun}{Liquor sales off-premises on Sundays}
#'   \item{beeronweekday}{Beer sales on-premises on weekdays}
#'   \item{beeronfri}{Beer sales on-premises on Fridays}
#'   \item{beeronsat}{Beer sales on-premises on Saturdays}
#'   \item{beeronsun}{Beer sales on-premises on Sundays}
#'   \item{wineonweekday}{Wine sales on-premises on weekdays}
#'   \item{wineonfri}{Wine sales on-premises on Fridays}
#'   \item{wineonsat}{Wine sales on-premises on Saturdays}
#'   \item{wineonsun}{Wine sales on-premises on Sundays}
#'   \item{liqonweekday}{Liquor sales on-premises on weekdays}
#'   \item{liqonfri}{Liquor sales on-premises on Fridays}
#'   \item{liqonsat}{Liquor sales on-premises on Saturdays}
#'   \item{liqonsun}{Liquor sales on-premises on Sundays}
#'   \item{beerethvol}{Beer ethanol volume}
#'   \item{wineethvol}{Wine ethanol volume}
#'   \item{liqethvol}{Liquor ethanol volume}
#'   \item{beerage18}{Legal beer drinking age 18}
#'   \item{beerage19}{Legal beer drinking age 19}
#'   \item{beerage20}{Legal beer drinking age 20}
#'   \item{beerage21}{Legal beer drinking age 21}
#'   \item{wineage18}{Legal wine drinking age 18}
#'   \item{wineage19}{Legal wine drinking age 19}
#'   \item{wineage20}{Legal wine drinking age 20}
#'   \item{wineage21}{Legal wine drinking age 21}
#'   \item{liqage18}{Legal liquor drinking age 18}
#'   \item{liqage19}{Legal liquor drinking age 19}
#'   \item{liqage20}{Legal liquor drinking age 20}
#'   \item{liqage21}{Legal liquor drinking age 21}
#'   \item{unempw}{Unemployment rate}
#'   \item{popover18}{Population over 18}
#'   \item{beereth}{Beer ethanol content}
#'   \item{wineeth}{Wine ethanol content}
#'   \item{liqeth}{Liquor ethanol content}
#'   \item{logliq}{Log of liquor sales}
#'   \item{logwine}{Log of wine sales}
#'   \item{logbeer}{Log of beer sales}
#'   \item{expand}{Indicator for expansion of sales}
#'   \item{restrict}{Indicator for restriction of sales}
#'   \item{liqoffsunp}{Liquor off-premises sales on Sundays (percentage)}
#'   \item{liqonsunp}{Liquor on-premises sales on Sundays (percentage)}
#'   \item{beeroffinflows}{Beer off-premises inflows}
#'   \item{wineoffinflows}{Wine off-premises inflows}
#'   \item{liqoffinflows}{Liquor off-premises inflows}
#'   \item{beeroninflows}{Beer on-premises inflows}
#'   \item{wineoninflows}{Wine on-premises inflows}
#'   \item{liqoninflows}{Liquor on-premises inflows}
#'   \item{liqonoutflows}{Liquor on-premises outflows}
#'   \item{liqoffoutflows}{Liquor off-premises outflows}
#'   \item{beeronoutflows}{Beer on-premises outflows}
#'   \item{beeroffoutflows}{Beer off-premises outflows}
#'   \item{wineonoutflows}{Wine on-premises outflows}
#'   \item{wineoffoutflows}{Wine off-premises outflows}
#'   \item{liqonnotsun}{Liquor on-premises sales not on Sundays}
#'   \item{liqoffnotsun}{Liquor off-premises sales not on Sundays}
#'   \item{everonchange}{Indicator for any change in on-premises sales}
#'   \item{everoffchange}{Indicator for any change in off-premises sales}
#'   \item{winetax}{Wine tax}
#'   \item{liquortax}{Liquor tax}
#'   \item{beertax}{Beer tax}
#'   \item{cigtax}{Cigarette tax}
#'   \item{barsmokingban}{Ban on smoking in bars}
#'   \item{restsmokingban}{Ban on smoking in restaurants}
#' }
#'
#' @source Bernheim, B. D., Meer, J., & Novarro, N. K. (2016). "Do Consumers Exploit Commitment Opportunities? Evidence from Natural Experiments Involving Liquor Consumption." *American Economic Journal: Economic Policy*, 8(1), 41-69. Data available at <https://www.aeaweb.org/articles?id=10.1257/pol.20130351>
"bmn2016"

#' Card (1995) Dataset on College Proximity and Return to Schooling
#'
#' Education, earnings, family background, and regional variables from the 1976 cross-section of the National Longitudinal Survey (NLS) of young men.
#'
#' @format A data frame with 3,613 observations and 52 variables. Missing values are coded as NA.
#' \describe{
#'   \item{id}{Sequential ID, runs from 1 to 5225}
#'   \item{nearc2}{Grew up near a 2-year college}
#'   \item{nearc4}{Grew up near a 4-year college}
#'   \item{nearc4a}{Grew up near a 4-year public college}
#'   \item{nearc4b}{Grew up near a 4-year private college}
#'   \item{ed76}{Education level in 1976}
#'   \item{ed66}{Education level in 1966}
#'   \item{age76}{Age in 1976}
#'   \item{daded}{Father's education (missing values are set to average)}
#'   \item{nodaded}{Indicator if father's education is imputed}
#'   \item{momed}{Mother's education}
#'   \item{nomomed}{Indicator if mother's education is imputed}
#'   \item{weight}{NLS weight for 1976 cross-section}
#'   \item{momdad14}{Indicator if lived with both parents at age 14}
#'   \item{sinmom14}{Indicator if lived with single mother at age 14}
#'   \item{step14}{Indicator if lived with step-parent at age 14}
#'   \item{reg661}{Dummy for region 1 in 1966}
#'   \item{reg662}{Dummy for region 2 in 1966}
#'   \item{reg663}{Dummy for region 3 in 1966}
#'   \item{reg664}{Dummy for region 4 in 1966}
#'   \item{reg665}{Dummy for region 5 in 1966}
#'   \item{reg666}{Dummy for region 6 in 1966}
#'   \item{reg667}{Dummy for region 7 in 1966}
#'   \item{reg668}{Dummy for region 8 in 1966}
#'   \item{reg669}{Dummy for region 9 in 1966}
#'   \item{south66}{Indicator if lived in the South in 1966}
#'   \item{work76}{Indicator if worked in 1976}
#'   \item{work78}{Indicator if worked in 1978}
#'   \item{lwage76}{Log wage in 1976 (outliers trimmed)}
#'   \item{lwage78}{Log wage in 1978 (outliers trimmed)}
#'   \item{famed}{Combined education level of mother and father}
#'   \item{black}{Indicator if Black}
#'   \item{smsa76r}{Indicator if lived in SMSA in 1976}
#'   \item{smsa78r}{Indicator if lived in SMSA in 1978}
#'   \item{reg76r}{Indicator if lived in the South in 1976}
#'   \item{reg78r}{Indicator if lived in the South in 1978}
#'   \item{reg80r}{Indicator if lived in the South in 1980}
#'   \item{smsa66r}{Indicator if lived in SMSA in 1966}
#'   \item{wage76}{Raw wage in cents per hour in 1976}
#'   \item{wage78}{Raw wage in cents per hour in 1978}
#'   \item{wage80}{Raw wage in cents per hour in 1980}
#'   \item{noint78}{Indicator if non-interviewed in 1978}
#'   \item{noint80}{Indicator if non-interviewed in 1980}
#'   \item{enroll76}{Indicator if enrolled in 1976}
#'   \item{enroll78}{Indicator if enrolled in 1978}
#'   \item{enroll80}{Indicator if enrolled in 1980}
#'   \item{kww}{Knowledge of the World of Work (KWW) score}
#'   \item{iq}{Normed IQ score}
#'   \item{marsta76}{Married and with spouse present in 1976}
#'   \item{marsta78}{Married and with spouse present in 1978}
#'   \item{marsta80}{Married and with spouse present in 1980}
#'   \item{libcrd14}{Indicator if had a library card at home at age 14}
#' }
#'
#' @source Card, D. (1995). "Using Geographic Variation in College Proximity to Estimate the Return to Schooling." In L.N. Christofides, E.K. Grant, and R. Swidinsky (Eds.), *Aspects of Labor Market Behaviour: Essays in Honour of John Vanderkamp*. Toronto: University of Toronto Press. Data available at <http://davidcard.berkeley.edu/data_sets.html>
"card1995"

#' Cox, Hansen, and Jimenez (2004) Dataset on Private Transfers and Income
#'
#' Private transfers, income sources, and household demographics for urban Filipino households. The dataset contains 8,685 observations, with the top 2\% of income and observations with negative income removed.
#'
#' @format A data frame with 8,685 observations and 28 variables.
#' \describe{
#'   \item{tabroad}{Transfers received from abroad}
#'   \item{tdomestic}{Transfers received domestically}
#'   \item{tinkind}{Transfers received in-kind}
#'   \item{tgifts}{Gifts and transfers out (gross)}
#'   \item{income}{Total income}
#'   \item{wage}{Wage and salary income}
#'   \item{entrepreneourial}{Entrepreneurial income}
#'   \item{rental}{Rental income}
#'   \item{interest}{Interest income}
#'   \item{pension}{Pension and retirement income}
#'   \item{dividend}{Dividend income}
#'   \item{primary}{Primary school graduate (dummy)}
#'   \item{somesecondary}{Some secondary school (dummy)}
#'   \item{secondary}{Secondary school graduate (dummy)}
#'   \item{someuniversity}{Some university education (dummy)}
#'   \item{university}{University graduate (dummy)}
#'   \item{age}{Age of household head}
#'   \item{female}{Female-headed household (dummy)}
#'   \item{married}{Married household head (dummy)}
#'   \item{child1}{Number of children aged 1 year or less}
#'   \item{child7}{Number of children aged 1 to 7 years}
#'   \item{child15}{Number of children aged 8 to 15 years}
#'   \item{size}{Household size}
#'   \item{bothwork}{Both husband and wife work (dummy)}
#'   \item{notemployed}{Household head not employed (dummy)}
#'   \item{marriedf}{Married female household head (dummy)}
#'   \item{region}{Region code (0 through 13)}
#'   \item{transfers}{Total transfers (tabroad + tdomestic + tinkind - tgifts)}
#' }
#'
#' @source Cox, D., Hansen, B. E., & Jimenez, E. (2004). "How responsive are private transfers to income? Evidence from a laissez-faire economy." *Journal of Public Economics*, 88(10), 2193-2219.
"chj2004"

#' Card and Krueger (1994) Dataset on Minimum Wages and Employment
#'
#' Employment and wage characteristics in fast-food restaurants across New Jersey and Pennsylvania. The dataset includes information on store characteristics, wages, and employee counts, reorganized so that each row represents one observation per store across two survey waves.
#'
#' @format A data frame with 820 observations and 26 variables, representing 410 stores surveyed twice.
#' \describe{
#'   \item{store}{Unique store ID}
#'   \item{chain}{Fast-food chain}
#'   \item{co_owned}{Company-owned}
#'   \item{state}{State}
#'   \item{southj}{Located in southern New Jersey}
#'   \item{centralj}{Located in central New Jersey}
#'   \item{northj}{Located in northern New Jersey}
#'   \item{pa1}{Located in the northeast suburbs of Philadelphia}
#'   \item{pa2}{Located in the outside northeast suburbs of Philadelphia}
#'   \item{shore}{Located on New Jersey shore}
#'   \item{ncalls}{Number of call-backs (0 if contacted on first call)}
#'   \item{empft}{Number of full-time employees}
#'   \item{emppt}{Number of part-time employees}
#'   \item{nmgrs}{Number of managers/assistant managers}
#'   \item{wage_st}{Starting wage (dollars per hour)}
#'   \item{inctime}{Months to usual first raise}
#'   \item{firstinc}{Usual amount of first raise (dollars per hour)}
#'   \item{meals}{Free/reduced price meal code}
#'   \item{open}{Hour of opening}
#'   \item{hoursopen}{Number of hours open per day}
#'   \item{pricesoda}{Price of medium soda, including tax}
#'   \item{pricefry}{Price of small fries, including tax}
#'   \item{priceentree}{Price of entrée, including tax}
#'   \item{nregisters}{Number of cash registers in store}
#'   \item{nregisters11}{Number of registers open at 11am}
#'   \item{time}{Survey wave indicator}
#' }
#'
#' @source Card, D., & Krueger, A. B. (1994). "Minimum Wages and Employment: A Case Study of the Fast-Food Industry in New Jersey and Pennsylvania." *American Economic Review*. Data available at <http://davidcard.berkeley.edu/data_sets.html>
"ck1994"

#' Card, Mas, and Rothstein (2008) Segregation Dynamics Dataset
#'
#' Demographic, economic, and housing characteristics across U.S. census tracts from 1970 to 2000. The dataset includes variables related to population composition, income, housing, and transportation, reorganized from the original replication files.
#'
#' @format A data frame with 48,643 observations (census tracts) and 46 variables.
#' \describe{
#'   \item{geo2000}{Census tract code}
#'   \item{unem_70}{Unemployment rate for population 16+ years, 1970}
#'   \item{unem_80}{Unemployment rate for population 16+ years, 1980}
#'   \item{unem_90}{Unemployment rate for population 16+ years, 1990}
#'   \item{unem_00}{Unemployment rate for population 16+ years, 2000}
#'   \item{msa}{Metropolitan Statistical Area (MSA) code}
#'   \item{city}{Name of the Metropolitan Statistical Area (MSA)}
#'   \item{pubtran_70}{Fraction of workers using public transportation, 1970}
#'   \item{pubtran_80}{Fraction of workers using public transportation, 1980}
#'   \item{pubtran_90}{Fraction of workers using public transportation, 1990}
#'   \item{pop_70}{Population, 1970}
#'   \item{pop_80}{Population, 1980}
#'   \item{pop_90}{Population, 1990}
#'   \item{pop_00}{Population, 2000}
#'   \item{fr_white_70}{Fraction White, 1970}
#'   \item{fr_white_80}{Fraction White, 1980}
#'   \item{fr_white_90}{Fraction White, 1990}
#'   \item{fr_white_00}{Fraction White, 2000}
#'   \item{fr_min_70}{Fraction Minority, 1970}
#'   \item{fr_min_80}{Fraction Minority, 1980}
#'   \item{fr_min_90}{Fraction Minority, 1990}
#'   \item{fr_min_00}{Fraction Minority, 2000}
#'   \item{chg_white_7080}{Change in White share, 1970-1980}
#'   \item{chg_white_8090}{Change in White share, 1980-1990}
#'   \item{chg_white_9000}{Change in White share, 1990-2000}
#'   \item{chg_min_7080}{Change in Minority share, 1970-1980}
#'   \item{chg_min_8090}{Change in Minority share, 1980-1990}
#'   \item{chg_min_9000}{Change in Minority share, 1990-2000}
#'   \item{chg_pop_7080}{Change in population, 1970-1980}
#'   \item{chg_pop_8090}{Change in population, 1980-1990}
#'   \item{chg_pop_9000}{Change in population, 1990-2000}
#'   \item{samp_70}{Indicator for inclusion in 1970 sample}
#'   \item{samp_80}{Indicator for inclusion in 1980 sample}
#'   \item{samp_90}{Indicator for inclusion in 1990 sample}
#'   \item{faminc_70}{Log of mean family income, 1970}
#'   \item{faminc_80}{Log of mean family income, 1980}
#'   \item{faminc_90}{Log of mean family income, 1990}
#'   \item{vac_70}{Fraction of vacant homes, 1970}
#'   \item{vac_80}{Fraction of vacant homes, 1980}
#'   \item{vac_90}{Fraction of vacant homes, 1990}
#'   \item{rent_70}{Fraction of renter-occupied homes, 1970}
#'   \item{rent_80}{Fraction of renter-occupied homes, 1980}
#'   \item{rent_90}{Fraction of renter-occupied homes, 1990}
#'   \item{oneunit_70}{Fraction of single-unit homes, 1970}
#'   \item{oneunit_80}{Fraction of single-unit homes, 1980}
#'   \item{oneunit_90}{Fraction of single-unit homes, 1990}
#' }
#'
#' @source Card, D., Mas, A., & Rothstein, J. (2008). "Tipping and the Dynamics of Segregation." *Quarterly Journal of Economics*. Data available at <https://berkeley.app.box.com/v/tippingreplication>
"cmr2008"

#' Current Population Survey (March 2009) Labor Force Characteristics Dataset
#'
#' Labor force characteristics for full-time employed U.S. civilians. The sample includes individuals who worked at least 36 hours per week for at least 48 weeks in the past year, excluding military personnel. The dataset contains 50,742 observations and 12 variables.
#'
#' @format A data frame with 50,742 observations and 12 variables.
#' \describe{
#'   \item{age}{Age in years, capped at 85}
#'   \item{female}{Indicator variable for female}
#'   \item{hisp}{Indicator variable for Spanish, Hispanic, or Latino}
#'   \item{education}{Educational attainment}
#'   \item{earnings}{Total annual wage and salary earnings}
#'   \item{hours}{Number of hours worked per week}
#'   \item{week}{Number of weeks worked per year}
#'   \item{union}{1 if a member of a labor union, 0 otherwise}
#'   \item{uncov}{1 if covered by a union or employee association contract, 0 otherwise}
#'   \item{region}{Region of residence}
#'   \item{race}{Race, coded as follows}
#'   \item{marital}{Marital status, coded as follows}
#' }
#'
#' @source Bureau of Labor Statistics, U.S. Census Bureau. March 2009 Current Population Survey. More information available at <https://www.census.gov/cps> and <https://dataferrett.census.gov>.
"cps09mar"

#' Duflo, Dupas, and Kremer (2011) Peer Effects and Teacher Incentives Dataset
#'
#' Randomized evaluation in Kenyan primary schools, focusing on student test scores, demographic information, and class characteristics. The dataset includes 5,795 observations with information on endline and follow-up test scores.
#'
#' @format A data frame with 5,795 observations and 62 variables.
#' \describe{
#'   \item{pupilid}{ID of student}
#'   \item{schoolid}{ID of primary school}
#'   \item{district}{District}
#'   \item{bungoma}{Indicator if school is located in Bungoma District}
#'   \item{division}{Division}
#'   \item{zone}{Zone}
#'   \item{tracking}{Indicator if school is sampled for tracking}
#'   \item{sbm}{Indicator if school is sampled for School-Based Management}
#'   \item{girl}{Sex of student (1 if female, 0 otherwise)}
#'   \item{agetest}{Age of student at time of test}
#'   \item{etpteacher}{Indicator if student is assigned to a contract teacher}
#'   \item{lowstream}{Indicator if student is assigned to lower-ability section (in tracking schools)}
#'   \item{stream_meanpercentile}{Mean standardized percentile of classmates at baseline}
#'   \item{sdstream_std_mark}{Standard deviation of baseline scores within stream (including own score)}
#'   \item{meanstream_std_mark}{Mean of baseline scores within stream (including own score)}
#'   \item{bottomhalf}{Indicator if student is in the bottom half of initial distribution}
#'   \item{tophalf}{Indicator if student is in the top half of initial distribution}
#'   \item{bottomquarter}{Indicator if student is in the bottom quarter of initial distribution}
#'   \item{secondquarter}{Indicator if student is in the second quarter of initial distribution}
#'   \item{thirdquarter}{Indicator if student is in the third quarter of initial distribution}
#'   \item{topquarter}{Indicator if student is in the top quarter of initial distribution}
#'   \item{std_mark}{Student's standardized mark in baseline exam}
#'   \item{percentile}{Student’s percentile in initial distribution}
#'   \item{realpercentile}{Student’s percentile in initial distribution (integer values)}
#'   \item{quantile5p}{Student's 20-quantile at baseline}
#'   \item{attrition}{Indicator if student was absent for endline test (Fall 2006)}
#'   \item{wordscore}{Endline score on word recognition (max: 24)}
#'   \item{sentscore}{Endline score on sentence recognition (max: 40)}
#'   \item{letterscore}{Endline score on letter recognition (max: 70)}
#'   \item{spellscore}{Endline score on spelling (max: 10)}
#'   \item{sentscore24}{Rescaled endline score on sentence recognition (0-24 scale)}
#'   \item{letterscore24}{Rescaled endline score on letter recognition (0-24 scale)}
#'   \item{spellscore24}{Rescaled endline score on spelling (0-24 scale)}
#'   \item{litscore}{Total endline score on literacy test}
#'   \item{additions_score}{Endline score on additions section}
#'   \item{substractions_score}{Endline score on subtractions section}
#'   \item{multiplications_score}{Endline score on multiplications section}
#'   \item{mathscoreraw}{Total endline score on math test}
#'   \item{totalscore}{Total endline score}
#'   \item{rmeanstream_std_baselinemark}{Peers' mean score at baseline, excluding own score}
#'   \item{rsdstream_std_baselinemark}{Peers' standard deviation in baseline score, excluding own score}
#'   \item{rmeanstream_std_total}{Peers' mean total score at endline (Fall 2006)}
#'   \item{rsdstream_std_total}{Peers' standard deviation in total score at endline}
#'   \item{rmeanstream_std_math}{Peers' mean math score at endline}
#'   \item{rsdstream_std_math}{Peers' standard deviation in math score at endline}
#'   \item{rmeanstream_std_lit}{Peers' mean literacy score at endline}
#'   \item{rsdstream_std_lit}{Peers' standard deviation in literacy score at endline}
#'   \item{r2_attrition}{Indicator if student was absent at long-term follow-up test (Fall 2007)}
#'   \item{r2_age}{Age of student at long-term follow-up test}
#'   \item{r2_wordscore}{Score on word recognition at long-term follow-up}
#'   \item{r2_sentscore}{Score on sentence recognition at long-term follow-up}
#'   \item{r2_letterscore}{Score on letter recognition at long-term follow-up}
#'   \item{r2_spellscore}{Score on spelling at long-term follow-up}
#'   \item{r2_sentscore24}{Rescaled score on sentence recognition at long-term follow-up}
#'   \item{r2_letterscore24}{Rescaled score on letter recognition at long-term follow-up}
#'   \item{r2_spellscore24}{Rescaled score on spelling at long-term follow-up}
#'   \item{r2_litscore}{Total literacy score at long-term follow-up}
#'   \item{r2_mathscoreraw}{Total math score at long-term follow-up}
#'   \item{r2_additions_score}{Score on additions section at long-term follow-up}
#'   \item{r2_substractions_score}{Score on subtractions section at long-term follow-up}
#'   \item{r2_multiplications_score}{Score on multiplications section at long-term follow-up}
#'   \item{r2_totalscore}{Total score at long-term follow-up}
#' }
#'
#' @source Duflo, E., Dupas, P., & Kremer, M. (2011). "Peer Effects, Teacher Incentives, and the Impact of Tracking: Evidence from a Randomized Evaluation in Kenya." *American Economic Review*, 101(5), 1739-1774. Data available at <https://dataverse.harvard.edu/dataset.xhtml?persistentId=hdl:1902.1/16787>
"ddk2011"

#' DiTella and Schargrodsky (2004) Police Presence and Crime Dataset
#'
#' Police presence, neighborhood characteristics, and crime levels across city blocks in Buenos Aires. The data spans from April 1994 through December 1994, with monthly observations on 7,884 city blocks.
#'
#' @format A data frame with 7,884 observations and 10 variables.
#' \describe{
#'   \item{block}{Block ID}
#'   \item{barrio}{Neighborhood}
#'   \item{calle}{Street name}
#'   \item{altura}{Street numbering}
#'   \item{sameblock}{Indicator if there is a Jewish institution on the block}
#'   \item{distance}{Number of blocks to the closest Jewish institution}
#'   \item{public}{Indicator if there is a public building on the block}
#'   \item{gasstation}{Indicator if there is a gas station on the block}
#'   \item{bank}{Indicator if there is a bank on the block}
#'   \item{thefts}{Total car thefts on the block during the month}
#'   \item{month}{Month of observation (numeric)}
#'   \item{oneblock}{Indicator if there is a Jewish institution one block away}
#' }
#'
#' @source Di Tella, R., & Schargrodsky, E. (2004). "Do Police Reduce Crime? Estimates Using the Allocation of Police Forces After a Terrorist Attack." *American Economic Review*. Data available at <https://www.aeaweb.org/aer/data/march2004_ditella_data.zip>
"ds2004"

#' McCracken and Ng (2015) FRED-MD Monthly Database for Macroeconomic Research
#'
#' Monthly collection of major U.S. macroeconomic variables maintained by the St. Louis Federal Reserve Bank. This dataset provides key economic indicators for various sectors, including output, labor, housing, consumption, interest rates, and stock markets. Includes data from 1959 to 2017.
#'
#' @format A data frame with 708 observations and 129 variables across various economic indicators.
#' \describe{
#'   \item{rpi}{Real personal income}
#'   \item{w875rx1}{Real personal income excluding transfer receipts}
#'   \item{dpcera3m086sbea}{Real personal consumption expenditures}
#'   \item{cmrmtsplx}{Real manufacturing and trade industries sales}
#'   \item{retailx}{Retail and food services sales}
#'   \item{indpro}{Industrial Production Index}
#'   \item{ipfpnss}{Industrial production: Final products and nonindustrial supplies}
#'   \item{ipfinal}{Industrial Production - Final Products (Market Group)}
#'   \item{ipcongd}{Industrial production: Consumer goods}
#'   \item{ipdcongd}{Industrial production: Durable consumer goods}
#'   \item{ipncongd}{Industrial production: Nondurable consumer goods}
#'   \item{ipbuseq}{Industrial Production - Business Equipment}
#'   \item{ipmat}{Industrial Production - Materials}
#'   \item{ipdmat}{Industrial production: Durable materials}
#'   \item{ipnmat}{Industrial production: Nondurable materials}
#'   \item{ipmansics}{Industrial production: Manufacturing (SIC)}
#'   \item{ipb51222s}{Industrial production: Residential utilities}
#'   \item{ipfuels}{Industrial production: Fuels}
#'   \item{cumfns}{Capacity Utilization for Manufacturing}
#'   \item{hwi}{Help-Wanted Index for the United States}
#'   \item{hwiuratio}{Ratio of Help-Wanted Index to unemployed}
#'   \item{clf16ov}{Civilian labor force, 16 years and over}
#'   \item{ce16ov}{Civilian employment, 16 years and over}
#'   \item{unrate}{Unemployment rate}
#'   \item{uempmean}{Average duration of unemployment (weeks)}
#'   \item{uemplt5}{Civilians unemployed for less than 5 weeks}
#'   \item{uemp5to14}{Civilians unemployed for 5 to 14 weeks}
#'   \item{uemp15ov}{Civilians unemployed for 15 weeks and over}
#'   \item{uemp15t26}{Civilians unemployed for 15 to 26 weeks}
#'   \item{uemp27ov}{Civilians unemployed for 27 weeks and over}
#'   \item{claimsx}{Initial claims for unemployment insurance}
#'   \item{payems}{Total nonfarm payroll employment}
#'   \item{usgood}{Total employment in goods-producing industries}
#'   \item{ces1021000001}{Employment in mining}
#'   \item{uscons}{Employment in construction}
#'   \item{manemp}{Manufacturing employment}
#'   \item{dmanemp}{Employment in durable goods manufacturing}
#'   \item{ndmanemp}{Employment in nondurable goods manufacturing}
#'   \item{srvprd}{Employment in service-providing industries}
#'   \item{ustpu}{Employment in trade, transportation, and utilities}
#'   \item{uswtrade}{Employment in wholesale trade}
#'   \item{ustrade}{Employment in retail trade}
#'   \item{usfire}{Employment in financial activities}
#'   \item{usgovt}{Employment in government}
#'   \item{ces0600000007}{Average weekly hours: Goods-producing industries}
#'   \item{awotman}{Average weekly overtime hours: Manufacturing}
#'   \item{awhman}{Average weekly hours: Manufacturing}
#'   \item{houst}{Housing starts: Total new privately-owned}
#'   \item{houstne}{Housing starts, Northeast region}
#'   \item{houstmw}{Housing starts, Midwest region}
#'   \item{housts}{Housing starts, South region}
#'   \item{houstw}{Housing starts, West region}
#'   \item{permit}{New private housing permits (SAAR)}
#'   \item{permitne}{New private housing permits, Northeast (SAAR)}
#'   \item{permitmw}{New private housing permits, Midwest (SAAR)}
#'   \item{permits}{New private housing permits, South (SAAR)}
#'   \item{permitw}{New private housing permits, West (SAAR)}
#'   \item{acogno}{New orders for consumer goods}
#'   \item{amdmnox}{New orders for durable goods}
#'   \item{andenox}{New orders for nondefense capital goods}
#'   \item{amdmuox}{Unfilled orders for durable goods}
#'   \item{businvx}{Total business inventories}
#'   \item{isratiox}{Inventories to sales ratio}
#'   \item{m1sl}{M1 Money Stock}
#'   \item{m2sl}{M2 Money Stock}
#'   \item{m2real}{Real M2 Money Stock}
#'   \item{ambsl}{Adjusted monetary base}
#'   \item{totresns}{Total reserves of depository institutions}
#'   \item{nonborres}{Non-borrowed reserves}
#'   \item{busloans}{Commercial and industrial loans}
#'   \item{realln}{Real estate loans at all commercial banks}
#'   \item{nonrevsl}{Total non-revolving credit}
#'   \item{conspi}{Consumer credit to personal income ratio}
#'   \item{sp500}{S&P 500 stock index}
#'   \item{spindust}{S&P Industrial Index}
#'   \item{spdivyield}{S&P Dividend Yield}
#'   \item{spperatio}{S&P Price-Earnings Ratio}
#'   \item{fedfunds}{Effective federal funds rate}
#'   \item{cp3mx}{3-Month AA Financial Commercial Paper Rate}
#'   \item{tb3ms}{3-Month Treasury Bill Rate}
#'   \item{tb6ms}{6-Month Treasury Bill Rate}
#'   \item{gs1}{1-Year Treasury constant maturity rate}
#'   \item{gs5}{5-Year Treasury Rate}
#'   \item{gs10}{10-Year Treasury constant maturity rate}
#'   \item{aaa}{Moody's AAA Corporate Bond Yield}
#'   \item{baa}{Moody's BAA Corporate Bond Yield}
#'   \item{compapffx}{Commercial paper rate minus Fed Funds rate spread}
#'   \item{tb3smffm}{3-Month Treasury minus Fed Funds rate spread}
#'   \item{tb6smffm}{6-Month Treasury minus Fed Funds rate spread}
#'   \item{t1yffm}{1-Year Treasury minus Fed Funds rate spread}
#'   \item{t5yffm}{5-Year Treasury minus Fed Funds rate spread}
#'   \item{t10yffm}{10-Year Treasury minus Fed Funds rate spread}
#'   \item{aaaffm}{Moody's AAA Corporate Bond minus Fed Funds rate spread}
#'   \item{baaffm}{Moody's BAA Corporate Bond minus Fed Funds rate spread}
#'   \item{twexmmth}{Trade Weighted U.S. Dollar Index: Major Currencies}
#'   \item{exszusx}{Switzerland/U.S. Foreign Exchange Rate}
#'   \item{exjpusx}{Japan/U.S. Foreign Exchange Rate}
#'   \item{exusukx}{U.S./U.K. Foreign Exchange Rate}
#'   \item{excausx}{Canada/U.S. Foreign Exchange Rate}
#'   \item{wpsfd49207}{PPI for Finished Goods}
#'   \item{wpsfd49502}{PPI for Finished Consumer Goods}
#'   \item{wpsid61}{PPI for Intermediate Materials}
#'   \item{wpsid62}{PPI for Crude Materials}
#'   \item{oilpricex}{Crude Oil Price (Spliced WTI and Cushing)}
#'   \item{ppicmm}{PPI for Metals and Metal Products}
#'   \item{cpiaucsl}{Consumer Price Index for All Urban Consumers}
#'   \item{cpiappsl}{CPI for Apparel}
#'   \item{cpitrnsl}{CPI for Transportation}
#'   \item{cpimedsl}{CPI for Medical Care}
#'   \item{cusr0000sac}{CPI for All Urban Consumers: Commodities}
#'   \item{cusr0000sad}{CPI for All Urban Consumers: Durables}
#'   \item{cusr0000sas}{CPI for All Urban Consumers: Services}
#'   \item{cpiulfsl}{CPI: All items less food and energy}
#'   \item{cusr0000sa0l2}{CPI: Energy}
#'   \item{cusr0000sa0l5}{CPI: Food}
#'   \item{pcepi}{Personal consumption expenditures price index}
#'   \item{ddurrg3m086sbea}{Real durable goods expenditures}
#'   \item{dndgrg3m086sbea}{Real nondurable goods expenditures}
#'   \item{dserrg3m086sbea}{Real services expenditures}
#'   \item{ces0600000008}{Average hourly earnings: Goods-producing industries}
#'   \item{ces2000000008}{Average hourly earnings: Construction}
#'   \item{ces3000000008}{Average hourly earnings: Manufacturing}
#'   \item{umcsentx}{University of Michigan Consumer Sentiment Index}
#'   \item{mzmsl}{MZM Money Stock}
#'   \item{dtcolnvhfnm}{Consumer motor vehicle loans outstanding}
#'   \item{dtcthfnm}{Total consumer loans outstanding}
#'   \item{invest}{Bank Credit at All Commercial Banks - Securities}
#'   \item{vxoclsx}{CBOE S&P 100 Volatility Index}
#'   \item{time}{Time series index}
#' }
#'
#' @details
#' Most of the variables are provided in the most basic format, so transformations are required for typical uses (e.g., for growth rates).
#'
#' @source McCracken, M. W., & Ng, S. (2015). "FRED-MD: A Monthly Database for Macroeconomic Research." Data available at <https://research.stlouisfed.org/econ/mccracken/fred-databases/>
"fred_md"

#' McCracken and Ng (2015) FRED-QD Quarterly Database for Macroeconomic Research
#'
#' Quarterly collection of major U.S. macroeconomic variables maintained by the St. Louis Federal Reserve Bank. This dataset provides key economic indicators across sectors such as output, labor, housing, consumption, interest rates, money, productivity, prices, and exchange rates. Includes data from 1959 onward.
#'
#' @format A data frame with 236 observations and 249 variables:
#' \describe{
#'   \item{gdpc1}{Real Gross Domestic Product}
#'   \item{pcecc96}{Real Personal Consumption Expenditures}
#'   \item{pcdgx}{Real Personal Consumption Expenditures: Durable Goods}
#'   \item{pcesvx}{Real Personal Consumption Expenditures: Services excluding food and energy}
#'   \item{pcndx}{Real Personal Consumption Expenditures: Nondurable Goods}
#'   \item{gpdic1}{Gross Private Domestic Investment}
#'   \item{fpix}{Fixed Private Investment}
#'   \item{y033rc1q027sbeax}{Real Gross Private Domestic Investment: Residential}
#'   \item{pnfix}{Private Nonresidential Fixed Investment}
#'   \item{prfix}{Private Residential Fixed Investment}
#'   \item{a014re1q156nbea}{Government Consumption Expenditures}
#'   \item{gcec1}{Real Government Consumption Expenditures and Gross Investment}
#'   \item{a823rl1q225sbea}{Real Government Spending}
#'   \item{fgrecptx}{Federal Government Current Receipts}
#'   \item{slcex}{State and Local Government Current Expenditures}
#'   \item{expgsc1}{Exports of Goods and Services}
#'   \item{impgsc1}{Imports of Goods and Services}
#'   \item{dpic96}{Disposable Personal Income}
#'   \item{outnfb}{Nonfarm Business Sector: Output}
#'   \item{outbs}{Business Sector Output}
#'   \item{outms}{Manufacturing Sector Output}
#'   \item{indpro}{Industrial Production Index}
#'   \item{ipfinal}{Industrial Production: Final Products}
#'   \item{ipcongd}{Industrial Production: Consumer Goods}
#'   \item{ipmat}{Industrial Production: Materials}
#'   \item{ipdmat}{Industrial Production: Durable Materials}
#'   \item{ipnmat}{Industrial Production: Nondurable Materials}
#'   \item{ipdcongd}{Industrial Production: Durable Consumer Goods}
#'   \item{ipb51110sq}{Industrial Production: Utilities}
#'   \item{ipncongd}{Industrial Production: Nondurable Consumer Goods}
#'   \item{ipbuseq}{Industrial Production: Business Equipment}
#'   \item{ipb51220sq}{Industrial Production: Residential Utilities}
#'   \item{tcu}{Total Capacity Utilization}
#'   \item{cumfns}{Nonfarm Business Sector: Total Compensation}
#'   \item{payems}{Total Nonfarm Payroll Employment}
#'   \item{uspriv}{All Employees: Private Industries}
#'   \item{manemp}{All Employees: Manufacturing}
#'   \item{srvprd}{All Employees: Service-Providing Industries}
#'   \item{usgood}{All Employees: Goods-Producing Industries}
#'   \item{dmanemp}{All Employees: Durable Goods}
#'   \item{ndmanemp}{All Employees: Nondurable Goods}
#'   \item{uscons}{All Employees: Construction}
#'   \item{usehs}{All Employees: Education and Health Services}
#'   \item{usfire}{All Employees: Financial Activities}
#'   \item{usinfo}{All Employees: Information}
#'   \item{uspbs}{All Employees: Professional and Business Services}
#'   \item{uslah}{All Employees: Leisure and Hospitality}
#'   \item{usserv}{All Employees: Other Services}
#'   \item{usmine}{All Employees: Mining and Logging}
#'   \item{ustpu}{All Employees: Trade, Transportation, and Utilities}
#'   \item{usgovt}{All Employees: Government}
#'   \item{ustrade}{All Employees: Retail Trade}
#'   \item{uswtrade}{All Employees: Wholesale Trade}
#'   \item{ces9091000001}{All Employees: State Government Education}
#'   \item{ces9092000001}{All Employees: State Government Excluding Education}
#'   \item{ces9093000001}{All Employees: Local Government Education}
#'   \item{ce16ov}{Civilian Employment: 16 Years and Over}
#'   \item{civpart}{Civilian Labor Force Participation Rate}
#'   \item{unrate}{Civilian Unemployment Rate}
#'   \item{unratestx}{Unemployment Rate for State}
#'   \item{unrateltx}{Unemployment Rate for Less than High School}
#'   \item{lns14000012}{Unemployment Rate: Hispanic or Latino}
#'   \item{lns14000025}{Unemployment Rate: 25-54 Years}
#'   \item{lns14000026}{Unemployment Rate: 55 Years and Over}
#'   \item{uemplt5}{Civilians Unemployed for Less Than 5 Weeks}
#'   \item{uemp5to14}{Civilians Unemployed for 5 to 14 Weeks}
#'   \item{uemp15t26}{Civilians Unemployed for 15 to 26 Weeks}
#'   \item{uemp27ov}{Civilians Unemployed for 27 Weeks and Over}
#'   \item{lns13023621}{Unemployment Rate for Bachelor’s Degree or Higher}
#'   \item{lns13023557}{Unemployment Rate for Associate Degree Holders}
#'   \item{lns13023705}{Unemployment Rate for Master’s Degree Holders}
#'   \item{lns13023569}{Unemployment Rate for High School Graduates}
#'   \item{lns12032194}{Labor Force Participation Rate for Bachelor’s Degree}
#'   \item{hoabs}{Housing Starts: Buildings with 5 or More Units}
#'   \item{hoams}{Housing Starts: All Buildings}
#'   \item{hoanbs}{Nonfarm Business Sector: Hours Worked}
#'   \item{awhman}{Average Weekly Hours: Manufacturing}
#'   \item{awhnonag}{Average Weekly Hours: Nonagricultural Industries}
#'   \item{awotman}{Average Weekly Overtime Hours: Manufacturing}
#'   \item{hwix}{Help-Wanted Index}
#'   \item{houst}{Housing Starts: Total}
#'   \item{houst5f}{Housing Starts: 5-Unit Structures or More}
#'   \item{permit}{New Private Housing Permits Authorized}
#'   \item{houstmw}{Housing Starts: Midwest Region}
#'   \item{houstne}{Housing Starts: Northeast Region}
#'   \item{housts}{Housing Starts: South Region}
#'   \item{houstw}{Housing Starts: West Region}
#'   \item{cmrmtsplx}{Manufacturing and Trade Sales}
#'   \item{rsafsx}{Residential Fixed Assets: Structures}
#'   \item{amdmnox}{New Orders for Durable Goods}
#'   \item{acognox}{New Orders: Consumer Goods and Materials}
#'   \item{amdmuox}{Unfilled Orders: Durable Goods Industries}
#'   \item{andenox}{Nondefense Capital Goods Excluding Aircraft}
#'   \item{invcqrmtspl}{Inventories: Manufacturing and Trade Industries}
#'   \item{pcectpi}{Personal Consumption Expenditures Chain-Type Price Index}
#'   \item{pcepilfe}{PCE: Food and Energy}
#'   \item{gdpctpi}{Gross Domestic Product Chain-Type Price Index}
#'   \item{gpdictpi}{Gross Private Domestic Investment Chain-Type Price Index}
#'   \item{ipdbs}{Industrial Production: Business Supplies}
#'   \item{dgdsrg3q086sbea}{Durable Goods Expenditures}
#'   \item{ddurrg3q086sbea}{Durable Goods Consumption Expenditures}
#'   \item{dserrg3q086sbea}{Services Expenditures}
#'   \item{dndgrg3q086sbea}{Nondurable Goods Expenditures}
#'   \item{dhcerg3q086sbea}{Health Care Expenditures}
#'   \item{dmotrg3q086sbea}{Motor Vehicle Expenditures}
#'   \item{dfdhrg3q086sbea}{Food at Home Expenditures}
#'   \item{dreqrg3q086sbea}{Recreational Goods Expenditures}
#'   \item{dodgrg3q086sbea}{Other Durable Goods Expenditures}
#'   \item{dfxarg3q086sbea}{Furniture and Fixtures Expenditures}
#'   \item{dclorg3q086sbea}{Clothing and Footwear Expenditures}
#'   \item{dgoerg3q086sbea}{Goods Expenditures}
#'   \item{dongrg3q086sbea}{Nondurable Goods Consumption Expenditures}
#'   \item{dhutrg3q086sbea}{Household Utilities Expenditures}
#'   \item{dhlcrg3q086sbea}{Household Cleaning Expenditures}
#'   \item{dtrsrg3q086sbea}{Transportation Services Expenditures}
#'   \item{drcarg3q086sbea}{Recreational Services Expenditures}
#'   \item{dfsarg3q086sbea}{Food Services and Accommodations}
#'   \item{difsrg3q086sbea}{Insurance Services Expenditures}
#'   \item{dotsrg3q086sbea}{Other Services Expenditures}
#'   \item{cpiaucsl}{Consumer Price Index for All Urban Consumers: All Items}
#'   \item{cpilfesl}{Consumer Price Index for All Urban Consumers: All Items Less Food and Energy}
#'   \item{wpsfd49207}{Producer Price Index by Commodity for Crude Materials}
#'   \item{ppiaco}{Producer Price Index by Commodity}
#'   \item{wpsfd49502}{Producer Price Index by Commodity for Intermediate Materials}
#'   \item{wpsfd4111}{Producer Price Index by Commodity for Finished Goods}
#'   \item{ppiidc}{Producer Price Index: Industrial Commodities}
#'   \item{wpsid61}{Producer Price Index for Finished Goods}
#'   \item{wpu0531}{Producer Price Index for Gasoline}
#'   \item{wpu0561}{Producer Price Index for Fuel Oil}
#'   \item{oilpricex}{Crude Oil Prices}
#'   \item{ahetpix}{Average Hourly Earnings of Production Employees}
#'   \item{ces2000000008x}{Average Hourly Earnings: Construction}
#'   \item{ces3000000008x}{Average Hourly Earnings: Manufacturing}
#'   \item{comprms}{Compensation per Hour: Manufacturing}
#'   \item{comprnfb}{Compensation per Hour: Nonfarm Business}
#'   \item{rcphbs}{Real Compensation Per Hour}
#'   \item{ophmfg}{Output per Hour: Manufacturing}
#'   \item{ophnfb}{Output per Hour: Nonfarm Business}
#'   \item{ophpbs}{Output per Hour: Private Business}
#'   \item{ulcbs}{Unit Labor Cost: Business Sector}
#'   \item{ulcmfg}{Unit Labor Cost: Manufacturing}
#'   \item{ulcnfb}{Unit Labor Cost: Nonfarm Business}
#'   \item{unlpnbs}{Unit Nonlabor Payments}
#'   \item{fedfunds}{Effective Federal Funds Rate}
#'   \item{tb3ms}{3-Month Treasury Bill Secondary Market Rate}
#'   \item{tb6ms}{6-Month Treasury Bill Secondary Market Rate}
#'   \item{gs1}{1-Year Treasury Constant Maturity Rate}
#'   \item{gs10}{10-Year Treasury Constant Maturity Rate}
#'   \item{mortgage30us}{30-Year Fixed Rate Mortgage Average}
#'   \item{aaa}{Moody's AAA Corporate Bond Yield}
#'   \item{baa}{Moody's BAA Corporate Bond Yield}
#'   \item{baa10ym}{Baa Rated Corporate Bond Yield Spread Over 10-Year Treasury}
#'   \item{mortg10yrx}{10-Year Treasury Note Average Yield}
#'   \item{tb6m3mx}{6-Month Treasury Minus 3-Month Treasury Spread}
#'   \item{gs1tb3mx}{1-Year Treasury Minus 3-Month Treasury Spread}
#'   \item{gs10tb3mx}{10-Year Treasury Minus 3-Month Treasury Spread}
#'   \item{cpf3mtb3mx}{Commercial Paper Minus 3-Month Treasury Spread}
#'   \item{ambslrealx}{Adjusted Monetary Base}
#'   \item{imfslx}{Monetary Base, Not Seasonally Adjusted}
#'   \item{m1realx}{Real M1 Money Stock}
#'   \item{m2realx}{Real M2 Money Stock}
#'   \item{mzmrealx}{MZM Money Stock}
#'   \item{busloansx}{Commercial and Industrial Loans at All Commercial Banks}
#'   \item{consumerx}{Consumer Credit Outstanding}
#'   \item{nonrevslx}{Nonrevolving Consumer Credit}
#'   \item{reallnx}{Real Estate Loans}
#'   \item{revolslx}{Revolving Consumer Credit}
#'   \item{totalslx}{Total Loans and Leases}
#'   \item{driwcil}{Deposits and Reserves in Financial Institutions}
#'   \item{tabshnox}{Total Assets at Banks}
#'   \item{tlbshnox}{Total Liabilities at Banks}
#'   \item{liabpix}{Liabilities}
#'   \item{tnwbshnox}{Total Net Worth of Households and Nonprofits}
#'   \item{nwpix}{Net Worth at Market Value}
#'   \item{taresax}{Treasury Assets and Reserves}
#'   \item{hnoremq027sx}{Household Net Worth}
#'   \item{tfaabshnox}{Total Financial Assets}
#'   \item{vxoclsx}{CBOE S&P 100 Volatility Index}
#'   \item{ussthpi}{All-Transactions House Price Index for the United States}
#'   \item{spcs10rsa}{S&P/Case-Shiller 10-City Composite Home Price Index}
#'   \item{spcs20rsa}{S&P/Case-Shiller 20-City Composite Home Price Index}
#'   \item{twexmmth}{Trade Weighted U.S. Dollar Index: Major Currencies}
#'   \item{exuseu}{Exchange Rate: U.S. Dollar to Euro}
#'   \item{exszusx}{Switzerland / U.S. Foreign Exchange Rate}
#'   \item{exjpusx}{Japan / U.S. Foreign Exchange Rate}
#'   \item{exusukx}{U.K. / U.S. Foreign Exchange Rate}
#'   \item{excausx}{Canada / U.S. Foreign Exchange Rate}
#'   \item{umcsentx}{University of Michigan: Consumer Sentiment Index}
#'   \item{usepuindxm}{U.S. Economic Policy Uncertainty Index}
#'   \item{b020re1q156nbea}{Government Current Expenditures}
#'   \item{b021re1q156nbea}{Net Government Saving}
#'   \item{gfdegdq188s}{Federal Debt: Total Public Debt}
#'   \item{gfdebtnx}{Gross Federal Debt as Percent of GDP}
#'   \item{ipmansics}{Industrial Production: Manufacturing}
#'   \item{ipb51222s}{Industrial Production: Fuels}
#'   \item{ipfuels}{Industrial Production: Fuels}
#'   \item{uempmean}{Average Duration of Unemployment}
#'   \item{ces0600000007}{Average Weekly Hours: Goods-Producing Industries}
#'   \item{totresns}{Total Reserves of Depository Institutions}
#'   \item{nonborres}{Nonborrowed Reserves of Depository Institutions}
#'   \item{gs5}{5-Year Treasury Constant Maturity Rate}
#'   \item{tb3smffm}{3-Month Treasury Minus Fed Funds Rate Spread}
#'   \item{t5yffm}{5-Year Treasury Minus Fed Funds Rate Spread}
#'   \item{aaaffm}{Moody's AAA Corporate Bond Minus Fed Funds Rate Spread}
#'   \item{wpsid62}{Producer Price Index by Commodity for Finished Goods: Consumer}
#'   \item{ppicmm}{Producer Price Index: Commodities}
#'   \item{cpiappsl}{Consumer Price Index for All Urban Consumers}
#'   \item{cpitrnsl}{CPI: Transportation}
#'   \item{cpimedsl}{CPI: Medical Care}
#'   \item{cusr0000sac}{CPI for All Urban Consumers: Commodities}
#'   \item{cusr0000sad}{CPI for All Urban Consumers: Durables}
#'   \item{cusr0000sas}{CPI for All Urban Consumers: Services}
#'   \item{cpiulfsl}{CPI: All Items Less Food and Energy}
#'   \item{cusr0000sa0l2}{CPI: Energy}
#'   \item{cusr0000sa0l5}{CPI: Food}
#'   \item{ces0600000008}{Average Hourly Earnings: Goods-Producing Industries}
#'   \item{dtcolnvhfnm}{Consumer Motor Vehicle Loans Outstanding}
#'   \item{dtcthfnm}{Total Consumer Loans Outstanding}
#'   \item{invest}{Investment in Bank Credit}
#'   \item{hwiuratiox}{Help-Wanted Index to Unemployed Ratio}
#'   \item{claimsx}{Initial Claims for Unemployment Insurance}
#'   \item{businvx}{Total Business Inventories}
#'   \item{isratiox}{Inventory-to-Sales Ratio}
#'   \item{conspix}{Consumer Credit to Personal Income Ratio}
#'   \item{cp3m}{3-Month Commercial Paper Rate}
#'   \item{compapff}{Commercial Paper Minus Fed Funds Rate Spread}
#'   \item{permitne}{New Private Housing Permits Authorized: Northeast}
#'   \item{permitmw}{New Private Housing Permits Authorized: Midwest}
#'   \item{permits}{New Private Housing Permits Authorized}
#'   \item{permitw}{New Private Housing Permits Authorized: West}
#'   \item{nikkei225}{Nikkei 225 Stock Index}
#'   \item{nasdaqcom}{NASDAQ Composite Index}
#'   \item{cusr0000sehc}{CPI for All Urban Consumers: Education}
#'   \item{tlbsnncbx}{Total Liabilities for Nonfinancial Corporate Business}
#'   \item{tlbsnncbbdix}{Total Liabilities for Nonfinancial Corporate Business, Billion Dollars}
#'   \item{ttaabsnncbx}{Total Assets for Nonfinancial Corporate Business}
#'   \item{tnwmvbsnncbx}{Total Net Worth for Nonfinancial Corporate Business}
#'   \item{tnwmvbsnncbbdix}{Total Net Worth for Nonfinancial Corporate Business, Billion Dollars}
#'   \item{tlbsnnbx}{Total Liabilities for Nonfinancial Noncorporate Business}
#'   \item{tlbsnnbbdix}{Total Liabilities for Nonfinancial Noncorporate Business, Billion Dollars}
#'   \item{tabsnnbx}{Total Assets for Nonfinancial Noncorporate Business}
#'   \item{tnwbsnnbx}{Total Net Worth for Nonfinancial Noncorporate Business}
#'   \item{tnwbsnnbbdix}{Total Net Worth for Nonfinancial Noncorporate Business, Billion Dollars}
#'   \item{cncfx}{Real Personal Consumption Expenditures: Non-Durables and Durables}
#'   \item{sp500}{S&P 500 Index}
#'   \item{spindust}{S&P Industrial Index}
#'   \item{spdivyield}{S&P Dividend Yield}
#'   \item{spperatio}{S&P Price-Earnings Ratio}
#'   \item{time}{Time Period}
#' }
#'
#' @details
#' Most of the variables are provided in the most basic format, so transformations are required for typical uses (e.g., for growth rates).
#'
#' @source McCracken, M. W., & Ng, S. "FRED-QD: A Quarterly Database for Macroeconomic Research." Data available at <https://research.stlouisfed.org/econ/mccracken/fred-databases/>
"fred_qd"

#' Hall and Hall (1993) Dataset Documentation
#'
#' Detailed financial metrics for U.S. corporations, focusing on investment, financial ratios, and stock performance. Includes essential economic indicators that capture corporate financial health and performance for each year. Data spans multiple years and includes various financial metrics essential for corporate analysis.
#'
#' @format A data frame with 27,566 observations and 23 variables:
#' \describe{
#'   \item{cusip}{Committee on Uniform Security Identification Procedures (CUSIP) code, identifying each firm. The first six digits represent the firm code number.}
#'   \item{year}{The year of the data, represented as a two-digit value.}
#'   \item{pstar}{The present discounted value (PDV) of dividends anticipated on a firm's common stock in the future, discounted at the risk-free rate plus an overall risk premium (approximately 4 percent).}
#'   \item{z0}{The first term in the linearized expression for z (as outlined in Appendix A of the paper).}
#'   \item{pricef}{The actual price of common stock at the end of the fiscal year.}
#'   \item{divf}{The dividends paid during the fiscal year.}
#'   \item{rnda}{Research and development (R&D) expenditure to assets ratio.}
#'   \item{adva}{Advertising expenditure to assets ratio.}
#'   \item{fyr}{The month in which the fiscal year ends, ranging from 1 (January) to 12 (December).}
#'   \item{ardsic}{A modified 2.5-digit Standard Industrial Classification (SIC) code, roughly similar to those used in Bound, Cummins, Griliches, Hall, and Jaffe (1984) in "Who Does R&D and Who Patents?"}
#'   \item{exityr}{The year the firm exited from the sample.}
#'   \item{inva}{Investment to assets ratio, reflecting the proportion of investment relative to the company's total assets.}
#'   \item{cfa}{Cash flow to assets ratio, indicating the cash-generating efficiency of the assets.}
#'   \item{debta}{Long-term debt to assets ratio, a measure of a company's financial leverage.}
#'   \item{sales}{Annual sales revenue (in millions of dollars).}
#'   \item{netcap}{The adjusted book value of assets, accounting for plant, property, equipment, inventories, and other components, with inflation adjustments as per Brainard, Shoven, and Weiss's approach.}
#'   \item{earnsh}{Reported earnings per share (EPS).}
#'   \item{nyseamex}{Indicator variable set to 1 if the firm is listed on the New York Stock Exchange (NYSE) or American Stock Exchange (AMEX), otherwise 0.}
#'   \item{h0}{Instrumental variable as specified in equation B-5 of the referenced paper.}
#'   \item{h1}{Another instrumental variable as specified in equation B-5 of the referenced paper.}
#'   \item{vala}{Total market value to assets ratio, often referred to as Tobin's Q.}
#'   \item{oneper}{One-period rate of return, adjusted for non-diversifiable discounting.}
#'   \item{sharef}{Shares of common stock outstanding, represented in thousands.}
#' }
#'
#' @details
#' All values are nominal and in millions of dollars unless stated otherwise. Stock values are end-of-year.
#'
#' @source Bronwyn H. Hall and Robert E. Hall, "The Value and Performance of U.S. Corporations," Brookings Papers on Economic Activity, 1993 (1), 1-50. Data sourced from <https://eml.berkeley.edu/~bhhall/bhdata.html>.
"invest1993"

#' Kilian (2009) Oil Market Dataset
#'
#' Monthly observations from February 1973 to December 2007 on global oil production, economic activity, and real crude oil prices.
#'
#' @format A data frame with 3 observations and 4 variables:
#' \describe{
#'   \item{time}{Time index in monthly format (e.g., 1973m2 for February 1973)}
#'   \item{oil}{Percentage change in global oil production. Calculated as the log difference of world crude oil production (in millions of barrels per day, monthly average). Source: U.S. Department of Energy.}
#'   \item{output}{Global real economic activity index, derived from single-voyage ocean freight rates for dry cargo. Index is in logs and normalized.}
#'   \item{price}{Real price of crude oil, based on the refiner acquisition cost of imported crude oil, deflated by the U.S. CPI. Data source: U.S. Department of Energy.}
#' }
#'
#' @details The dataset provides monthly indices to help analyze the effects of various oil price shocks, with specific distinctions between demand and supply drivers in the oil market.
#'
#' @source Kilian, Lutz. 2009. "Not All Oil Price Shocks Are Alike: Disentangling Demand and Supply Shocks in the Crude Oil Market." American Economic Review, 1053-1069. Data available from <https://www.openicpsr.org/openicpsr/project/113299/version/V1/view>
"kilian2009"

#' Koppelman, Forinash and Wen ModeCanada Data
#'
#' A subset of ModeCanada, initially developed by VIA Rail in 1989 to estimate the demand for high-speed rail in the Toronto-Montreal corridor. Collected as part of a Passenger Review for business travelers, the dataset includes information on mode choice and trip characteristics, focusing on choices among train, air, bus, and car options. This dataset has been balanced to only include cases where all four travel modes are recorded.
#'
#' @format A data frame with 11,116 observations on 2,779 individual cases (travelers) and the following variables:
#' \describe{
#'   \item{case}{Unique identifier for each individual traveler.}
#'   \item{alternative}{Mode of transportation chosen by the traveler: Train, Air, Bus, or Car.}
#'   \item{choice}{Selected mode indicator variable.}
#'   \item{distance}{Total trip distance in kilometers. This variable is case-specific.}
#'   \item{cost}{Trip cost in Canadian dollars (CAD). This variable varies by case and alternative.}
#'   \item{intime}{In-vehicle travel time in minutes. This variable varies by case and alternative.}
#'   \item{outtime}{Out-of-vehicle travel time in minutes. This variable varies by case and alternative.}
#'   \item{income}{Household income of the traveler, recorded in categories. This variable is case-specific.}
#'   \item{urban}{Large city indicator variable (case-specific).}
#' }
#'
#' @details The dataset allows for analysis of intercity mode choices based on traveler and trip characteristics, enabling insights into factors influencing the selection of train, air, bus, or car travel. This abridged version is included in the `mlogit` R package and has been used in several transportation research papers for modeling and estimation of choice preferences.
#'
#' @source
#' - Forinash, C. V., & Koppelman, F. S. (1993). "Application and interpretation of nested logit models of intercity mode choice." *Transportation Research Record*, 1413, 98-106.
#' - Koppelman, F. S., & Wen, C. H. (2000). "The paired combinatorial logit model: properties, estimation, and application." *Transportation Research Part B*, 34, 75-89.
#' - Wen, C. H., & Koppelman, F. S. (2001). "The generalized nested logit model." *Transportation Research Part B*, 35, 627-641.
"koppelman"

#' Ludwig and Miller (2007) Impact of Head Start Program on Children's Life Chances
#'
#' Examines the effect of the Head Start program on child mortality and other socioeconomic indicators across U.S. counties.
#' Includes variables on poverty rates, mortality rates by age and cause, and census data from 1960 for 2,783 U.S. counties.
#'
#' @format A data frame with 2,783 rows and 17 variables:
#' \describe{
#'   \item{state}{State name.}
#'   \item{povrate60}{County poverty rate in 1960 (percent).}
#'   \item{mort_age59_related_posths}{Mortality rate for ages 5-9 from Head Start-related causes, 1973-1983.}
#'   \item{mort_age59_injury_posths}{Mortality rate for ages 5-9 from injuries, 1973-1983.}
#'   \item{mort_age59_all_posths}{Mortality rate for ages 5-9 from all causes, 1973-1983.}
#'   \item{mort_age25plus_related_posths}{Mortality rate for ages 25+ from Head Start-related causes, 1973-1983.}
#'   \item{mort_age25plus_injuries_posths}{Mortality rate for ages 25+ from injuries, 1973-1983.}
#'   \item{mort_age59_related_prehs}{Mortality rate for ages 5-9 from Head Start-related causes, 1959-1964.}
#'   \item{census1960_pop}{County population according to the 1960 Census.}
#'   \item{census1960_pctsch1417}{Percentage of population aged 14-17 attending school, 1960.}
#'   \item{census1960_pctsch534}{Percentage of population aged 5-34 attending school, 1960.}
#'   \item{census1960_pctsch25plus}{Percentage of population aged 25+ with a high school education or more, 1960.}
#'   \item{census1960_pop1417}{Population aged 14-17, 1960.}
#'   \item{census1960_pop534}{Population aged 5-34, 1960.}
#'   \item{census1960_pop25plus}{Population aged 25+, 1960.}
#'   \item{census1960_pcturban}{Percentage of urban population, 1960.}
#'   \item{census1960_pctblack}{Percentage of Black population, 1960.}
#' }
#'
#' @details Abridged version of "headstart.dta" downloaded from \url{https://github.com/rdpackages-replication/CTV_2017_JPAM} which is a subset of that used by Ludwig and Miller and was provided for replication associated with Cattaneo, Titiunik, and Vazquez-Bare. Counties were deleted for which `povrate60` or `mort_age59_related_posths` were missing.
#'
#' @source
#' - Ludwig, J., & Miller, D. L. (2007). "Does Head Start improve children's life chances? Evidence from a regression discontinuity design," \emph{Quarterly Journal of Economics} 122(1), 159-1208.
#' - Matias D. Cattaneo, Rocio Titiunik, and Gonzalo Vazquez-Bare (2017) "Comparing inference approaches for RD designs: A reexamination of the effect of head start on child mortality," \emph{Journal of Policy Analysis and Management}, 36, 643-681.'
"lm2007"

#' Mankiw, Romer and Well (1992) Dataset for Economic Growth Analysis
#'
#' Economic indicators relevant to analyzing cross-country economic growth. Covers data from 1960 to 1985 across 121 observations, with variables that encompass GDP, population growth, and investment rates among others.
#'
#' @format A data frame with 121 observations and 10 variables:
#' \describe{
#'   \item{country}{Full country name}
#'   \item{n}{Indicator for all data is available and oil production is not the dominant industry}
#'   \item{i}{Indicator variable for the population in 1960 was greater than one million}
#'   \item{o}{Indicator variable for OECD country}
#'   \item{y60}{Real GDP per working-age person in 1960, in dollars}
#'   \item{y85}{Real GDP per working-age person in 1985, in dollars}
#'   \item{y_growth}{Yearly average growth rate (percentage) of real GDP for 1960-1985}
#'   \item{pop_growth}{Yearly average growth rate (percentage) of the working-age population for 1960-1985}
#'   \item{invest}{Share (percentage) of real investment (including government investment) in real GDP, averaged for 1960-1985}
#'   \item{school}{Fraction (percentage) of the eligible population enrolled in secondary school, multiplied by the fraction (percentage) of the working-age population that is school-aged (15 to 64), averaged for 1960-1985}
#' }
#'
#' @details The data were sourced from the World Bank's World Tables and the UNESCO yearbook, with indicators of working-age population growth, investment share, and school enrollment. It is intended for use in studies of cross-country economic growth patterns.
#'
#' @source Mankiw, N.G., Romer, D., & Weil, D.N. (1992). "A Contribution to the Empirics of Economic Growth." \emph{The Quarterly Journal of Economics}.
"mrw1992"

#' Nerlove (1963) Electricity Supply Dataset
#'
#' Costs and production for 145 American electric companies in 1955.
#'
#' @format A data frame with 145 observations on the following variables:
#' \describe{
#'   \item{cost}{Total Cost in million dollars}
#'   \item{output}{Electricity output in billion kilowatt-hours (kWh)}
#'   \item{plabor}{Unit price of labor, represented as wage rate in dollars per hour}
#'   \item{pcapital}{Unit price of capital, given as an index}
#'   \item{pfuel}{Unit price of fuel in cents per million BTU (British Thermal Units)}
#' }
#'
#' @source Nerlove, Marc. "Returns to Scale in Electricity Supply" (1963), *Measurement in Economics*, C. Christ et al., eds.
"nerlove1963"

#' Papageorgiou, Saam and Schulte (2017) Substitution between Clean and Dirty Energy Inputs Dataset
#'
#' Electricity production, capacity, and fuel input across clean and dirty energy technologies for 26 countries over the period 1995-2009.
#'
#' @format A data frame with observations across multiple countries and years, with the following variables:
#' \describe{
#'   \item{country}{Country name}
#'   \item{year}{Year (1995-2009)}
#'   \item{eg_total}{Net electricity production (GWh) for all plants}
#'   \item{ec_total}{Net electrical capacity of all plants (MW)}
#'   \item{ec_c}{Net installed clean generation capacity (MW)}
#'   \item{ec_d}{Net installed dirty generation capacity (MW)}
#'   \item{fu_c}{Fuel input for clean electricity-generating technologies (TJ)}
#'   \item{fu_d}{Fuel input for dirty electricity-generating technologies (TJ)}
#'   \item{fu_total}{Total fuel input for electricity-generating technologies (TJ)}
#'   \item{ec_c_alt}{Alternative capital proxy: Capital stock associated with clean technologies (EIA-based)}
#'   \item{ec_d_alt}{Alternative capital proxy: Capital stock associated with dirty technologies (EIA-based)}
#' }
#'
#' @details
#' Data extracted from the file "electricity_sector.dta" and sourced from the *REStat* journal website and *Dataverse* repository.
#'
#' @source
#' Chris Papageorgiou, Marianne Saam, and Patrick Schulte (2017). *Substitution between clean and dirty energy inputs: A macroeconomic perspective*. The Review of Economics and Statistics, 281-290. Available from Harvard Dataverse: \url{https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/67QCH2}
"pss2017"

#' Reinhart and Rogoff (2010) Growth in a Time of Debt Dataset
#'
#' United States' economic indicators, with a focus on the relationship between debt levels and economic growth. The data cover a broad historical period from 1791 to 2009, extracted from the source files on Ken Rogoff's website.
#'
#' @format A data frame with observations on the following variables:
#' \describe{
#'   \item{year}{Calendar year, ranging from 1791 to 2009}
#'   \item{debt}{Debt-to-GDP ratio, expressed as a percentage}
#'   \item{gdp}{Annual GDP growth rate, expressed as a percentage}
#'   \item{inflation}{Annual inflation rate, expressed as a percentage}
#' }
#'
#' @source Reinhart, C. M., & Rogoff, K. S. (2010). "Growth in a Time of Debt." *American Economic Review: Papers and Proceedings*, 573-578. Data available at [Ken Rogoff’s website](https://scholar.harvard.edu/files/rogoff/files/41_data.xlsx).
"rr2010"
