# Install and load ggplot2 package
install.packages("ggplot2")
library('ggplot2')

# Load the dataset
library(readr)
ages <- read_csv("~/Downloads/longevity1.csv")
View(ages)


# Verify that the dataset is loaded
head(ages)  # This should display the first few rows of the dataset

# View the dataset
View(ages)


# Load necessary library
install.packages("ggplot2")
library('ggplot2')

# Load the dataset (ensure the file path is correct)
ages <- read.csv("longevity.csv")

# Verify that the dataset is loaded correctly
if (exists("ages")) {
  print("Dataset loaded successfully!")
  print(head(ages))  # Print first few rows to verify content
} else {
  stop("Failed to load the dataset. Check the file path and name.")
}


