data(iris)

spotify_data.clean <- read.csv("C:/Saurav S084/Adv python for data science/spotify_data clean.csv")

print("--- Data Structure Before Transformation ---")
print(names(iris))
print(names(spotify_data.clean))

iris_clean <- iris[, c("Species", "Sepal.Length")]
names(iris_clean) <- c("Species", "Height")

flower_clean <- spotify_data.clean[, c("artist_name", "track_duration_min")]
names(flower_clean) <- c("Species", "Height")

iris_clean$Height <- as.numeric(iris_clean$Height)
flower_clean$Height <- as.numeric(flower_clean$Height)

combined_data <- rbind(iris_clean, flower_clean)

print("--- Combined Data Summary ---")
print(paste("Iris rows:", nrow(iris_clean)))
print(paste("Spotify rows:", nrow(flower_clean)))
print(paste("Total rows (Expected):", nrow(iris_clean) + nrow(flower_clean)))
print(paste("Total rows (Actual):", nrow(combined_data)))

print("--- Preview of Combined Data (Top and Bottom) ---")
print(head(combined_data))
print(tail(combined_data))
