df <- cardata

print("---- 4. One-Sample t-test ----")

num_var <- names(df)[sapply(df, is.numeric)][1]

test_value <- 100

t_test_one <- t.test(df[[num_var]], mu = test_value)

print(t_test_one)
