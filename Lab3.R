data(HoldingBreath, package="MindOnStats")
data(HoldingBreath)
install.packages("MindOnStats")
library(MindOnStats)
data(HoldingBreath, package="MindOnStats")
head(HoldingBreath)
data(HoldingBreath)
hist(HoldingBreath$Time, xlab = "Time (seconds)")
boxplot(Time ~ Gender, data = HoldingBreath, horizontal = TRUE,
        xlab = "Time (seconds)", main = "Holding breath time")
plot(Time ~ Age, data=HoldingBreath, xlab = "Age (years)", ylab = "Time
(seconds)", main = "Holding Breath, Time vs Age")
library(ggplot2)
ggplot(HoldingBreath,
       aes(x=Age,
           y=Time,
           color=Exercise))+
  geom_point()
p1 <-ggplot(HoldingBreath,
            aes(x=Age,
                y=Time,
                color=Exercise))
p1 + geom_point() + geom_smooth()
p2 <-ggplot(HoldingBreath,
            aes(x=Gender,
                y=Time))
p2 +geom_boxplot()
p2 +geom_boxplot() +geom_point()
