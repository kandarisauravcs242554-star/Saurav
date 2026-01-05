library(dplyr)

df <- read.csv("youtube-top-100-songs-2025.csv")

str(df)

df$categories <- as.factor(df$categories)

df$Views_Group <- as.factor(
  ifelse(df$view_count > median(df$view_count), "High", "Low")
)

anova_model <- aov(view_count ~ categories * Views_Group, data = df)

summary(anova_model)
