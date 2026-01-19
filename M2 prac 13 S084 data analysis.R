# Load the dataset
salary_data <- read.csv("Salary_Dataset.csv")

# Use only first 20 rows (less data)
small_data <- salary_data[1:20, ]

# View structure of reduced data
str(small_data)

# Apply linear regression
# Salary_USD = dependent variable
# Experience_Years = independent variable
model <- lm(Salary_USD ~ Experience_Years, data = small_data)

# Display summary
summary(model)

# Plot regression
plot(small_data$Experience_Years, small_data$Salary_USD,
     main = "Linear Regression using lm()",
     xlab = "Experience (Years)",
     ylab = "Salary (USD)")
abline(model, col = "red")
