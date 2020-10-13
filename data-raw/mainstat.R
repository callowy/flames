# Mainstat Single Value -------------------------------

library(tidyverse)
library(usethis)

df <- tibble(
  x0 = 1* 1:7, x1 = x0,
  x2 = 2 * 1:7, x3 = x2,
  x4 = 3 * 1:7, x5 = x4,
  x6 = 4 * 1:7, x7 = x6,
  x8 = 5 * 1:7, x9 = x8,
  x10 = 6 * 1:7, x11 = x10,
  x12 = 7 * 1:7, x13 = x12,
  x14 = 8 * 1:7, x15 = x14,
  x16 = 9 * 1:7, x17 = x16,
  x18 = 10 * 1:7, x19 = x18,
  x20 = 11 * 1:7
  # , x21 = x20,
  # x22 = 12 * 1:7, x23 = x22,
  # x24 = 13 * 1:7, x25 = x24,
  # x26 = 14 * 1:7, x27 = x26
)
mainstat <- as_tibble(t(as.matrix(df)))
colnames(mainstat) <- c("T1", "T2", "T3", "T4", "T5", "T6", "T7")
mainstat <- add_column(mainstat,
           "LV" = seq(0, 200, 10),
           .before = "T1")

write_csv(mainstat, "data-raw/mainstat.csv")
usethis::use_data(mainstat, overwrite = TRUE)
