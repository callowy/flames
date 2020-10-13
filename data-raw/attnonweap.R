## ATT/M.ATT Values for non weapons
library(tidyverse)
library(usethis)

attnonweap <- tibble(
  "LV" = seq(70, 200, 10),
  "T1" = rep(1, length("LV")),
  "T2" = rep(2, length("LV")),
  "T3" = rep(3, length("LV")),
  "T4" = rep(4, length("LV")),
  "T5" = rep(5, length("LV")),
  "T6" = rep(6, length("LV")),
  "T7" = rep(7, length("LV"))
)

write_csv(attnonweap, "data-raw/attnonweap.csv")
usethis::use_data(attnonweap, overwrite = TRUE)
