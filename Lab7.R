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

# Train the Naive Bayes model using 10-fold cross-validation
model = train(x=x,
              y=y,
              method='nb',
              trControl=trainControl(method='cv', number=10))
print(model)

# Predict class probabilities and class labels
pred_y <- predict(model, x)

# Evaluate the model with a confusion matrix
table(pred_y, y)
confusionMatrix(pred_y, y)

# ================================
# Naive Bayes on the Spam dataset
# ================================

# Load the spam dataset and split into training and testing sets
data(spam)
set.seed(23489)
train_index <- sample(1:nrow(spam), 0.7 * nrow(spam))

# Create training and testing sets
train <- spam[train_index, ]
test <- spam[-train_index, ]

# Attributes and labels
xTrain = train[, -58]  # Attributes
yTrain = train$type    # Labels
xTest = test[, -58]    # Test Attributes
yTest = test$type      # Test Labels

# Train the Naive Bayes model with 10-fold cross-validation
model = train(x=xTrain,
              y=yTrain,
              method='nb',
              trControl=trainControl(method='cv', number=10))
print(model)

# Predict class labels on the test set
pred_y_test <- predict(model, xTest)

# Evaluate the model with a confusion matrix
table(pred_y_test, yTest)
prop.table(table(pred_y_test, yTest))
confusionMatrix(pred_y_test, yTest)

# ================================
# Logarithmic Feature Exploration
# ================================


