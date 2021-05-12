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
           ) + geom_point(aes(size=pop), alpha=0.8) +
            theme_minimal() +
            theme(legend.position = "bottom") + guides(size = "none") +
            labs(x = "PIB per Capita" ,y = "Esperanza de Vida",  col = "")
      
# mostrar grafico
grafico

# cargar librerias para animar la grafica
library(gganimate)
library(gifski)

grafico <- grafico +
  transition_time(year) +
  labs(title = "Año: {frame_time}")

grafico

