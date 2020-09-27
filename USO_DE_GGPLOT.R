disney <- c(11, 13, 11, 8, 12, 11, 12, 8, 10)
year <- c("2010", "2011", "2012", "2013",
          "2014", "2015", "2016", "2017", "2018")
plot(x = year, y = disney)

library(ggplot2)
peliculas <- data.frame(year, disney)

########
#GGPLOT#
########
ggplot(data = peliculas,
       mapping = aes(x = year, y = disney))+
    geom_point() + 
    labs(title = "Peliculas de Disney")
