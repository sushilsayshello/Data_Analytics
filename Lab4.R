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



