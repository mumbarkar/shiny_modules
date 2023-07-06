# prepare UI module for box-plot
boxplotUI <- function(id){
  tagList(
    selectInput(NS(id, "vars"), "Variable", choices = names(mtcars)),
    plotOutput(NS(id, "boxplot"))
  )
}


# prepare server module for box-plot
boxplotServer <- function(id){
  moduleServer(id, function(input, output, session){
    data <- reactive(mtcars[[input$vars]])
    output$boxplot <- renderPlot({
      boxplot(x = data(), main = input$vars)
    }, res = 70)
  })
}