library(dplyr)
library(tidyr)

# ==============================================================================
# 1. SETUP: Create and Import Data
# ==============================================================================

car_df <- read.csv("C:/Saurav S084/Adv python for data science/cardata.csv",
                   na.strings = c("", "NA")) %>%
  mutate(CarID = row_number()) %>%       # ID for tracking rows during pivots
  select(CarID, Car_Name, Year, Selling_Price, Present_Price, Kms_Driven)

print("--- 1. Original Wide Data ---")
print(head(car_df))

# ==============================================================================
# 2. PIVOT_LONGER (Wide to Long)
# ==============================================================================

# Scenario: Combine 'Selling_Price', 'Present_Price', and 'Kms_Driven'
# into one 'Value' column with label column 'Metric'

long_df <- car_df %>%
  pivot_longer(
    cols = c(Selling_Price, Present_Price, Kms_Driven),
    names_to = "Metric",
    values_to = "Value"
  )

print("--- 2. Long Format (pivot_longer) ---")
print(head(long_df, 10))

# ==============================================================================
# 3. PIVOT_WIDER (Long to Wide)
# ==============================================================================

wide_df <- long_df %>%
  pivot_wider(
    names_from = Metric,
    values_from = Value
  )

print("--- 3. Wide Format (Back to Original) ---")
print(head(wide_df))

# ==============================================================================
# 4. ADVANCED EXAMPLE (Reshaping for Reporting)
# ==============================================================================

# Example: Spread car categories based on Fuel_Type
# Rows = CarID, Columns = Fuel Types, Values = Selling_Price

df_clean <- car_df %>%
  mutate(Fuel_Type = ifelse(is.na(Fuel_Type), "Unknown", Fuel_Type))

fuel_pivot <- df_clean %>%
  select(CarID, Fuel_Type, Selling_Price) %>%
  pivot_wider(
    names_from = Fuel_Type,
    values_from = Selling_Price
  )

print("--- 4. Fuel Type Pivot (Spreading Fuel_Type Columns) ---")
print(head(fuel_pivot))
