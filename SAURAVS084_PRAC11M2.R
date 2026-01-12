library(ggplot2)

StudentsPerformance <- read.csv("C:/Users/mvlui/Downloads/StudentsPerformance.csv")

head(StudentsPerformance)
str(StudentsPerformance)

ggplot(StudentsPerformance, aes(x = math.score)) +
  geom_histogram(binwidth = 5) +
  labs(
    title = "Histogram of Math Scores",
    x = "Math Score",
    y = "Frequency"
  ) +
  theme_minimal()

ggplot(StudentsPerformance, aes(x = math.score)) +
  geom_histogram(binwidth = 5) +
  facet_wrap(~ gender) +
  labs(
    title = "Histogram of Math Scores by Gender",
    x = "Math Score",
    y = "Frequency"
  ) +
  theme_minimal()

ggplot(StudentsPerformance, aes(y = math.score)) +
  geom_boxplot() +
  labs(
    title = "Box Plot of Math Scores",
    y = "Math Score"
  ) +
  theme_minimal()

ggplot(StudentsPerformance, aes(x = gender, y = math.score)) +
  geom_boxplot() +
  labs(
    title = "Box Plot of Math Scores by Gender",
    x = "Gender",
    y = "Math Score"
  ) +
  theme_minimal()
