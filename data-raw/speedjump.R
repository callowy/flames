## Speed/Jump tier Values
library(tidyverse)
library(usethis)

speedjump <- tibble(
  "LV" = seq(0, 270, 10),
  "T1" = rep(1, length("LV")),
  "T2" = rep(2, length("LV")),
  "T3" = rep(3, length("LV")),
  "T4" = rep(4, length("LV")),
  "T5" = rep(5, length("LV")),
  "T6" = rep(6, length("LV")),
  "T7" = rep(7, length("LV"))
)

write_csv(speedjump, "data-raw/speedjump.csv")
usethis::use_data(speedjump, overwrite = TRUE)
