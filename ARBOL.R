install.packages("titanic")
library(tidyverse)
library(titanic)
data("titanic_train")
head(titanic_train)
install.packages("rpart")
install.packages("rattle")
install.packages("rpart.plot")
library(rpart)
library(rattle)
library(rpart.plot)

arbol <- rpart(
  formula = Survived ~ Sex + Age,
  data = titanic_train,
  method = "class"
)

fancyRpartPlot(arbol)

pred_arbol <- predict(arbol, type = "class")


