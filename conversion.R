library(rvest)
library(tidyverse)

html <-
  rvest::read_html("2022-04-27NewEquivalence_tables.html", encoding = "utf8")

html_tables <- html %>% rvest::html_table(fill = TRUE)

html_tables %>% bind_rows() -> equivalence_table_step1

equivalence_table_step1 %>%
  write_excel_csv("equivalence_table_step1_R.csv", na = "")

equivalence_table_step2_manuel_excel <-
  read_csv("equivalence_table_step2_manuel_excel.csv")

original_names <- colnames(equivalence_table_step2_manuel_excel) %>%
  str_remove_all("\\n")

colnames(equivalence_table_step2_manuel_excel) <-
  make.names(colnames(equivalence_table_step2_manuel_excel))

equivalence_table_step2_manuel_excel %>%
  mutate(Information.for.patients.in.Ukrainian2 = Information.for.patients.in.Ukrainian %>%
           str_remove_all("\\s+")) %>% 
  select(-Information.for.patients.in.Ukrainian) %>%
  rename(Information.for.patients.in.Ukrainian =
           Information.for.patients.in.Ukrainian2) ->
  equivalence_table_step3_clean

colnames(equivalence_table_step3_clean) <- original_names

equivalence_table_step3_clean %>%
  write_excel_csv("equivalence_table_step3_clean.csv")