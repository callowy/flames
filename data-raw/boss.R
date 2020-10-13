## Boss tier values
library(tidyverse)
library(usethis)

boss <- tibble(
  "LV" = seq(90, 200, 10),
  "T1" = rep(2, length("LV")),
  "T2" = rep(4, length("LV")),
  "T3" = rep(6, length("LV")),
  "T4" = rep(8, length("LV")),
  "T5" = rep(10, length("LV")),
  "T6" = rep(12, length("LV")),
  "T7" = rep(14, length("LV"))
)

write_csv(boss, "data-raw/boss.csv")
usethis::use_data(boss, overwrite = TRUE)
