########################
#       VECTORES       # 
########################

#####################################
# pr�ctica 1: creando vectores en R #
#####################################

# crear vector car�cter con nombre de las pel�culas
nombre_peliculas <- c("sherk","sherk 2", "sherk 3","sherk 4")

# crear vector num�rico con puntuaci�n de las pel�culas
puntuacion <- c(6.2,7.5,9.1,4.1)
puntuacion

# crear vector l�gico sobre si la pel�cula es posterior a 2015
later_2005 <- c(FALSE, FALSE, TRUE, TRUE)

####################################################
# pr�ctica 2: operaciones aritm�ticas con vectores #
####################################################

# sumar 2 a la puntuaci�n

puntuacion_add_2 <- puntuacion+2

# dividir la puntuaci�n entre 2
puntuacion_divide_2 <- puntuacion/2

# crea la puntuaci�n de rafa
puntuacion_juan <- c(5.2,9.1,6.3,4.2)

# calcular diferencia entre puntuaciones

puntuacion - puntuacion_juan

# calcular la longitud del vector
length(puntuacion)

# calcular el promedio del vector puntuacion
mean(puntuacion)

###################################################
# pr�ctica 3: selecci�n de elementos de un vector #
###################################################

## selecci�n basada en posici�n
# seleccionar la tercera pel�cula
puntuacion[3]
nombre_peliculas[3]
# seleccionar la primera y la �ltima pel�cula
nombre_peliculas[c(1,4)]

## selecci�n basada en condici�n l�gica
# crear condici�n l�gica
puntuacion_baja <- puntuacion < 7

# mostrar condici�n para ver TRUE/FALSE
puntuacion_baja

# mostrar puntuaciones bajas
puntuacion[puntuacion_baja]

# mostrar nombres de pel�culas con puntuaciones bajas
nombre_peliculas[puntuacion_baja]
