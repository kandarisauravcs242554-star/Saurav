library(ggplot2)
library(dplyr)

StudentsPerformance <- read.csv("C:/Users/mvlui/Downloads/StudentsPerformance.csv")

str(StudentsPerformance)
head(StudentsPerformance)

ggplot(StudentsPerformance, aes(x = gender)) +
  geom_bar() +
  labs(
    title = "Number of Students by Gender",
    x = "Gender",
    y = "Number of Students"
  ) +
  theme_minimal()

ggplot(StudentsPerformance, aes(x = parental.level.of.education)) +
  geom_bar() +
  labs(
    title = "Students by Parental Education Level",
    x = "Parental Education",
    y = "Number of Students"
  ) +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

ggplot(StudentsPerformance, aes(x = gender, y = math.score)) +
  geom_boxplot() +
  labs(
    title = "Math Score Distribution by Gender",
    x = "Gender",
    y = "Math Score"
  ) +
  theme_minimal()

ggplot(StudentsPerformance, aes(x = reading.score, y = writing.score)) +
  geom_point(alpha = 0.7) +
  labs(
    title = "Reading Score vs Writing Score",
    x = "Reading Score",
    y = "Writing Score"
  ) +
  theme_minimal()

ggplot(StudentsPerformance, aes(x = lunch)) +
  geom_bar() +
  labs(
    title = "Number of Students by Lunch Type",
    x = "Lunch Type",
    y = "Number of Students"
  ) +
  theme_minimal()

ggplot(StudentsPerformance, aes(x = math.score)) +
  geom_histogram(bins = 20) +
  labs(
    title = "Distribution of Math Scores",
    x = "Math Score",
    y = "Count"
  ) +
  theme_minimal()
