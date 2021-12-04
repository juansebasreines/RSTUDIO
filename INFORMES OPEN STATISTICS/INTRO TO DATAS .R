  #ARCHIVOS CDC
#esto muestra unos primeros datos de la tabla
head(cdc)

#esto muestra los ultimos
tail(cdc)

#promedio, variancia y mediana
mean(cdc$weight)
var(cdc$weight)
median(cdc$weight)

#hacer una tabla y grafico de barras
smoke <- table(cdc$weight)
barplot(smoke)

#hacer una tabla con dos variables y 
#         un grafico tipo mosaico
smoke2 <- table(cdc$gender, cdc$smoke100)
mosaicplot(smoke2, color = "orange")

  #hacer tablas con especificaciones

#tabla con genero masculino
mdata <- subset(cdc, gender == "m")
head(mdata)

#tabla con genero masculino y edad mayor a 30

m_and_over30 <- subset(cdc, gender == "m" & age > 30)
head(m_and_over30)


#tabla con genero masculino o edad mayor a 30

m_or_over30 <- subset(cdc, gender == "m" | age >30)
head(m_or_over30)


#DATOS CUANTITATIVOS

#esto da un boxplot de la altura
box_height <- boxplot(cdc$height)

#esto da minimo, cuartile, mediana, promedio y maximo
summary(cdc$height)

#un boxplot de la altura por genero
boxplot(cdc$height ~ cdc$gender)

#basado en internet como hallar el indice de masa corporal

bmi <- (cdc$weight / cdc$height^2)*703
boxplot(bmi ~ cdc$genhlth)


    #HISTOGRAMAS

#histograma de edad 
h_age <- hist(cdc$age)

#histograma de indice de masa corporal
h_bmi <- hist(bmi)
h_bmi_seq <- hist(bmi, breaks = 50)


    #EJERCICIO

wdiff <- table(cdc$wtdesire - cdc$weight, cdc$gender)
head(wdiff)


summary(wdiff)
boxplot(wdiff)
hist(wdiff, breaks = 2)








