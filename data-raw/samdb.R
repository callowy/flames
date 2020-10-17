## code to prepare `samdb` dataset goes here

x <- flame_text_reader("data-txt")
samdb <- flame_generate_dataframe(x)

write.csv(samdb, "data-raw/samdb.csv")
usethis::use_data(samdb, overwrite = TRUE)
