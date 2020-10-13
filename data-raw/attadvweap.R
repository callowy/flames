## ATT multipliers for flame advantaged weapons
library(tidyverse)
library(usethis)

attadvweap <- tibble(
  "LV" = seq(0, 270, 10),
  "T3" = rep(seq(0.03, 0.21, length.out = 7), each = 4),
  "T4" = rep(seq(0.044, 0.308, length.out = 7), each = 4),
  "T5" = rep(seq(0.0605, 0.4235, length.out = 7), each = 4),
  "T6" = rep(seq(0.08, 0.56, length.out = 7), each = 4),
  "T7" = rep(seq(0.1025, 0.7175, length.out = 7), each = 4)
)

write_csv(attadvweap, "data-raw/attadvweap.csv")
usethis::use_data(attadvweap, overwrite = TRUE)
