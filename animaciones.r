#borrar todas las variables existentes
rm(list = ls())
#cargar libreria para graficar
library(ggplot2)
#cargar libreria para datos de PIB y esperanza de vida
library(gapminder)

# asignar a la variable datos la tabla de gapminder
datos <- gapminder

#crear grafico
grafico <- ggplot(
             datos,
             aes(x = gdpPercap, y = lifeExp, colour = continent)
           ) + geom_point()
# mostrar grafico
grafico
