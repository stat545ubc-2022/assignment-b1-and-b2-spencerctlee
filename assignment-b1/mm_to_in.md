Stat 545B Assignment B1
================

# Milimeter to Inches Conversion Function

``` r
suppressPackageStartupMessages(library(devtools)) # for devtools package
suppressPackageStartupMessages(library(dplyr)) # for data maniupulation
suppressPackageStartupMessages(library(testthat)) # for testing functions
suppressPackageStartupMessages(library(digest)) #digests outputs for testing 
suppressPackageStartupMessages(library(palmerpenguins)) # for testing a sample tibble
```

Exercise 1

Function - Exercises 1 and 2

``` r
#' @description The purpose of this function is to convert mm into inches, by the conversion factor of 1/254.
#'
#' @param mm measurement in mm provided.
#' 
#' @return unit conversion of mm into inches.
#' @export 
#'
#' @examples

mm_to_in <- function(mm) {
  inch = mm/254
  return(inch)
}
```

Exercise 3

Examples (Exercise 3)

<p>
The following demonstrates an example unit conversion using manual input
of 200mm
<p>

``` r
mm_to_in(200)
```

    ## [1] 0.7874016

<p>
This shows an example using a unit conversion on a column in a dataframe
(using penguins and flipper_length_mm)
<p>

``` r
a <- penguins %>%
  mutate(mm_to_in(flipper_length_mm))
a
```

    ## # A tibble: 344 × 9
    ##    species island    bill_length_mm bill_d…¹ flipp…² body_…³ sex    year mm_to…⁴
    ##    <fct>   <fct>              <dbl>    <dbl>   <int>   <int> <fct> <int>   <dbl>
    ##  1 Adelie  Torgersen           39.1     18.7     181    3750 male   2007   0.713
    ##  2 Adelie  Torgersen           39.5     17.4     186    3800 fema…  2007   0.732
    ##  3 Adelie  Torgersen           40.3     18       195    3250 fema…  2007   0.768
    ##  4 Adelie  Torgersen           NA       NA        NA      NA <NA>   2007  NA    
    ##  5 Adelie  Torgersen           36.7     19.3     193    3450 fema…  2007   0.760
    ##  6 Adelie  Torgersen           39.3     20.6     190    3650 male   2007   0.748
    ##  7 Adelie  Torgersen           38.9     17.8     181    3625 fema…  2007   0.713
    ##  8 Adelie  Torgersen           39.2     19.6     195    4675 male   2007   0.768
    ##  9 Adelie  Torgersen           34.1     18.1     193    3475 <NA>   2007   0.760
    ## 10 Adelie  Torgersen           42       20.2     190    4250 <NA>   2007   0.748
    ## # … with 334 more rows, and abbreviated variable names ¹​bill_depth_mm,
    ## #   ²​flipper_length_mm, ³​body_mass_g, ⁴​`mm_to_in(flipper_length_mm)`

<p>
This shows error when trying to convert string values with the function
<p>

``` r
mm_to_in(fail)
```

    ## Error in mm/254: non-numeric argument to binary operator

Exercise 4

Test Function (Exercise 4)

``` r
mm_test_1 <- digest(mm_to_in(124))
mm_test_2 <- digest(mm_to_in(121.12))
mm_test_3 <- digest(mm_to_in(NA))
```

``` r
test_that("Testing mm_to_in function",{
  expect_equal(
        digest(mm_to_in(124)), 
               mm_test_1)
})
```

    ## Test passed 🎊

``` r
test_that("Testing mm_to_in function",{
  expect_equal(
        digest(mm_to_in(121.12)), 
               mm_test_2)
})
```

    ## Test passed 🎊

``` r
test_that("Testing mm_to_in function",{
  expect_equal(
        digest(mm_to_in(NA)), 
               mm_test_3)
})
```

    ## Test passed 😀
