Reading Regression
================
mk4995
2024-12-15

## Explore variables.

Import data.

``` r
source("scores_data.R")
```

    ## ── Attaching core tidyverse packages ──────────────────────── tidyverse 2.0.0 ──
    ## ✔ dplyr     1.1.4     ✔ readr     2.1.5
    ## ✔ forcats   1.0.0     ✔ stringr   1.5.1
    ## ✔ ggplot2   3.5.1     ✔ tibble    3.2.1
    ## ✔ lubridate 1.9.3     ✔ tidyr     1.3.1
    ## ✔ purrr     1.0.2     
    ## ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
    ## ✖ dplyr::filter() masks stats::filter()
    ## ✖ dplyr::lag()    masks stats::lag()
    ## ℹ Use the conflicted package (<http://conflicted.r-lib.org/>) to force all conflicts to become errors
    ## Rows: 948 Columns: 14
    ## ── Column specification ────────────────────────────────────────────────────────
    ## Delimiter: ","
    ## chr (10): Gender, EthnicGroup, ParentEduc, LunchType, TestPrep, ParentMarita...
    ## dbl  (4): NrSiblings, MathScore, ReadingScore, WritingScore
    ## 
    ## ℹ Use `spec()` to retrieve the full column specification for this data.
    ## ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.

``` r
# scores_df = 
  # scores_df |> na.omit()

scores_df |> select(-id) |> 
  gtsummary::tbl_summary() |> 
  gtsummary::bold_labels() |> 
  gtsummary::italicize_levels()
```

<div id="nuracjrgvm" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#nuracjrgvm table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
&#10;#nuracjrgvm thead, #nuracjrgvm tbody, #nuracjrgvm tfoot, #nuracjrgvm tr, #nuracjrgvm td, #nuracjrgvm th {
  border-style: none;
}
&#10;#nuracjrgvm p {
  margin: 0;
  padding: 0;
}
&#10;#nuracjrgvm .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}
&#10;#nuracjrgvm .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}
&#10;#nuracjrgvm .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}
&#10;#nuracjrgvm .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}
&#10;#nuracjrgvm .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#nuracjrgvm .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#nuracjrgvm .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#nuracjrgvm .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}
&#10;#nuracjrgvm .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}
&#10;#nuracjrgvm .gt_column_spanner_outer:first-child {
  padding-left: 0;
}
&#10;#nuracjrgvm .gt_column_spanner_outer:last-child {
  padding-right: 0;
}
&#10;#nuracjrgvm .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}
&#10;#nuracjrgvm .gt_spanner_row {
  border-bottom-style: hidden;
}
&#10;#nuracjrgvm .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}
&#10;#nuracjrgvm .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}
&#10;#nuracjrgvm .gt_from_md > :first-child {
  margin-top: 0;
}
&#10;#nuracjrgvm .gt_from_md > :last-child {
  margin-bottom: 0;
}
&#10;#nuracjrgvm .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}
&#10;#nuracjrgvm .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#nuracjrgvm .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}
&#10;#nuracjrgvm .gt_row_group_first td {
  border-top-width: 2px;
}
&#10;#nuracjrgvm .gt_row_group_first th {
  border-top-width: 2px;
}
&#10;#nuracjrgvm .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#nuracjrgvm .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}
&#10;#nuracjrgvm .gt_first_summary_row.thick {
  border-top-width: 2px;
}
&#10;#nuracjrgvm .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#nuracjrgvm .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#nuracjrgvm .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}
&#10;#nuracjrgvm .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}
&#10;#nuracjrgvm .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}
&#10;#nuracjrgvm .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#nuracjrgvm .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#nuracjrgvm .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#nuracjrgvm .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#nuracjrgvm .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#nuracjrgvm .gt_left {
  text-align: left;
}
&#10;#nuracjrgvm .gt_center {
  text-align: center;
}
&#10;#nuracjrgvm .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}
&#10;#nuracjrgvm .gt_font_normal {
  font-weight: normal;
}
&#10;#nuracjrgvm .gt_font_bold {
  font-weight: bold;
}
&#10;#nuracjrgvm .gt_font_italic {
  font-style: italic;
}
&#10;#nuracjrgvm .gt_super {
  font-size: 65%;
}
&#10;#nuracjrgvm .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}
&#10;#nuracjrgvm .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}
&#10;#nuracjrgvm .gt_indent_1 {
  text-indent: 5px;
}
&#10;#nuracjrgvm .gt_indent_2 {
  text-indent: 10px;
}
&#10;#nuracjrgvm .gt_indent_3 {
  text-indent: 15px;
}
&#10;#nuracjrgvm .gt_indent_4 {
  text-indent: 20px;
}
&#10;#nuracjrgvm .gt_indent_5 {
  text-indent: 25px;
}
&#10;#nuracjrgvm .katex-display {
  display: inline-flex !important;
  margin-bottom: 0.75em !important;
}
&#10;#nuracjrgvm div.Reactable > div.rt-table > div.rt-thead > div.rt-tr.rt-tr-group-header > div.rt-th-group:after {
  height: 0px !important;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="label"><span class='gt_from_md'><strong>Characteristic</strong></span></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="stat_0"><span class='gt_from_md'><strong>N = 948</strong></span><span class="gt_footnote_marks" style="white-space:nowrap;font-style:italic;font-weight:normal;line-height:0;"><sup>1</sup></span></th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="label" class="gt_row gt_left" style="font-weight: bold;">gender</td>
<td headers="stat_0" class="gt_row gt_center"><br /></td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-style: italic;">    female</td>
<td headers="stat_0" class="gt_row gt_center">488 (51%)</td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-style: italic;">    male</td>
<td headers="stat_0" class="gt_row gt_center">460 (49%)</td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-weight: bold;">ethnic_group</td>
<td headers="stat_0" class="gt_row gt_center"><br /></td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-style: italic;">    A</td>
<td headers="stat_0" class="gt_row gt_center">80 (9.0%)</td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-style: italic;">    B</td>
<td headers="stat_0" class="gt_row gt_center">171 (19%)</td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-style: italic;">    C</td>
<td headers="stat_0" class="gt_row gt_center">277 (31%)</td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-style: italic;">    D</td>
<td headers="stat_0" class="gt_row gt_center">237 (27%)</td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-style: italic;">    E</td>
<td headers="stat_0" class="gt_row gt_center">124 (14%)</td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-style: italic;">    Unknown</td>
<td headers="stat_0" class="gt_row gt_center">59</td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-weight: bold;">parent_educ</td>
<td headers="stat_0" class="gt_row gt_center"><br /></td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-style: italic;">    some high school</td>
<td headers="stat_0" class="gt_row gt_center">163 (30%)</td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-style: italic;">    high school</td>
<td headers="stat_0" class="gt_row gt_center">176 (33%)</td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-style: italic;">    some college</td>
<td headers="stat_0" class="gt_row gt_center">199 (37%)</td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-style: italic;">    associate's degree</td>
<td headers="stat_0" class="gt_row gt_center">0 (0%)</td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-style: italic;">    backelor's degree</td>
<td headers="stat_0" class="gt_row gt_center">0 (0%)</td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-style: italic;">    master's degree</td>
<td headers="stat_0" class="gt_row gt_center">0 (0%)</td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-style: italic;">    Unknown</td>
<td headers="stat_0" class="gt_row gt_center">410</td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-weight: bold;">lunch_type</td>
<td headers="stat_0" class="gt_row gt_center"><br /></td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-style: italic;">    free_reduced</td>
<td headers="stat_0" class="gt_row gt_center">331 (35%)</td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-style: italic;">    standard</td>
<td headers="stat_0" class="gt_row gt_center">617 (65%)</td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-weight: bold;">test_prep</td>
<td headers="stat_0" class="gt_row gt_center"><br /></td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-style: italic;">    none</td>
<td headers="stat_0" class="gt_row gt_center">571 (64%)</td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-style: italic;">    completed</td>
<td headers="stat_0" class="gt_row gt_center">322 (36%)</td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-style: italic;">    Unknown</td>
<td headers="stat_0" class="gt_row gt_center">55</td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-weight: bold;">parent_marital_status</td>
<td headers="stat_0" class="gt_row gt_center"><br /></td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-style: italic;">    divorced</td>
<td headers="stat_0" class="gt_row gt_center">146 (16%)</td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-style: italic;">    married</td>
<td headers="stat_0" class="gt_row gt_center">516 (57%)</td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-style: italic;">    single</td>
<td headers="stat_0" class="gt_row gt_center">213 (24%)</td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-style: italic;">    widowed</td>
<td headers="stat_0" class="gt_row gt_center">24 (2.7%)</td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-style: italic;">    Unknown</td>
<td headers="stat_0" class="gt_row gt_center">49</td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-weight: bold;">practice_sport</td>
<td headers="stat_0" class="gt_row gt_center"><br /></td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-style: italic;">    never</td>
<td headers="stat_0" class="gt_row gt_center">112 (12%)</td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-style: italic;">    sometimes</td>
<td headers="stat_0" class="gt_row gt_center">477 (51%)</td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-style: italic;">    regularly</td>
<td headers="stat_0" class="gt_row gt_center">343 (37%)</td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-style: italic;">    Unknown</td>
<td headers="stat_0" class="gt_row gt_center">16</td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-weight: bold;">is_first_child</td>
<td headers="stat_0" class="gt_row gt_center">604 (66%)</td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-style: italic;">    Unknown</td>
<td headers="stat_0" class="gt_row gt_center">30</td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-weight: bold;">nr_siblings</td>
<td headers="stat_0" class="gt_row gt_center"><br /></td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-style: italic;">    0</td>
<td headers="stat_0" class="gt_row gt_center">101 (11%)</td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-style: italic;">    1</td>
<td headers="stat_0" class="gt_row gt_center">245 (27%)</td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-style: italic;">    2</td>
<td headers="stat_0" class="gt_row gt_center">213 (24%)</td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-style: italic;">    3</td>
<td headers="stat_0" class="gt_row gt_center">198 (22%)</td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-style: italic;">    4</td>
<td headers="stat_0" class="gt_row gt_center">76 (8.4%)</td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-style: italic;">    5</td>
<td headers="stat_0" class="gt_row gt_center">50 (5.5%)</td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-style: italic;">    6</td>
<td headers="stat_0" class="gt_row gt_center">8 (0.9%)</td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-style: italic;">    7</td>
<td headers="stat_0" class="gt_row gt_center">11 (1.2%)</td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-style: italic;">    Unknown</td>
<td headers="stat_0" class="gt_row gt_center">46</td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-weight: bold;">transport_means</td>
<td headers="stat_0" class="gt_row gt_center"><br /></td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-style: italic;">    private</td>
<td headers="stat_0" class="gt_row gt_center">337 (40%)</td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-style: italic;">    school_bus</td>
<td headers="stat_0" class="gt_row gt_center">509 (60%)</td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-style: italic;">    Unknown</td>
<td headers="stat_0" class="gt_row gt_center">102</td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-weight: bold;">wkly_study_hours</td>
<td headers="stat_0" class="gt_row gt_center"><br /></td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-style: italic;">    &lt; 5</td>
<td headers="stat_0" class="gt_row gt_center">253 (28%)</td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-style: italic;">    5-10</td>
<td headers="stat_0" class="gt_row gt_center">508 (56%)</td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-style: italic;">    &gt; 10</td>
<td headers="stat_0" class="gt_row gt_center">150 (16%)</td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-style: italic;">    Unknown</td>
<td headers="stat_0" class="gt_row gt_center">37</td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-weight: bold;">math_score</td>
<td headers="stat_0" class="gt_row gt_center">66 (56, 76)</td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-weight: bold;">reading_score</td>
<td headers="stat_0" class="gt_row gt_center">70 (59, 80)</td></tr>
    <tr><td headers="label" class="gt_row gt_left" style="font-weight: bold;">writing_score</td>
<td headers="stat_0" class="gt_row gt_center">68 (57, 79)</td></tr>
  </tbody>
  &#10;  <tfoot class="gt_footnotes">
    <tr>
      <td class="gt_footnote" colspan="2"><span class="gt_footnote_marks" style="white-space:nowrap;font-style:italic;font-weight:normal;line-height:0;"><sup>1</sup></span> <span class='gt_from_md'>n (%); Median (Q1, Q3)</span></td>
    </tr>
  </tfoot>
</table>
</div>

``` r
pairs(scores_df)
```

![](regression_reading_files/figure-gfm/unnamed-chunk-2-1.png)<!-- -->

## Decide if `reading_score` needs to be transformed.

``` r
library(ggplot2)
library(dplyr)
library(patchwork)

scores_df |> 
  ggplot(aes(x = (reading_score))) +
  geom_boxplot()
```

![](regression_reading_files/figure-gfm/unnamed-chunk-3-1.png)<!-- -->

``` r
scores_df |> 
  ggplot(aes(sample = (reading_score))) +
  geom_qq() + geom_qq_line()
```

![](regression_reading_files/figure-gfm/unnamed-chunk-3-2.png)<!-- -->

According to this, `reading_score` does not meet the normality
assumptions because of values in the higher range. We can try a Box Cox
transformation to adjust this.

``` r
library(caret)
```

    ## Loading required package: lattice

    ## 
    ## Attaching package: 'caret'

    ## The following object is masked from 'package:purrr':
    ## 
    ##     lift

``` r
# Create a Box-Cox transformation object
bc_transform <- BoxCoxTrans(scores_df$reading_score)  # Replace Area with your variable

# View the optimal lambda
bc_transform$lambda
```

    ## [1] 1.3

According to the Box-Cox transformation, the ideal lambda is 1.3. If we
compare this to 2, we can see that the normality plot doesn’t get much
better - in fact, now the lower tails are worse. Based on this, we will
move forward with the original `reading_score` variable.

``` r
scores_df |> 
  ggplot(aes(x = (reading_score)^2)) +
  geom_boxplot()
```

![](regression_reading_files/figure-gfm/unnamed-chunk-5-1.png)<!-- -->

``` r
scores_df |> 
  ggplot(aes(sample = (reading_score)^2)) +
  geom_qq() + geom_qq_line()
```

![](regression_reading_files/figure-gfm/unnamed-chunk-5-2.png)<!-- -->

## Basic regression models

Without other scores:

``` r
library(kableExtra)
```

    ## 
    ## Attaching package: 'kableExtra'

    ## The following object is masked from 'package:dplyr':
    ## 
    ##     group_rows

``` r
reading_full_df = scores_df |> select(-c(id, math_score, writing_score))

reading_model = lm(reading_score ~ ., data = reading_full_df)
reading_model_summary <- broom::tidy(reading_model) |> knitr::kable(digits = 3)

reading_model |> summary()
```

    ## 
    ## Call:
    ## lm(formula = reading_score ~ ., data = reading_full_df)
    ## 
    ## Residuals:
    ##     Min      1Q  Median      3Q     Max 
    ## -42.619  -8.198   0.513   9.190  26.974 
    ## 
    ## Coefficients:
    ##                              Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)                   55.2585     4.5288  12.202  < 2e-16 ***
    ## gendermale                    -8.3285     1.4547  -5.725 2.33e-08 ***
    ## ethnic_groupB                 -3.9179     2.7594  -1.420  0.15661    
    ## ethnic_groupC                 -1.0711     2.6485  -0.404  0.68618    
    ## ethnic_groupD                  2.4375     2.6293   0.927  0.35457    
    ## ethnic_groupE                  7.3359     3.0470   2.408  0.01661 *  
    ## parent_educhigh school        -0.3642     1.7851  -0.204  0.83847    
    ## parent_educsome college        2.2944     1.7955   1.278  0.20219    
    ## lunch_typestandard             8.8185     1.5099   5.841 1.25e-08 ***
    ## test_prepcompleted             6.5832     1.5576   4.227 3.08e-05 ***
    ## parent_marital_statusmarried   5.3775     2.0084   2.677  0.00779 ** 
    ## parent_marital_statussingle    2.2680     2.3377   0.970  0.33266    
    ## parent_marital_statuswidowed   5.7274     4.8206   1.188  0.23564    
    ## practice_sportsometimes       -0.1484     2.4601  -0.060  0.95195    
    ## practice_sportregularly       -2.6345     2.4980  -1.055  0.29236    
    ## is_first_childyes              3.0757     1.5713   1.957  0.05114 .  
    ## nr_siblings                    0.4985     0.4904   1.016  0.31014    
    ## transport_meansschool_bus      0.9690     1.4507   0.668  0.50460    
    ## wkly_study_hours5-10           0.8823     1.7442   0.506  0.61329    
    ## wkly_study_hours> 10           0.2577     2.2717   0.113  0.90976    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 13.27 on 329 degrees of freedom
    ##   (599 observations deleted due to missingness)
    ## Multiple R-squared:  0.2609, Adjusted R-squared:  0.2182 
    ## F-statistic: 6.113 on 19 and 329 DF,  p-value: 2.353e-13

Significant coefficients:

- (Intercept)
- gendermale
- ethnic_groupE
- lunch_typestandard
- test_prepcompleted
- parent_marital_statusmarried

## Check spread of residuals.

**RSE = 13.27**: Indicates the average difference betweeen observeed and
fitted values.

**R^2 = 0.2609** About 26.09% of the variability in reading score is
explained by the covariates.

**Adj-R^2 = 0.2182** After penalizing for the predictors in the model
that don’t add anything useful, 21.82% of the variability in reading
score is explained by the covariates.

## Plotting models

Looking at the plots below, we can see that the residuals generally
follow normality, homoscedascity and mean zero looking at the diagnostic
plots.

``` r
par(mfrow=c(2,2))
plot(reading_model)
```

![](regression_reading_files/figure-gfm/unnamed-chunk-7-1.png)<!-- -->

# Creating optimal models

Start regression procedures without the other score variables against
`reading_score`.

In order to use these procedures, we must remove NAs from the dataset.

``` r
# Does not contain id, math score, wrting score, or NAs
reading_df = scores_df |> na.omit() |> select(-c(id, math_score, writing_score))
```

We can check the normality assumptions here.

``` r
reading_df |> 
  ggplot(aes(sample = (reading_score))) +
  geom_qq() + geom_qq_line()

# Extract residuals from your model
residuals <- residuals(reading_model)

# Extract fitted values
fitted_values <- fitted(reading_model)

# Identify the index of the extreme residual
outlier_index <- which.max(residuals)

# Filter that row out
# reading_df = reading_df[-outlier_index, ]
```

This looks much more normal than the other variables. Let’s try removing
the outlier on the far upper right:

Use forward and backward model selection and test-based procedures.

## Backward model

``` r
# Backward model
mult.fit = lm(reading_score ~ ., data = reading_df)
summary(mult.fit)
```

    ## 
    ## Call:
    ## lm(formula = reading_score ~ ., data = reading_df)
    ## 
    ## Residuals:
    ##     Min      1Q  Median      3Q     Max 
    ## -42.619  -8.198   0.513   9.190  26.974 
    ## 
    ## Coefficients:
    ##                              Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)                   55.2585     4.5288  12.202  < 2e-16 ***
    ## gendermale                    -8.3285     1.4547  -5.725 2.33e-08 ***
    ## ethnic_groupB                 -3.9179     2.7594  -1.420  0.15661    
    ## ethnic_groupC                 -1.0711     2.6485  -0.404  0.68618    
    ## ethnic_groupD                  2.4375     2.6293   0.927  0.35457    
    ## ethnic_groupE                  7.3359     3.0470   2.408  0.01661 *  
    ## parent_educhigh school        -0.3642     1.7851  -0.204  0.83847    
    ## parent_educsome college        2.2944     1.7955   1.278  0.20219    
    ## lunch_typestandard             8.8185     1.5099   5.841 1.25e-08 ***
    ## test_prepcompleted             6.5832     1.5576   4.227 3.08e-05 ***
    ## parent_marital_statusmarried   5.3775     2.0084   2.677  0.00779 ** 
    ## parent_marital_statussingle    2.2680     2.3377   0.970  0.33266    
    ## parent_marital_statuswidowed   5.7274     4.8206   1.188  0.23564    
    ## practice_sportsometimes       -0.1484     2.4601  -0.060  0.95195    
    ## practice_sportregularly       -2.6345     2.4980  -1.055  0.29236    
    ## is_first_childyes              3.0757     1.5713   1.957  0.05114 .  
    ## nr_siblings                    0.4985     0.4904   1.016  0.31014    
    ## transport_meansschool_bus      0.9690     1.4507   0.668  0.50460    
    ## wkly_study_hours5-10           0.8823     1.7442   0.506  0.61329    
    ## wkly_study_hours> 10           0.2577     2.2717   0.113  0.90976    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 13.27 on 329 degrees of freedom
    ## Multiple R-squared:  0.2609, Adjusted R-squared:  0.2182 
    ## F-statistic: 6.113 on 19 and 329 DF,  p-value: 2.353e-13

``` r
backward_model = step(mult.fit, direction = "backward")
```

    ## Start:  AIC=1823.96
    ## reading_score ~ gender + ethnic_group + parent_educ + lunch_type + 
    ##     test_prep + parent_marital_status + practice_sport + is_first_child + 
    ##     nr_siblings + transport_means + wkly_study_hours
    ## 
    ##                         Df Sum of Sq   RSS    AIC
    ## - wkly_study_hours       2      51.3 57965 1820.3
    ## - transport_means        1      78.5 57992 1822.4
    ## - parent_educ            2     472.3 58386 1822.8
    ## - nr_siblings            1     181.9 58095 1823.0
    ## - practice_sport         2     516.0 58429 1823.1
    ## <none>                               57914 1824.0
    ## - is_first_child         1     674.5 58588 1826.0
    ## - parent_marital_status  3    1506.1 59420 1826.9
    ## - ethnic_group           4    3892.6 61806 1838.7
    ## - test_prep              1    3144.6 61058 1840.4
    ## - gender                 1    5769.9 63683 1855.1
    ## - lunch_type             1    6004.7 63918 1856.4
    ## 
    ## Step:  AIC=1820.27
    ## reading_score ~ gender + ethnic_group + parent_educ + lunch_type + 
    ##     test_prep + parent_marital_status + practice_sport + is_first_child + 
    ##     nr_siblings + transport_means
    ## 
    ##                         Df Sum of Sq   RSS    AIC
    ## - transport_means        1      78.3 58043 1818.7
    ## - parent_educ            2     467.3 58432 1819.1
    ## - nr_siblings            1     172.9 58138 1819.3
    ## - practice_sport         2     510.7 58476 1819.3
    ## <none>                               57965 1820.3
    ## - is_first_child         1     673.4 58638 1822.3
    ## - parent_marital_status  3    1511.6 59476 1823.2
    ## - ethnic_group           4    3978.4 61943 1835.4
    ## - test_prep              1    3276.5 61241 1837.5
    ## - gender                 1    5832.2 63797 1851.7
    ## - lunch_type             1    6118.9 64084 1853.3
    ## 
    ## Step:  AIC=1818.74
    ## reading_score ~ gender + ethnic_group + parent_educ + lunch_type + 
    ##     test_prep + parent_marital_status + practice_sport + is_first_child + 
    ##     nr_siblings
    ## 
    ##                         Df Sum of Sq   RSS    AIC
    ## - parent_educ            2     458.7 58502 1817.5
    ## - nr_siblings            1     169.9 58213 1817.8
    ## - practice_sport         2     504.9 58548 1817.8
    ## <none>                               58043 1818.7
    ## - is_first_child         1     666.1 58709 1820.7
    ## - parent_marital_status  3    1505.2 59548 1821.7
    ## - ethnic_group           4    3966.7 62010 1833.8
    ## - test_prep              1    3239.2 61282 1835.7
    ## - gender                 1    5825.3 63868 1850.1
    ## - lunch_type             1    6085.9 64129 1851.5
    ## 
    ## Step:  AIC=1817.49
    ## reading_score ~ gender + ethnic_group + lunch_type + test_prep + 
    ##     parent_marital_status + practice_sport + is_first_child + 
    ##     nr_siblings
    ## 
    ##                         Df Sum of Sq   RSS    AIC
    ## - practice_sport         2     497.4 58999 1816.4
    ## - nr_siblings            1     170.1 58672 1816.5
    ## <none>                               58502 1817.5
    ## - is_first_child         1     666.4 59168 1819.4
    ## - parent_marital_status  3    1578.9 60081 1820.8
    ## - ethnic_group           4    4238.9 62741 1833.9
    ## - test_prep              1    3227.3 61729 1834.2
    ## - lunch_type             1    6066.2 64568 1849.9
    ## - gender                 1    6127.6 64629 1850.2
    ## 
    ## Step:  AIC=1816.44
    ## reading_score ~ gender + ethnic_group + lunch_type + test_prep + 
    ##     parent_marital_status + is_first_child + nr_siblings
    ## 
    ##                         Df Sum of Sq   RSS    AIC
    ## - nr_siblings            1     145.1 59144 1815.3
    ## <none>                               58999 1816.4
    ## - is_first_child         1     672.5 59672 1818.4
    ## - parent_marital_status  3    1621.3 60621 1819.9
    ## - ethnic_group           4    4294.1 63293 1833.0
    ## - test_prep              1    3218.5 62218 1833.0
    ## - lunch_type             1    6140.2 65139 1849.0
    ## - gender                 1    6253.2 65252 1849.6
    ## 
    ## Step:  AIC=1815.3
    ## reading_score ~ gender + ethnic_group + lunch_type + test_prep + 
    ##     parent_marital_status + is_first_child
    ## 
    ##                         Df Sum of Sq   RSS    AIC
    ## <none>                               59144 1815.3
    ## - is_first_child         1     605.9 59750 1816.9
    ## - parent_marital_status  3    1621.1 60765 1818.7
    ## - ethnic_group           4    4203.3 63348 1831.3
    ## - test_prep              1    3251.3 62396 1832.0
    ## - lunch_type             1    6070.6 65215 1847.4
    ## - gender                 1    6342.5 65487 1848.8

``` r
backward_model |> summary() |> broom::tidy() |> knitr::kable(digits = 5)
```

| term                         | estimate | std.error | statistic | p.value |
|:-----------------------------|---------:|----------:|----------:|--------:|
| (Intercept)                  | 57.49365 |   3.28666 |  17.49305 | 0.00000 |
| gendermale                   | -8.66167 |   1.44083 |  -6.01157 | 0.00000 |
| ethnic_groupB                | -4.43396 |   2.71394 |  -1.63377 | 0.10324 |
| ethnic_groupC                | -1.11451 |   2.61482 |  -0.42623 | 0.67021 |
| ethnic_groupD                |  2.44968 |   2.59378 |   0.94444 | 0.34562 |
| ethnic_groupE                |  7.06424 |   2.98606 |   2.36574 | 0.01856 |
| lunch_typestandard           |  8.81591 |   1.49897 |   5.88131 | 0.00000 |
| test_prepcompleted           |  6.55008 |   1.52181 |   4.30413 | 0.00002 |
| parent_marital_statusmarried |  5.38987 |   2.00056 |   2.69419 | 0.00741 |
| parent_marital_statussingle  |  1.90804 |   2.31673 |   0.82359 | 0.41075 |
| parent_marital_statuswidowed |  5.92910 |   4.80284 |   1.23450 | 0.21788 |
| is_first_childyes            |  2.88204 |   1.55109 |   1.85808 | 0.06403 |

The resulting model is:

reading_score ~ gender + ethnic_group + lunch_type + test_prep +
parent_marital_status + is_first_child

The following coeffients from that model are significant: - gendermale -
ethnic_groupE - lunch_typestandard - test_prepcompleted -
parent_marital_statusmarried

## Forward model

``` r
# Forward model
null_model = lm(reading_score ~ 1, data = reading_df)
forward_model = step(null_model, direction = "forward", scope = formula(mult.fit))
summary(forward_model)
```

The resulting model is:

reading_score ~ lunch_type + gender + test_prep + ethnic_group +
parent_marital_status + is_first_child

The following coefficients from that model are significant: -
lunch_typestandard - gendermale - test_prepcompleted - ethnic_groupE -
parent_marital_statusmarried

\|————-\|—————-\|——————\|—————\|
