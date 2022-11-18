
# mm.in

## Description

The goal of mm.in is to convert measurement units of milimeters (mm) to
inches (in) by coverting throuh a factor of 1/254.

## Installation instructions

You can install the development version of mm.in from \[Github\]
(<https://github.com/>) with

``` r
devtools::install_github("stat545ubc-2022/assignment-b1-and-b2-spencerctlee/mm.in")
```

    ## Downloading GitHub repo stat545ubc-2022/assignment-b1-and-b2-spencerctlee@HEAD

    ##      checking for file ‘/private/var/folders/1g/23zr8jbn0sb3043t14g67w040000gn/T/RtmpxfipTW/remotes629c4e88c346/stat545ubc-2022-assignment-b1-and-b2-spencerctlee-6933b0c/mm.in/DESCRIPTION’ ...  ✔  checking for file ‘/private/var/folders/1g/23zr8jbn0sb3043t14g67w040000gn/T/RtmpxfipTW/remotes629c4e88c346/stat545ubc-2022-assignment-b1-and-b2-spencerctlee-6933b0c/mm.in/DESCRIPTION’
    ##   ─  preparing ‘mm.in’:
    ##    checking DESCRIPTION meta-information ...  ✔  checking DESCRIPTION meta-information
    ##   ─  checking for LF line-endings in source and make files and shell scripts
    ##   ─  checking for empty or unneeded directories
    ##   ─  building ‘mm.in_0.0.0.9000.tar.gz’
    ##      
    ## 

## Examples

Here are some examples to demonstrate the usage of the function and
outputs:

``` r
library(mm.in)
## Examples
mm_to_in(200) # should be "0.7874016"
```

    ## [1] 0.7874016

``` r
mm_to_in(165.2) # should be "0.6503937"
```

    ## [1] 0.6503937

``` r
mm_to_in(-1933.3) # should be "-7.611417"
```

    ## [1] -7.611417
