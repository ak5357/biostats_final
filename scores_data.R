## Biostats Final
## Project 1
## Data Import Source File

library(tidyverse)
library(stringr)
#library(fastDummies)

# FUNCTIONS ----------------------------------------------
camel_to_snake <- function(x) {
  str_replace_all(x, "([a-z])([A-Z])", "\\1_\\2") %>%
    tolower()
}

# DATA IMPORT --------------------------------------------
scores_df = read_csv("data/Project_1_data.csv") |> 
  rename_with(camel_to_snake) |> 
  mutate(
    across(-where(is.numeric), ~ str_replace(.x, "/", "_")),
    across(-where(is.numeric), ~ str_replace(.x, "'", "")),
    id = row_number(),
    across(c(gender, lunch_type, parent_marital_status,
             is_first_child, transport_means),
           as.factor),
    ethnic_group = as.factor(str_replace(ethnic_group, "group ", "")),
    parent_educ = factor(parent_educ, 
                         levels = c("some high school", "high school", "some college",
                                    "associates degree", "bachelors degree", "masters degree")),
    test_prep = factor(test_prep,
                       levels = c("none", "completed")),
    practice_sport = factor(practice_sport,
                            levels = c("never", "sometimes", "regularly")),
    wkly_study_hours = factor(str_replace(wkly_study_hours, "10-May", "5-10"),
                              levels = c("< 5", "5-10", "> 10"))
  ) |> 
  relocate(id)

# PREP FOR REGRESSION -------------------------------------
# nominal_cols = c("gender", "ethnic_group", "lunch_type", "parent_marital_status", 
#                  "is_first_child", "transport_means")
# 
# scores_dummies_df = scores_df |> 
#   dummy_cols(
#     select_columns = nominal_cols, 
#     remove_first_dummy = FALSE) |> 
#   select(-all_of(nominal_cols)) |> 
#   relocate(id)

