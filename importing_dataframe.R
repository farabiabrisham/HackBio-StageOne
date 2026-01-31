#           HackBio 
# Data Vizualisation Internship 2026
# Author: Farabi Abrisham Ahmed

# # Importing Data Sets 

# Directly in R

# Read the CSV directly from the URL
bacteria_data <- read.csv("https://raw.githubusercontent.com/HackBio-Internship/2025_project_collection/refs/heads/main/bacteria.csv")

# Check the structure
str(bacteria_data)
head(bacteria_data)

# Save it locally if needed
write.csv(bacteria_data, "bacteria.csv", row.names = FALSE)


# # To the computer

# Specify the download URL and destination
url <- "https://raw.githubusercontent.com/HackBio-Internship/2025_project_collection/refs/heads/main/bacteria.csv"
destination <- "bacteria.csv"

# Download the file
download.file(url, destination, mode = "wb")

# Then read it
bacteria_data <- read.csv("bacteria.csv")


