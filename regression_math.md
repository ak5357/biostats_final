Regression (Math Scores)
================

Import data.

``` r
source("scores_data.R")
```

    ## Warning: package 'fastDummies' was built under R version 4.4.2

Preview data.

``` r
scores_dummies_df |>
  head(10)
```

    ## # A tibble: 10 × 30
    ##       id parent_educ  test_prep practice_sport nr_siblings wkly_study_hours
    ##    <int> <fct>        <fct>     <fct>                <dbl> <fct>           
    ##  1     1 <NA>         none      regularly                3 < 5             
    ##  2     2 some college <NA>      sometimes                0 5-10            
    ##  3     3 <NA>         none      sometimes                4 < 5             
    ##  4     4 <NA>         none      never                    1 5-10            
    ##  5     5 some college none      sometimes                0 5-10            
    ##  6     6 <NA>         none      regularly                1 5-10            
    ##  7     7 some college completed never                    1 5-10            
    ##  8     8 some college none      sometimes                1 > 10            
    ##  9     9 high school  completed sometimes                3 > 10            
    ## 10    10 high school  none      regularly               NA < 5             
    ## # ℹ 24 more variables: math_score <dbl>, reading_score <dbl>,
    ## #   writing_score <dbl>, gender_female <int>, gender_male <int>,
    ## #   ethnic_group_A <int>, ethnic_group_B <int>, ethnic_group_C <int>,
    ## #   ethnic_group_D <int>, ethnic_group_E <int>, ethnic_group_NA <int>,
    ## #   lunch_type_free_reduced <int>, lunch_type_standard <int>,
    ## #   parent_marital_status_divorced <int>, parent_marital_status_married <int>,
    ## #   parent_marital_status_single <int>, parent_marital_status_widowed <int>, …

All nominal variables have been changed to dummy variables. Ordinal
variables (e.g. parent_educ) have been assigned factor levels. Numeric
variables have not been changed.

Basic GLM linear regression model for Math Scores.

Using dummy variables.

``` r
covariates_dumm = scores_dummies_df |> 
  select(-contains("score"), -id) |> 
  colnames() |> 
  paste(collapse = " + ")

math_formula_dumm = reformulate(covariates_dumm, response = "math_score")

glm(math_formula_dumm, data = scores_dummies_df) |> 
  broom::tidy() |>
  filter(p.value < 0.05) #make sure to check variables with NA coefficients (due to multicollinearity)
```

    ## # A tibble: 9 × 5
    ##   term                    estimate std.error statistic  p.value
    ##   <chr>                      <dbl>     <dbl>     <dbl>    <dbl>
    ## 1 (Intercept)                79.5       5.81     13.7  4.99e-34
    ## 2 test_prepcompleted          5.15      1.56      3.30 1.07e- 3
    ## 3 gender_female              -4.97      1.46     -3.41 7.36e- 4
    ## 4 ethnic_group_A            -11.8       3.06     -3.86 1.35e- 4
    ## 5 ethnic_group_B            -14.6       2.61     -5.59 4.86e- 8
    ## 6 ethnic_group_C            -12.6       2.49     -5.03 7.97e- 7
    ## 7 ethnic_group_D             -8.10      2.49     -3.25 1.26e- 3
    ## 8 lunch_type_free_reduced   -12.3       1.51     -8.13 9.03e-15
    ## 9 is_first_child_no          -3.31      1.58     -2.10 3.63e- 2

Not using dummy variables.

``` r
covariates = scores_df |> 
  select(-contains("score"), -id) |> 
  colnames() |> 
  paste(collapse = " + ")

math_formula = reformulate(covariates, response = "math_score")

glm(math_formula, data = scores_df) |> 
  broom::tidy() |>
  filter(p.value < 0.05)
```

    ## # A tibble: 7 × 5
    ##   term                         estimate std.error statistic  p.value
    ##   <chr>                           <dbl>     <dbl>     <dbl>    <dbl>
    ## 1 (Intercept)                     41.1       4.54      9.06 1.22e-17
    ## 2 gendermale                       4.97      1.46      3.41 7.36e- 4
    ## 3 ethnic_groupE                   11.8       3.06      3.86 1.35e- 4
    ## 4 lunch_typestandard              12.3       1.51      8.13 9.03e-15
    ## 5 test_prepcompleted               5.15      1.56      3.30 1.07e- 3
    ## 6 parent_marital_statusmarried     5.68      2.01      2.82 5.12e- 3
    ## 7 is_first_childyes                3.31      1.58      2.10 3.63e- 2
