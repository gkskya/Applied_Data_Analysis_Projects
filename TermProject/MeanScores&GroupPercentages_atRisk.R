library(ggplot2)

# Create a data frame 
data <- data.frame(
  Scale = c("UPAS Below 12.5", "UPAS Above 12.5", "Normal Anxiety", "High Anxiety", "High Depression", "Above Normal Depression"),
  Percentage = c(66, 34, 74.3, 30.9, 25.7, 60.1)
)

# Create the bar chart
ggplot(data, aes(x = Scale, y = Percentage, fill = Scale)) +
  geom_bar(stat = "identity", position = "dodge", alpha = 0.7) +
  geom_text(aes(label = paste0(Percentage, "%")), vjust = -0.5, size = 4, color = "black", position = position_dodge(width = 0.9)) +
  labs(title = "Participants' Mean Scores and Group Percentages at Risk",
       x = "Groups",
       y = "Percentage") +
  theme_minimal() +
  scale_fill_brewer(palette = "Set2")  






