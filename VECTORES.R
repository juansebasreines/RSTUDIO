########################
#       VECTORES       # 
########################

#####################################
# práctica 1: creando vectores en R #
#####################################

# crear vector carácter con nombre de las películas
nombre_peliculas <- c("sherk","sherk 2", "sherk 3","sherk 4")

# crear vector numérico con puntuación de las películas
puntuacion <- c(6.2,7.5,9.1,4.1)
puntuacion

# crear vector lógico sobre si la película es posterior a 2015
later_2005 <- c(FALSE, FALSE, TRUE, TRUE)

####################################################
# práctica 2: operaciones aritméticas con vectores #
####################################################

# sumar 2 a la puntuación

puntuacion_add_2 <- puntuacion+2

# dividir la puntuación entre 2
puntuacion_divide_2 <- puntuacion/2

# crea la puntuación de rafa
puntuacion_juan <- c(5.2,9.1,6.3,4.2)

# calcular diferencia entre puntuaciones

puntuacion - puntuacion_juan

# calcular la longitud del vector
length(puntuacion)

# calcular el promedio del vector puntuacion
mean(puntuacion)

###################################################
# práctica 3: selección de elementos de un vector #
###################################################

## selección basada en posición
# seleccionar la tercera película
puntuacion[3]
nombre_peliculas[3]
# seleccionar la primera y la última película
nombre_peliculas[c(1,4)]

## selección basada en condición lógica
# crear condición lógica
puntuacion_baja <- puntuacion < 7

# mostrar condición para ver TRUE/FALSE
puntuacion_baja

# mostrar puntuaciones bajas
puntuacion[puntuacion_baja]

# mostrar nombres de películas con puntuaciones bajas
nombre_peliculas[puntuacion_baja]
