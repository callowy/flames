context("Load TXT Files")
library(flames)

x <- flame_text_reader("data-txt")
df <- flame_generate_dataframe(x)

x2 <- flame_text_reader("data-txt", single = TRUE, file = "9_21_20.txt")
x2
x <- flame_text_reader("data-txt")
