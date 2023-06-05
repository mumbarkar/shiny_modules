# load required library
library(shiny)

# histogram app
histogramApp <- function() {
  
  # UI logic
  ui <- 
    fluidPage(
    histogramUI("plot1"),
    histogramUI("plot2")
  )
  
  # server logic
  server <- function(input, output, session) {
    histogramServer("plot1")
    histogramServer("plot2")
  }
  
  # Run the application 
  shinyApp(ui, server)  
}
histogramApp()