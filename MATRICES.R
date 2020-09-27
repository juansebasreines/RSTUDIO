##########
#MATRICES#
##########
warner <- c(20, 20, 16, 17, 17, 22, 17, 18, 19)
disney <- c(11, 13, 11, 8, 12, 11, 12, 8, 10)
fox <- c(18, 15, 15, 15, 16, 17, 15, 13, 11)
peliculas <- matrix(c(warner, disney, fox), 9, 3)
peliculas
colnames(peliculas) <- c("warner", "disney", "fox")
peliculas
