## code to prepare `DATASET` dataset goes here
library(tidyverse)
library(usethis)


df <- tibble(
  x0 = 1 * 1:7, x1 = x0, x2 = x0, x3 = x0,
  x4 = 2 * 1:7, x5 = x4, x6 = x4, x7 = x4,
  x8 = 3 * 1:7, x9 = x8, x10 = x8, x11 = x8,
  x12 = 4 * 1:7, x13 = x12, x14 = x12, x15 = x12,
  x16 = 5 * 1:7, x17 = x16, x18 = x16, x19 = x16,
  x20 = 6 * 1:7
  # , x21 = x20, x22 = x20, x23 = x20,
  # x24 = 7 * 1:7, x25 = x24, x26 = x25, x27 = x24
)
mainstatdual <- as_tibble(t(as.matrix(df)))
colnames(mainstatdual) <- c("T1", "T2", "T3", "T4", "T5", "T6", "T7")
mainstatdual <- add_column(mainstatdual,
           "LV" = seq(0, 200, 10),
           .before = "T1")

write_csv(mainstatdual, "data-raw/mainstatdual.csv")
usethis::use_data(mainstatdual, overwrite = TRUE)
