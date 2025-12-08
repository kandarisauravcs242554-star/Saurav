restaurant_df <- read.csv("C:/Saurav S084/Adv python for data science/world_top_restaurants_dataset.csv")

str(restaurant_df)
summary(restaurant_df)

restaurant_df$Restaurant_Name <- as.factor(restaurant_df$Restaurant_Name)
restaurant_df$City <- as.factor(restaurant_df$City)
restaurant_df$Country <- as.factor(restaurant_df$Country)
restaurant_df$Cuisine_Type <- as.factor(restaurant_df$Cuisine_Type)
restaurant_df$Chef <- as.factor(restaurant_df$Chef)
restaurant_df$Signature_Dish <- as.factor(restaurant_df$Signature_Dish)
restaurant_df$Price_Category <- as.factor(restaurant_df$Price_Category)
restaurant_df$Star_Category <- as.factor(restaurant_df$Star_Category)
restaurant_df$Continent <- as.factor(restaurant_df$Continent)

Numeric_Column_Summary <- summary(restaurant_df[, c("Michelin_Stars",
                                                    "Average_Price_USD",
                                                    "Established_Year",
                                                    "Seating_Capacity",
                                                    "Rating",
                                                    "Years_Operating")])

Character_Summary <- summary(restaurant_df[, c("Restaurant_Name",
                                               "City",
                                               "Country",
                                               "Cuisine_Type",
                                               "Chef",
                                               "Signature_Dish",
                                               "Price_Category",
                                               "Star_Category",
                                               "Continent")])

Missing_Values <- colSums(is.na(restaurant_df))
Unique_Values <- sapply(restaurant_df, function(x) length(unique(x)))

