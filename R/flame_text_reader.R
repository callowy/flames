#' Flame Text Reader
#'
#' Coverts all TXT files in a folder into a formatted list that works with the database generator. Current requires all files in folder to be TXT files.
#' Will fix this later.
#' @param directory Folder directory that contains the files
#' @export
#' @examples
#' flame_text_reader()
flame_text_reader <- function(directory) {
  x <- stringr::str_c(directory, "/", list.files(path = directory))
  y <- map(x, readr::read_lines) %>%
    unlist() %>%
    stringr::str_split(", ")
  y
}
