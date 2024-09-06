install.packages("palmerpenguins")
library(palmerpenguins)
data(penguins)
dim(penguins)
str(penguins)
colSums(is.na(penguins))
penguins <- na.omit(penguins)
library(ggplot2)
ggplot(penguins,aes(x=bill_length_mm,y=flipper_length_mm,colour=species
))+geom_point(size=2)
set.seed(42)
cluster.penguins <- kmeans(x=penguins[,c(3,5)],centers=2,iter.max =
                             50)
