library(readr)
X01_heights_weights_genders1 <- read_csv("Downloads/Data Analytics/Lab 2/01_heights_weights_genders1.csv")
View(X01_heights_weights_genders1)
class(heights.weights)
str(heights.weights)
class(heights.weights)
getwd()
list.files()
heights.weights <- read.csv("~/Downloads/Data Analytics/Lab 2/01_heights_weights_genders1.csv")
if (exists("heights.weights")) {
  print("Data imported successfully")
  class(heights.weights)
  str(heights.weights)
} else {
  print("Data import failed. Please check the file path and name.")
}
class(heights.weights)
str(heights.weights)
summary(heights.weights)
heights <- with(heights.weights, Height)
summary(heights)
dim(heights.weights)
quantile(heights)
quantile(heights, probs = seq(0, 1, by = 0.20))
var(heights)
sd(heights)
data()
install.packages("palmerpenguins")
library(palmerpenguins)
data(penguins)
# Remove rows with any missing values
Penguins_new <- na.omit(penguins)

# Extract rows where any column contains a missing value
penguins[rowSums(is.na(penguins)) > 0, ]

# Extract rows where a specific column contains missing values
penguins[is.na(penguins$bill_length_mm), ]

# Drop columns where all values are missing
data_new <- penguins[rowSums(is.na(penguins)) > 0, ]
data_new <- data_new[, colSums(is.na(data_new)) < ncol(data_new)]

# Extract columns that have at least one missing value
data_new[, colSums(is.na(data_new)) > 0]

# Delete columns that have at least one missing value
data_new <- data_new[, colSums(is.na(data_new)) == 0]

# Delete rows that have at least one missing value
data_new <- data_new[rowSums(is.na(data_new)) == 0, ]

