assign_attribute <- function(elem, attribute) {
  # Default value is 0
  attr_val <- 0

  # Super jank workaround for ATT vs M.ATT distinction until I find a real solution
  if(attribute == "ATT") attribute <- str_c(" ", attribute)

  for (i in seq_along(elem)){
    if(str_detect(elem[i], str_c("\\b", attribute, "\\b"))) {
      attr_val <- parse_number(elem[[i]])
    }
  }
  attr_val
}

flame_assign_attribute_values <- function(a_list, attribute) {
  output <- vector("character", length(a_list))

  for(i in seq_along(a_list)) {
    output[i] <- assign_attribute(a_list[[i]], attribute)
  }
  enframe(output, name = NULL, value = attribute) %>%
    mutate_at(attribute, as.double)
}

assign_generic_location <- function(a_list, num, colname) {
  output <- vector("character", length(a_list))

  for (i in seq_along(a_list)) {
    output[i] <- a_list[[i]][num]
  }
  enframe(output, name= NULL, value = colname)
}

flame_assign_itemtype <- function(a_list) {
  assign_generic_location(a_list, 1, 'Equip')
}

flame_assign_flametype <- function(a_list) {
  assign_generic_location(a_list, 3, 'Flame')
}

flame_assign_flameadvantage <- function(a_list) {
  fadvg <- assign_generic_location(a_list, 4, 'Advantaged')

  fadvg %>%
    mutate(
      'Advantaged' = str_detect(fadvg[[1]], "Y")
    )

}

#' Flame Database Generator
#'
#' Parses a list of flame values and then creates a tibble from this information.
#' @param a_list Flame data list
#' @export
#' @examples
#' flame_generate_dataframe()

flame_generate_dataframe <- function(a_list) {
  x <- list(
    eq_type <- flame_assign_itemtype(a_list),
    eq_level <- flame_assign_attribute_values(a_list, "LV"),
    flametype <- flame_assign_flametype(a_list),
    flameadv <- flame_assign_flameadvantage(a_list),
    strength <- flame_assign_attribute_values(a_list, "STR"),
    dex <- flame_assign_attribute_values(a_list, "DEX"),
    int <- flame_assign_attribute_values(a_list, "INT"),
    luk <- flame_assign_attribute_values(a_list, "LUK"),
    hp <- flame_assign_attribute_values(a_list, "HP"),
    mp <- flame_assign_attribute_values(a_list, "MP"),
    att <- flame_assign_attribute_values(a_list, "ATT"),
    matt <- flame_assign_attribute_values(a_list, "M.ATT"),
    def <- flame_assign_attribute_values(a_list, "DEF"),
    speed <- flame_assign_attribute_values(a_list, "SPEED"),
    jump <- flame_assign_attribute_values(a_list, "JUMP"),
    all_stat <- flame_assign_attribute_values(a_list, "%ALL"),
    req_lv <- flame_assign_attribute_values(a_list, "REQ"),
    boss <- flame_assign_attribute_values(a_list, "%BOSS"),
    dmg <- flame_assign_attribute_values(a_list, "%DMG")
  )

  bind_cols(x)
}
