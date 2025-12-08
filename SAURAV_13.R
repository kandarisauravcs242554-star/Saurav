library(dplyr)

spotify_df <- spotify_data.clean[, c("track_id", "artist_name", "track_name")]

print("--- 1. Original Dataset ---")
print(spotify_df)

duplicates_report <- spotify_df %>%
  group_by(track_id, artist_name, track_name) %>%
  count() %>%
  filter(n > 1)

print("--- 2. Identification Report (Rows that are duplicated) ---")
print(duplicates_report)

clean_exact <- spotify_df %>%
  distinct()

print("--- 3. Removed Exact Duplicates (distinct) ---")
print(clean_exact)

unique_customers <- spotify_df %>%
  distinct(artist_name, .keep_all = TRUE)

print("--- 4. Unique Customers Only (Partial Duplicates removed) ---")
print(unique_customers)
