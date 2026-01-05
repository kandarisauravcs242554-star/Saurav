library(dplyr)

# Load the dataset
df <- read.csv("world_top_restaurants_dataset.csv")

# View structure
str(df)

# Convert categorical variable to factor
df$Cuisine_Type <- as.factor(df$Cuisine_Type)

# One-Way ANOVA
anova_model <- aov(Average_Price_USD ~ Cuisine_Type, data = df)

# Display ANOVA table
summary(anova_model)

# Boxplot visualization
boxplot(
  Average_Price_USD ~ Cuisine_Type,
  data = df,
  col = c("lightblue", "lightgreen", "lightpink", "lightyellow"),
  main = "Average Price Comparison Across Cuisine Types",
  xlab = "Cuisine Type",
  ylab = "Average Price (USD)"
)

# Post-hoc test
TukeyHSD(anova_model)
