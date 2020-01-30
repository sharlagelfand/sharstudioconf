# Annual demographics report. Welcome!

library(demographicsreport)

analysis_year <- 2019

# Step 1: Query the data!
query_and_save_demographic_data(
  analysis_year = analysis_year
)

# Step 2: Clean the data in 02_clean-demographics.R

# Step 3: Check data assumptions in 03_check-demographics-assumptions.R

# Step 4: Derive additional variables for report in 04_derive-variables.R

# Step 5: Run the report! Code is in 99_demographics-report.Rmd
