library(dplyr)

df <- cardata

print("---- 2. Frequency Tables ----")

cat_var <- names(df)[!sapply(df, is.numeric)][1]

print("Frequency Table using table():")
print(table(df[[cat_var]]))

print("Frequency Table using count():")
print(df %>% count(.data[[cat_var]]))
