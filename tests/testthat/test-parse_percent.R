context("Test %{DMG, BOSS, ALL} works correctly")
library(flames)

x <- flame_text_reader("data-txt")
x2 <- flame_text_reader("data-txt", TRUE, "9_24_20.txt")
y <- flame_generate_dataframe(x)

test_that("assign_attribute returns correct value for %ALL", {

})

y %>%
  filter(!Advantaged)
