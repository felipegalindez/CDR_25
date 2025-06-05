library(esquisse)
library(shiny)
library(tidyverse)
library(ggplot2)

#Para guardar el Shiny y que no quede fijo NO se puede usar un Quarto, hay que hacer un Script.

#############################################

ui <- fluidPage(
  titlePanel("Gráfico interactivo con Shiny"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("num", "Número de bins:", min = 1, max = 15, value = 11)
    ),
    mainPanel(
      plotOutput("plot"),
      textOutput("mean"),
      textOutput("sd")
    )
  )
)

#############################################

server <- function(input, output) {
  output$plot <- renderPlot({
    ggplot(mtcars, aes(x = wt)) +
      geom_histogram(bins = input$num, fill = "lightgreen", color = "black") +
      geom_vline(xintercept = mean(mtcars$wt), color = "red", linetype = "dashed") +
      labs(title = paste("Cantidad de bins", input$num),
           x = "variable wt",
           y = "Frecuencia")
  })
    output$mean <- renderText(paste("Media =", round(mean(mtcars$wt),digits = 2)))
    output$sd <- renderText(paste("Desviacion Estandar =", round(sd(mtcars$wt),digits = 2)))
}

#############################################

shinyApp(ui = ui, server = server)

#############################################