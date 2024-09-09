# Install and load required libraries
install.packages('caret')
install.packages('kernlab')
library(caret)
library(kernlab)
# ================================
# Naive Bayes on the Iris dataset
# ================================

# Load the iris dataset and separate attributes and labels
data("iris")
x = iris[,-5]  # Attributes
y = iris$Species  # Labels

