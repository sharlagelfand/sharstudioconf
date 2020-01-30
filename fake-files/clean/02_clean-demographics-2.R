read demographics data

analysis_year <- 2019

# Check for any cases where province is "Ontario" but outside_ontario is TRUE.
# Some of them may have province wrong, some may have outside_ontario wrong.

demographics_data <- demographics_data %>%
  filter(province == "ON",
         outside_ontario)

# Email Carla and ask to check paper files to confirm which is correct
# Based on response, update any manually until database is updated

demographics_data <- demographics_data %>%
  mutate(outside_ontario = ifelse(id = 12345,
                                  TRUE,
                                  outside_ontario))
