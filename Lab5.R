# create a list of baskets
market_basket <-
  list(
    c("apple", "beer", "rice", "meat"),
    c("apple", "beer", "rice"),
    c("apple", "beer"),
    c("apple", "pear"),
    c("milk", "beer", "rice", "meat"),
    c("milk", "beer", "rice"),
    c("milk", "beer"),
    c("milk", "pear")
  )

# set transaction names (T1 to T8)
names(market_basket) <- paste("T", c(1:8), sep = "")

install.packages("arules") # rule generation
install.packages("arulesViz") #rule visualization
library(arules)
library(arulesViz)

trans <- as(market_basket, "transactions")
dim(trans)
itemLabels(trans)
summary(trans)
image(trans)
itemFrequencyPlot(trans, topN=10, cex.names=1)

#Min Support 0.3, confidence as 0.5.
rules <- apriori(trans,
                 parameter = list(supp=0.3, conf=0.5,
                                  maxlen=10,
                                  minlen=2,
                                  target= "rules"))
summary(rules)
inspect(rules)
#rhs
beer_rules_rhs <- apriori(trans,
                          parameter = list(supp=0.3, conf=0.5,
                                           maxlen=10,
                                           minlen=2),
                          appearance = list(default="lhs", rhs="beer"))


inspect(beer_rules_rhs)
# lhs
beer_rules_lhs <- apriori(trans,
                          parameter = list(supp=0.3, conf=0.5,
                                           maxlen=10,
                                           minlen=2),
                          appearance = list(lhs="beer", default="rhs"))
inspect(beer_rules_lhs)


library(arulesViz)
inspect(rules)
plot(rules, method = "graph", engine = "htmlwidget")


library(arules)
library(arulesViz)
data("Groceries")
class(Groceries)
dim(Groceries)
itemLabels(Groceries)
summary(Groceries)
inspect(head(Groceries, 5))
rules <- apriori(Groceries,
                 parameter = list(supp=0.005, conf=0.5,
                                  maxlen=10,
                                  minlen=2,
                                  target= "rules"))
summary(rules)
inspect(rules)
plot(rules)
print(rules@quality)
print(rules@quality["confidence"])
print(rules@quality["support"])
plot(rules, measure = c("confidence","coverage"))
plot( head(rules, n = 10, by = "confidence"),
      method = "graph", engine = "htmlwidget")

wholemilk_rules <- apriori(data=Groceries,
                           parameter=list (supp=0.02,conf = 0.08),
                           appearance = list (rhs="whole milk"))
inspect(wholemilk_rules)
plot(wholemilk_rules)
plot(wholemilk_rules, method = "graph", engine = "htmlwidget")


# Load necessary libraries
library(arules)
library(arulesViz)

# Load the dataset
data("Groceries")

# Create the association rules
wholemilk_rules <- apriori(data = Groceries,
                           parameter = list(supp = 0.02, conf = 0.08),
                           appearance = list(rhs = "whole milk"))

# Inspect the rules
inspect(wholemilk_rules)

# Plot the rules
plot(wholemilk_rules, method = "graph", engine = "htmlwidget")


