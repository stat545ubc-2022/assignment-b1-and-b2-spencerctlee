#' mm to inches converter
#' @description The purpose of this function is to convert mm into inches, by the conversion factor of 1/254.
#' @param x measurement in mm provided. (mm)
#'
#' @return unit conversion of mm into inches.
#' @export
#'
#' @examples
#' mm_to_in(200) # should be "0.7874016"
#' mm_to_in(165.2) # should be "0.6503937"
#' mm_to_in(-1933.3) # should be "-7.611417"

mm_to_in <- function(x) {
  inch = x/254
  return(inch)
}
