library(ggplot2)
install.packages("readxl")
library(readxl)
############################
#   IMPORTAR DESDE EXCEL   #
############################

# BUSCAR ARCHIVO
file.choose()
ruta_excel <- "C:\\Users\\Susana\\Downloads\\gapminder_importar_a_r.xlsx"
# LEER ARCHIVO
read_excel(ruta_excel)
# CASOS DONDE ESTA EL ARCHIVO
    # 1) MEJOR CASO
      #Esta en sheet=1 y comienza en range=(a1,celda fin)
better_case <- read_excel(ruta_excel)
    # 2) CASO NO TAN BUENO
      #Esta en diferente sheet. pero comienza en range=(a1,celda fin)
medium_case <- read_excel(ruta_excel, sheet = 2)
    # 3) CASO DIFICIL 
      #Esta en diferente sheet y diferente range 
hard_case <- read_excel(ruta_excel, sheet = 3, range = "c7:f17")
