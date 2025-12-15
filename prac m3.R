df <- cardata

print("---- 3. Cross-Tabulation ----")

cat_vars <- names(df)[!sapply(df, is.numeric)]

cross_tab <- table(df[[cat_vars[1]]], df[[cat_vars[2]]])

print(cross_tab)
