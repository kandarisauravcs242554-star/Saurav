install.packages("lubridate")
library(lubridate)
library(dplyr)

car_df <- read.csv("C:/Saurav S084/Adv python for data science/cardata.csv")

dates_df <- car_df %>%
  mutate(Date_String = paste0(Year, "-01-01"))

processed_data <- dates_df %>%
  mutate(
    Actual_Date = ymd(Date_String),
    Year_Num = year(Actual_Date),
    Month_Num = month(Actual_Date),
    Month_Name = month(Actual_Date, label = TRUE),
    Day_Num = day(Actual_Date),
    Weekday_Num = wday(Actual_Date),
    Weekday_Name = wday(Actual_Date, label = TRUE, abbr = FALSE),
    Quarter = quarter(Actual_Date),
    Day_of_Year = yday(Actual_Date)
  )

print("--- Data with Extracted Date Components ---")
print(processed_data)

current_time <- now()

print("--- Current Time Extraction ---")
print(paste("Current Year:", year(current_time)))
print(paste("Current Hour:", hour(current_time)))
print(paste("Current Minute:", minute(current_time)))
