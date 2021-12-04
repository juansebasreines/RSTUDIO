#################
#   DATAFRAME   #
#################

nombre_peliculas <- c("sherk","sherk 2"
                      , "sherk 3","sherk 4")
puntuacion <- c(6.2,7.5,9.1,4.1)
later_2005 <- c(FALSE, FALSE, TRUE, TRUE)

#CREAR DATAFRAME

moviesdf <- data.frame(nombre_peliculas, puntuacion, later_2005)
names(moviesdf) <- c("NOMBRE", "PUNTUACION", "DESPUES DEL 2005")
moviesdf

#SELECCIONAR 

moviesdf[3,]
moviesdf[,"PUNTUACION"]

#ORDENAR

orden_indices <- order(moviesdf$PUNTUACION)
orden_indices

#ORDEN MENOR A MAYOR

orden_menor_mayor <- order(moviesdf$PUNTUACION,
                           decreasing = FALSE)
    #si se quiere de mayor a menor 
    #el decreasing debe ser true
moviesdf[orden_menor_mayor,]

#GUARDAR DATAFRAME ORDENADO

movies_ordenado <- moviesdf[orden_menor_mayor,]

