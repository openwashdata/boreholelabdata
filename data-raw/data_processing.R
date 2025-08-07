# Description ------------------------------------------------------------------
# R script to process uploaded raw data into a tidy, analysis-ready data frame
# Load packages ----------------------------------------------------------------
## Run the following code in console if you don't have the packages
## install.packages(c("usethis", "fs", "here", "readr", "readxl", "openxlsx"))
library(usethis)
library(fs)
library(here)
library(readr)
library(dplyr)
library(readxl)
library(openxlsx)
library(lubridate)
library(ggplot2)
library(maps)

# Load Data --------------------------------------------------------------------
# Load the necessary data from a CSV file
data_in <- readr::read_csv("data-raw/borrehole lab chemistry.csv")

# (Optional) Read and clean the codebook if needed (commented out for now)
# codebook <- readxl::read_excel("data-raw/codebook.xlsx") %>%
#   clean_names()

# Tidy data --------------------------------------------------------------------
# Remove rows where the 'latitude' column contains NULL (NA) values
data_in <- data_in %>%
  filter(!is.na(latitude))


# Function to check for non-UTF-8 characters in character columns
check_utf8 <- function(df) {
  # Identify columns with invalid UTF-8 characters
  invalid_cols <- sapply(df, function(column) {
    if (!is.character(column)) return(FALSE) # Skip non-character columns
    any(sapply(column, function(x) {
      if (is.na(x)) return(FALSE) # Ignore NA values
      !identical(iconv(x, from = "UTF-8", to = "UTF-8"), x)
    }))
  })

  # Extract the column names with invalid characters
  bad_cols <- names(df)[invalid_cols]

  # Output a message depending on whether non-UTF-8 characters were found
  if (length(bad_cols) > 0) {
    message("Non-UTF-8 characters detected in columns: ",
            paste(bad_cols, collapse = ", "))
  } else {
    message("No non-UTF-8 characters found.")
  }
}

# Convert character columns from Latin1 encoding to UTF-8, removing problematic
#   characters
data_in[] <- lapply(data_in, function(x) {
  if (is.character(x)) {
    # Convert to UTF-8 and remove problematic characters
    iconv(x, from = "latin1", to = "UTF-8", sub = "")
  } else {
    x
  }
})

# Re-check the data for non-UTF-8 characters after the conversion
check_utf8(data_in)

boreholelabdata <- data_in
#========================================
# Load required libraries
library(dplyr)
library(tidyr)
library(ggplot2)

# Select relevant compliance columns and reshape to long format
compliance_long <- boreholelabdata %>%
  select(fluoride_within_standards,
         nitrate_within_standards,
         ph_within_mw_standards) %>%
  pivot_longer(cols = everything(),
               names_to = "parameter",
               values_to = "compliance") %>%
  filter(!is.na(compliance)) %>%
  mutate(parameter = case_when(
    parameter == "fluoride_within_standards" ~ "Fluoride",
    parameter == "nitrate_within_standards" ~ "Nitrate",
    parameter == "ph_within_mw_standards" ~ "pH",
    TRUE ~ parameter
  ))

# Count compliance status by parameter
compliance_summary <- compliance_long %>%
  group_by(parameter, compliance) %>%
  summarise(count = n(), .groups = "drop")

# Plot stacked bar chart
ggplot(compliance_summary, aes(x = parameter, y = count, fill = compliance)) +
  geom_bar(stat = "identity") +
  scale_fill_manual(values = c("Yes" = "green", "No" = "red")) +
  labs(
    title = "Water Quality Compliance Summary",
    x = "Parameter",
    y = "Number of Samples",
    fill = "Within Standards"
  ) +
  theme_minimal()

#============================

# Export Data ------------------------------------------------------------------
usethis::use_data(boreholelabdata, overwrite = TRUE)
fs::dir_create(here::here("inst", "extdata"))
readr::write_csv(boreholelabdata,
                 here::here("inst", "extdata", paste0("boreholelabdata", ".csv")))
openxlsx::write.xlsx(boreholelabdata,
                     here::here("inst", "extdata", paste0("boreholelabdata",
                                                          ".xlsx")))




