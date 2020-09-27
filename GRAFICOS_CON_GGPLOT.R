library(ggplot2)
data("iris")
head(iris)
############################
# GGPLOT PUNTOS Y TENDENCIA#
############################


ggplot (data = iris, 
       mapping = aes(x = Sepal.Length,
                     y = Sepal.Width,
                    color = Species))  +
  #color species hace que sea del color de la flor
    geom_point () + 
    geom_smooth (method = "lm")
  #geom smooth hace que haya como una linea de tendencia
  #method lm hace que la linea sea recta sin este 
  #queda curva la linea de tendencia


#################################
# GGPLOT LINEA Y COMPORTAMIENTO #
#(SE PARECE A ELECROCARDIOGRAMA)#
#################################

ggplot(data = iris,
       mapping = aes(x = rep(1:50,3),
                     #es vector del 1 al 50 y se 
                     #repite 3 veces
                     y = Petal.Width,
                     color = Species)) +
  geom_line()


###############################
# GGPLOT BOXPLOT Y SUS PUNTOS #
###############################

ggplot(data = iris, 
       mapping = aes(x = Species,
                     y = Petal.Width,
                     fill = Species)) +
  #fill es el color de relleno
  geom_boxplot() +
  geom_jitter()
  #geom_jitter hace que se vean los puntos
