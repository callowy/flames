#' Flame Score
#' Generates the flame score for the given item
#' @param x A flame vector
#' @param main The main stat of your character
#' @examples
#' @export
#' flame_score()
flame_score <- function(x, main) {
  if (main == "STR") inscore(x, main, "DEX")
  else if (main == "DEX") inscore(x, main, "STR")
  else if (main == "INT") inscore(x, main, "LUK")
  else inscore(x, main, "DEX")
}

inscore <- function(x, main, sub) {
  if (main == "INT") {
    x[main] + (x[sub] / 10) + (x$"ALL" * 8) + (x$"M.ATT" * 4)
  }
  else {
   x[main] + (x[sub] / 10) + (x$"ALL" * 8) + (x$"ATT" * 4)
  }
}
