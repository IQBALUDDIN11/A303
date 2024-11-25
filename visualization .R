# Load necessary libraries
library(ggplot2)

# Load the dataset
data <- read.csv("crimes.dataset.csv", stringsAsFactors = FALSE)

# Check and clean the dataset
data$Population <- as.numeric(gsub(",", "", data$Population))
data$Violent.crime.rate <- as.numeric(data$Violent.crime.rate)
data$Year <- as.factor(data$Year) # Convert Year to factor for better visualization

# Ensure data is loaded properly
str(data) # Check the structure of the dataset

# Create the bar graph
ggplot(data = data, aes(x = Year, y = Violent.crime.rate)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  labs(title = "Violent Crime Rate Over Years",
       x = "Year",
       y = "Violent Crime Rate (per 100,000 inhabitants)") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
