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

# Create a density plot facetted by smokers
ggplot(ages, aes(x = AgeAtDeath, fill = factor(Smokes))) +
  geom_density() +
  facet_grid(Smokes ~ .)

# Summary statistics for AgeAtDeath
summary(ages$AgeAtDeath)

# Calculate MSE with h = 73
guess <- 73
mse <- with(ages, mean((AgeAtDeath - guess)^2))
print(mse) # Should output 32.991

# Explore different guesses and their associated MSE
guess.accuracy <- data.frame()

for (guess in seq(63, 83, by = 1)) {
  prediction.error <- with(ages,
                           mean((AgeAtDeath - guess) ^ 2))
  guess.accuracy <- rbind(guess.accuracy,
                          data.frame(Guess = guess,
                                     Error = prediction.error))
}

# Plot the relationship between guesses and MSE
ggplot(guess.accuracy, aes(x = Guess, y = Error)) +
  geom_point() +
  geom_line()
