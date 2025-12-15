library(psych)

df <- cardata

print("---- 1. Descriptive Statistics ----")

print("Summary of a numeric variable:")
summary(df[sapply(df, is.numeric)][,1])

print("Detailed Description of numeric variables:")
describe(df[sapply(df, is.numeric)])
