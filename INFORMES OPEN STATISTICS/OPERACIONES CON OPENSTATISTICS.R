install.packages(openintro)

dim(arbuthnot)

names(arbuthnot)

arbuthnot$boys

plot(x = arbuthnot$year,
     y = arbuthnot$girls)

plot(x = arbuthnot$year,
     y = arbuthnot$girls,
     type = "l")

plot(arbuthnot$year,
     arbuthnot$boys + 
     arbuthnot$girls, 
     type = "l")

names(present)
present$year
dim(present)

plot(present$year,
     present$boys +
     present$girls, 
     xlab = "A�os",
     ylab = "N�mero total de ni�os",
     title("Datos"))


