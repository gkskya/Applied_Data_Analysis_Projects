library(ggplot2)

# Data
months <- c("March", "April", "May", "June", "July", "August", "September", "October", "November", "December")
patients <- c(36160, 98674, 30044, 47261, 42214, 54530, 43120, 57547, 157141, 163350)
data <- data.frame(Month = factor(months, levels = months), Patients = patients)

# Create a line graph with custom colors, background, and grid
ggplot(data, aes(x = Month, y = Patients, group = 1)) +
  geom_line(color = "#0000EE") +
  geom_point(color = "#0000EE", size = 4) +
  labs(title = "Number of COVID-19 patients per Month in Turkiye in 2020",
       x = "Month",
       y = "Number of Patients") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1),
        panel.background = element_rect(fill = "#F0FFFF")) + # Set background color
  theme(plot.background = element_rect(fill = "#F0FFFF")) + # Set plot background color
  theme(panel.grid.major = element_line(color = "black", size = 0.5, linetype = "dotted")) + 
  geom_vline(xintercept = seq(1.5, length(months) - 0.5, by = 1), color = "black", alpha = 0.3) + 
  geom_hline(yintercept = seq(0, max(data$Patients), by = 25000), color = "black", alpha = 0.3) + 
  scale_y_continuous(limits = c(0, max(data$Patients) + 25000), breaks = seq(0, max(data$Patients) + 25000, by = 25000)) + 
  theme(panel.grid.minor = element_blank()) 
