#' Flame Text Reader
#'
#' Coverts all TXT files in a folder into a formatted list that works with the database generator. Current requires all files in folder to be TXT files.
#' Will fix this later.
#' @param directory Folder directory that contains the files
#' @param single A boolean statement for if you want to parse a single file or the whole folder
#' @param file File name if you want to parse single file
#' @export
#' @examples
#' flame_text_reader()
flame_text_reader <- function(directory, single = FALSE, file = NA) {
  if(single){
    if(!is.na(file)){
    x <- stringr::str_c(directory, "/", file)
    y <- purrr::map(x, readr::read_lines) %>%
      unlist() %>%
      stringr::str_split(", ")
    y
    }
  }

  else{
  x <- stringr::str_c(directory, "/", list.files(path = directory))
  y <- purrr::map(x, readr::read_lines) %>%
    unlist() %>%
    stringr::str_split(", ")
  y
  }
}
