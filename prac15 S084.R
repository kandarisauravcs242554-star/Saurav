library(dplyr)

# Load your Walmart Sales dataset
data <- read.csv("Walmart_Sales.csv")

print("--- Data Loaded ---")

print("--- OUTPUT OF str() ---")
str(data)

print("--- OUTPUT OF summary() [Before Factor Conversion] ---")
summary(data)

# Convert Category column to factor (change column name if needed)
data$Category <- as.factor(data$Category)

print("--- OUTPUT OF summary() [After Factor Conversion] ---")
summary(data)

# Specific summaries (change column names as needed)
avg_rating <- mean(data$Rating, na.rm = TRUE)
max_price <- max(data$Price, na.rm = TRUE)

print(paste("Average Rating:", avg_rating))
print(paste("Highest Price:", max_price))
