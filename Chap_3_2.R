
#Replace empty embarked cells with "S"
titanic_original <- ifelse(is.na(titanic_original$embarked), "S", titanic_original$embarked)

#Replace missing ages with mean of age
ave_age <- mean(titanic_original$age[!is.na(titanic_original$age)])
titanic_original$age <- ifelse(is.na(titanic_original$age), ave_age, titanic_original$age)

#Replace missing Boat values with string "None"
titanic_original$boat <- ifelse(is.na(titanic_original$boat), "None", titanic_original$boat)

#Create column to specify if passenger had a cabin number or not
titanic_original <- titanic_original %>% 
  mutate(has_cabin_number = (as.integer(!is.na(cabin))))