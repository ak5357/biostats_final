## Biostats Final
## Project 1
## Data Import Source File

library(tidyverse)
library(stringr)

# FUNCTIONS ----------------------------------------------
camel_to_snake <- function(x) {
  str_replace_all(x, "([a-z])([A-Z])", "\\1_\\2") %>%
    tolower()
}

# DATA IMPORT --------------------------------------------
scores_df = read_csv("data/Project_1_data.csv") |> 
  rename_with(camel_to_snake) |> 
  mutate(
    across(c(gender, lunch_type, parent_marital_status,
             is_first_child, transport_means),
           as.factor),
    ethnic_group = as.factor(str_replace(ethnic_group, "group ", "")),
    parent_educ = factor(parent_educ, 
                         levels = c("some high school", "high school", "some college",
                                    "associate's degree", "backelor's degree", "master's degree")),
    test_prep = factor(test_prep,
                       levels = c("none", "completed")),
    practice_sport = factor(practice_sport,
                            levels = c("never", "sometimes", "regularly")),
    wkly_study_hours = factor(str_replace(wkly_study_hours, "10-May", "5-10"),
                              levels = c("< 5", "5-10", "> 10"))
  )
