# prepare UI module for histogram
histogramUI <- function(id){
  tagList(
    selectInput(NS(id, "var"), "Variable", choices = names(mtcars)),
    numericInput(NS(id, "bins"), "bins", value = 10, min = 1),
    plotOutput(NS(id, "hist"))
  )
}


# prepare server module for histogram
histogramServer <- function(id){
  moduleServer(id, function(input, output, session){
    data <- reactive(mtcars[[input$var]])
    output$hist <- renderPlot({
      hist(data(), breaks = input$bins, main = input$var)
    }, res = 70)
  })
}