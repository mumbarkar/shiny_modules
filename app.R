# load required library
library(shiny)

# visualization app
vizApp <- function() {
  
  # UI logic
  ui <- 
    fluidPage(
    histogramUI("plot1"),
    boxplotUI("plot1")
  )
  
  # server logic
  server <- function(input, output, session) {
    histogramServer("plot1")
    boxplotServer("plot1")
  }
  
  # Run the application 
  shinyApp(ui, server)  
}
vizApp()
