library(dplyr)

df <- read.csv("Salary_Dataset.csv")

str(df)

df$Salary_Group <- cut(
  df$Salary,
  breaks = c(min(df$Salary), 30000, 60000, max(df$Salary)),
  labels = c("Low", "Medium", "High"),
  include.lowest = TRUE
)

table_gender_salary <- table(df$Gender, df$Salary_Group)

table_gender_salary

chi_result <- chisq.test(table_gender_salary)

chi_result
