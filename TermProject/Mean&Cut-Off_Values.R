library(ggplot2)

# data frame with the mean scores and cutoff points
data <- data.frame(
  Scale = c("UPA", "GAD-7", "BDI-PC"),
  Mean_Score = c(10.5, 5.5, 3.8),
  Cutoff = c(36, 21, 19)
)

# the bar chart
ggplot(data, aes(x = Scale)) +
  geom_bar(aes(y = Mean_Score, fill = "Mean Score"), stat = "identity", position = position_dodge(width = 0.7), alpha = 0.7) +
  geom_bar(aes(y = Cutoff, fill = "Cut-Off Value"), stat = "identity", position = position_dodge(width = 0.7), alpha = 0.7) +
  scale_fill_manual(values = c("#5D478B", "#AB82FF"), name = "scale", labels = c("Mean Score", "Cut-Off Value")) +  
  geom_text(aes(y = Mean_Score + 0.5, label = Mean_Score), vjust = -0.5, size = 4, color = "black") +
  geom_text(aes(y = Cutoff + 0.5, label = Cutoff), vjust = -0.5, size = 4, color = "black") +
  labs(title = "The mean and cut-off values of the scales",
       x = "Scales",
       y = "Scores") +
  theme_minimal() +
  theme(legend.position = "top")









