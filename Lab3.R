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
