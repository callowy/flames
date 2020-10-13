## All Stat tier values
library(tidyverse)
library(usethis)

allstat <- tibble(
  "LV" = seq(70, 200, 10),
  "T1" = rep(1, length("LV")),
  "T2" = rep(2, length("LV")),
  "T3" = rep(3, length("LV")),
  "T4" = rep(4, length("LV")),
  "T5" = rep(5, length("LV")),
  "T6" = rep(6, length("LV")),
  "T7" = rep(7, length("LV"))
)

write_csv(allstat, "data-raw/allstat.csv")
usethis::use_data(allstat, overwrite = TRUE)
