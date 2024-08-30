install.packages("MindOnStats")
library(MindOnStats)
3 + 4
9 / 8
x <- c(10.4, 5.6, 3.1, 6.4, 21.7)
typeof(x)
length(x)
y <- c(x,0,x)
z <- 2*x + 1
mean(x)
MEAN(x)
z <- x > 13
!z
x > 13 & x < 13
x > 13 | x < 13
labs <- paste0(c("X","Y"), 1:10)
s = c("aa", "bb", "cc", "dd", "ee")
s[3]
x <- x[1:10]
y <- x[!is.na(x)]
x[-c(2,4)]
state <-c("tas", "sa", "qld", "nsw", "nsw", "nt", "wa", "wa", "qld",
          "vic","nsw", "vic", "qld", "qld", "sa", "tas", "sa", "nt", "wa", "vic", "qld",
          "nsw", "nsw", "wa", "sa", "act", "nsw", "vic", "vic", "act")
statef <- factor(state)
levels(statef)
Lst <- list(name="Fred", wife="Mary", no.children=3, child.ages=c(4,7,9))
Lst[[1]]
Lst$wife
class(bikes2)
Str(bikes2)
summary(Bike)
summary(bikes2)        
dim(Bike)
dim(bikes2)
help(hist)
help( library)
help.search("time series")
