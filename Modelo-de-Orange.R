library(tidyverse)
data("Orange")
head(Orange)
Orange %>% 
  ggplot(aes(x = age,
             y = circumference))+
  geom_point()+
  geom_abline(intercept = 17,
              slope = 0.1,
              col = "purple")+
  geom_vline(xintercept = 800,
             col = "red")
dias <- 800
medida <- 0.1*dias + 17
lm(circumference ~ age, data = Orange)
