# ==============================================================================
# 1. IMPORT DATASET
# ==============================================================================
library(dplyr)

health <- read.csv("Global_Health.csv")

print("--- Original Dataset (First 3 Rows) ---")
print(head(health, 3))


# ==============================================================================
# 2. SELECTING VARIABLES (Keeping Columns)
# ==============================================================================

# ✔ Select specific columns (EXACT names)
selected_cols <- health %>%
  select(Country, Population, Life_Expectancy)

print("--- Selected Specific Columns ---")
print(head(selected_cols, 3))


# ✔ Select range of columns (EXACT names)
range_cols <- health %>%
  select(Country:GDP)

print("--- Selected Range: Country to GDP ---")
print(head(range_cols, 3))


# ✔ Select columns starting with "C"
starts_with_c <- health %>%
  select(starts_with("C"))   # Country, Continent, Child_Mortality

print("--- Columns starting with 'C' ---")
print(head(starts_with_c, 3))


# ==============================================================================
# 3. DROPPING VARIABLES (Removing Columns)
# ==============================================================================

# ✔ Drop one column
drop_one <- health %>%
  select(-HIV_Rate)

print("--- Dropped 'HIV_Rate' column ---")
print(names(drop_one))


# ✔ Drop multiple columns
drop_multiple <- health %>%
  select(-GDP, -Child_Mortality)

print("--- Dropped 'GDP' & 'Child_Mortality' ---")
print(names(drop_multiple))


# ✔ Drop a range of columns
drop_range <- health %>%
  select(-(ImmunizationRate:Child_Mortality))

print("--- Dropped from ImmunizationRate to Child_Mortality ---")
print(names(drop_range))
