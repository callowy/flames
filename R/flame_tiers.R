# ss <- df[2,]
# ss <- df[2, -1:-4]

#' Number of Auxiliary Rolls
#'
#' Returns the number of non-mainstat rolls
#' @param x A row from the flames dataframe
#' num_aux()
num_aux <- function(x) {
  y <- x[-1:-8]
  length(y[y != 0])
}

#' Number of Mainstat Rolls
#'
#' Returns the number of mainstat rolls
#' @param x A row from the flames dataframe
#' num_main()
num_main <- function(x) {
  y <- x[5:8]
  length(y[y != 0])
}

#' Tier of Rolled Value
#'
#' Returns the tier of the rolled flame value
#' @param x A row from the flames dataframe
#'
#' flame_tier()
flame_tier <- function(x){

}
check_match <- function(x) {

}

#
is_matching <- function(val, type, lv) {
  mainstatsdef <- c("STR", "DEX", "INT", "LUK", "DEF") %>%
    str_c(collapse = "|")

  if(str_detect(val, mainstatsdef)){

  }
}
