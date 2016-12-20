#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

shinyServer(function(input, output) {
   
  output$distPlot <- renderPlot({
    
    # generate bins 
    mmSnow    <- faithful[, 2] - 40
    bins <- seq(min(mmSnow), max(mmSnow), length.out = input$bins + 1)
    
    # draw the histogram  
    hist(mmSnow, breaks = bins, col = 'darkgray', border = 'white')
    
  })
  
})
