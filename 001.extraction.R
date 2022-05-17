library(rvest)
library(tidyverse)

html <-
  rvest::read_html("2022-04-27NewEquivalence_tables.html", encoding = "utf8")

html_tables <- html %>% rvest::html_table(fill = TRUE)

html_tables %>% bind_rows() -> equivalence_table_step1

equivalence_table_step1 %>%
  write_excel_csv("equivalence_table_step1_R.csv", na = "")
