## ATT multipliers for non advantaged weapons
library(tidyverse)
library(usethis)

attnormweap <- tibble(
  "LV" = seq(0, 270, 10),
  "T1" = rep(seq(0.01, 0.07, length.out = 7), each = 4),
  "T2" = rep(seq(0.022, 0.154, length.out = 7), each = 4),
  "T3" = rep(seq(0.03625, 0.25375, length.out = 7), each = 4),
  "T4" = rep(seq(0.05325, 0.37275, length.out = 7), each = 4),
  "T5" = rep(seq(0.073, 0.511, length.out = 7), each = 4),
  "T6" = rep(seq(0.088, 0.616, length.out = 7), each = 4),
  "T7" = rep(seq(0.1025, 0.7175, length.out = 7), each = 4)
)


write_csv(attnormweap, "data-raw/attnormweap.csv")
usethis::use_data(attnormweap, overwrite = TRUE)
