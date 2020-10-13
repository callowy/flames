## HP/MP Values
library(tidyverse)
library(usethis)

hpmp <- tibble(
  "LV" = seq(0, 200, 10),
  "T1" = seq(3, 583, 29),
  "T2" = 2 * T1,
  "T3" = 3 * T1,
  "T4" = 4 * T1,
  "T5" = 5 * T1,
  "T6" = 6 * T1,
  "T7" = 7 * T1
)

write_csv(hpmp, "data-raw/hpmp.csv")
usethis::use_data(hpmp, overwrite = TRUE)
