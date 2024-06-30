#Göksu Kaya

# Libraries
library(ggplot2)
library(dplyr)

# Load dataset
data(ChickWeight)
ChickWeight

# Check for missing values
if (anyNA(ChickWeight)) {
  ChickWeight <- na.omit(ChickWeight) 
  print("NA values removed.")
} else {
  print("There are no missing values in the 'ChickWeight' dataset.")
}

# Line plot showing weight gain over time for Chick ID 1 
ggplot(subset(ChickWeight, Chick == 1), aes(x = Time, y = weight)) +
  geom_line() +
  labs(title = "Weight Gain over Time for Chick ID 1")

# Boxplot for 'Diet' and 'weight' columns 
ggplot(ChickWeight, aes(x = factor(Diet), y = weight, fill = factor(Diet))) +
  geom_boxplot() +
  labs(title = "Diet and Weight Comparison")

# Data manipulation 
# Grouping by 'Diet' and summarizing 'weight' for each diet group
ChickWeight %>%
  group_by(Diet) %>%
  summarise(avg_weight = mean(weight),
            max_weight = max(weight))

# Creating a new column 'weight_gain' 
ChickWeight <- ChickWeight %>%
  mutate(weight_gain = weight - lag(weight, default = first(weight)))
head(ChickWeight)
