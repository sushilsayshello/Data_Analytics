data(mtcars)
head(mtcars)
summary(mtcars)
pairs(mtcars[, c("mpg", "hp", "wt", "disp")],
      main = "Scatterplot Matrix")


