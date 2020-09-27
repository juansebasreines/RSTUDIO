install.packages("gapminder")
library(gapminder)
data("gapminder")#estos son datos demograficos de 
                  #diferentes paises a lo largo de
                  #los años
head(gapminder) #esto es para ver los datos

install.packages("tidyverse") #para instalar el paquete de 
                              #tidyverse

library(tidyverse)  #esto sirve para llamarlo

###########################

gapminder_Mexico <- filter(gapminder,
                           country == "Mexico")

#estos dos son lo mismo, tanto el de arriba 
#como el de abajo

Mexico_gap <- gapminder %>% #esto es un pipe
  filter(country == "Mexico")

###########################

gapminder %>%   # esto sirve para filtrar 
                #por continente de Asia y con el 
                #año de 1952
  
  filter(continent == "Asia",
         year == 1952) %>%    #el pipe aqui funciona
                              #para decir "de tal cosa
                              #filtrame esto" en este caso
                              #de este filtro hazme este summarise
  
  summarise(conteo = n()) #esta es la funcion n() 
                          #que sirve para contar la tabla 
                          #de la que venga

###########################

max_life <- gapminder %>% 
  summarise(max_exp = max(lifeExp))

###########################  


max_exp_vida_país <- gapminder %>% 
                    group_by(country) %>% 
                    summarise(Max_explife2 = max(lifeExp))




