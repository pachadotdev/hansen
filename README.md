
<!-- README.md is generated from README.Rmd. Please edit that file -->

# hansen <img src="man/figures/logo.svg" align="right" height="139" alt="" />

<!-- badges: start -->

<!-- badges: end -->

The goal of hansen is to provide the datasets used in the exercises of
the book *Econometrics* by Bruce E. Hansen following the Tidy Data
principles.

## Installation

You can install the development version of hansen like so:

``` r
remotes::install_github("pachadotdev/hansen")
```

## Usage

As an example, here is how to get the description for the data from
Mankiw, Romer and Well (1992), which is a dataset for economic growth
analysis:

``` r
library(hansen)

str(mrw1992)
#> Classes 'tbl_df', 'tbl' and 'data.frame':    121 obs. of  10 variables:
#>  $ country   : chr  "Algeria" "Angola" "Benin" "Botswana" ...
#>   ..- attr(*, "label")= chr "country name"
#>  $ n         : Factor w/ 2 levels "No","Yes": 2 2 2 2 2 2 2 2 2 2 ...
#>  $ i         : Factor w/ 2 levels "No","Yes": 2 1 1 2 1 1 2 1 1 1 ...
#>  $ o         : Factor w/ 2 levels "No","Yes": 1 1 1 1 1 1 1 1 1 1 ...
#>  $ y60       : num  2485 1588 1116 959 529 ...
#>   ..- attr(*, "label")= chr "GDP60"
#>  $ y85       : num  4371 1171 1071 3671 857 ...
#>   ..- attr(*, "label")= chr "GDP85"
#>  $ y_growth  : num  4.8 0.8 2.2 8.6 2.9 ...
#>   ..- attr(*, "label")= chr "GDP growth"
#>  $ pop_growth: num  2.6 2.1 2.4 3.2 0.9 ...
#>   ..- attr(*, "label")= chr "pop growth"
#>  $ invest    : num  24.1 5.8 10.8 28.3 12.7 ...
#>   ..- attr(*, "label")= chr "Invest"
#>  $ school    : num  4.5 1.8 1.8 2.9 0.4 ...
```
