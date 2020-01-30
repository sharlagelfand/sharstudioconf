library(dplyr)
library(myorganizationsrpackage)

con <- connect_database()

all_members_with_positions <- tbl(con, "MembershipPositions") %>%
  filter(membership_start <= "2019-12-31" &
    (membership_end > "2019-12-31" | is.na(membership_end))) %>%
  select(member_id, birthdate, gender, city, province, country) %>%
  mutate(
    age = "2019-12-31" - birthdate,
    works_in_ontario = province == "ON" & country == "CA"
  ) %>%
  select(-birthdate)

# all_members_with_positions %>%
#   count(works_in_ontario)

distinct_members <- all_members_with_positions %>%
  distinct(member_id, age, gender)

# distinct_members %>%
#   count(age)
#
# distinct_members %>%
#   count(gender)

saveRDS(distinct_members, "demographics.rds")
