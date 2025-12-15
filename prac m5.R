df <- cardata

print("---- 5. Independent Two-Sample t-test ----")

num_var <- names(df)[sapply(df, is.numeric)][1]

cat_vars <- names(df)[!sapply(df, is.numeric)]

binary_var <- cat_vars[
  sapply(cat_vars, function(x) length(unique(df[[x]])) == 2)
][1]

df[[binary_var]] <- as.factor(df[[binary_var]])

t_test_two <- t.test(df[[num_var]] ~ df[[binary_var]])

print(t_test_two)
