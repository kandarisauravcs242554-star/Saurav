install.packages("lubridate")
install.packages("dplyr")

library(lubridate)
library(dplyr)

# Read your Walmart Sales dataset
data <- read.csv("Walmart_Sales.csv")

# Ensure the column name matches the CSV (change if needed)
# Suppose the date column is named "Date"
data_processed <- data %>%
  mutate(
    Actual_Date = ymd(Date),
    Year_Num = year(Actual_Date),
    Month_Num = month(Actual_Date),
    Month_Name = month(Actual_Date, label = TRUE),
    Day_Num = day(Actual_Date),
    Weekday_Num = wday(Actual_Date),
    Weekday_Name = wday(Actual_Date, label = TRUE, abbr = FALSE),
    Quarter = quarter(Actual_Date),
    Day_of_Year = yday(Actual_Date)
  )

print(data_processed)

current_time <- now()
print(paste("Current Year:", year(current_time)))
print(paste("Current Hour:", hour(current_time)))
print(paste("Current Minute:", minute(current_time)))
