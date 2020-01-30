read demographics data

analysis_year <- {{{ analysis_year }}}

# Check for any cases where province is "Ontario" but outside_ontario is TRUE. Some of them may have province wrong, some may have outside_ontario wrong.

# Email Carla and ask to check paper files to confirm which is correct

demographics_data <- demographics_data %>%
  filter(province == "ON",
         outside_ontario)

