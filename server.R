library(shiny)

commutehealthrisk<-function(time) {
  out='healthy'
  if (time>15) out='moderate'
  if (time>30) out='slight health risk'
  if (time>45) out='high health risk'
  return(out)
}
# Define server logic required to generate and plot a random distribution
shinyServer(function(input, output) {

  output$inputValue<-renderPrint({input$time})
  output$prediction<-renderPrint({commutehealthrisk(input$time)})
})