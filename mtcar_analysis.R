data(mtcars)
head(mtcars)
summary(mtcars)
pairs(mtcars[, c("mpg", "hp", "wt", "disp")],
      main = "Scatterplot Matrix")
cor(mtcars)
install.packages("corrplot")
library(corrplot)
corrplot(cor(mtcars), method = "color", tl.col = "black", tl.srt = 45)
boxplot(mpg ~ cyl, data = mtcars, 
        main = "MPG by Number of Cylinders", 
        xlab = "Number of Cylinders", 
        ylab = "Miles Per Gallon")
hist(mtcars$mpg, breaks = 10, col = "skyblue", 
     main = "Histogram of MPG", 
     xlab = "Miles Per Gallon")
model <- lm(mpg ~ hp, data = mtcars)
summary(model)
plot(mtcars$hp, mtcars$mpg,
     xlab = "Horsepower", ylab = "Miles Per Gallon",
     main = "MPG vs Horsepower with Regression Line")
abline(model, col = "red")

