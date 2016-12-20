#
# 
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # this generates the Application title
  titlePanel("Snowy Days on LongIsland"),
  
  # this creates a Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       sliderInput("bins",
                   "Use slider to choose Number of bins:",
                   min = 1,
                   max = 50,
                   value = 30),
       helpText("Data from Hitchhikers Guide to the Galaxy.")
       ),
    
    # now Show a plot of the generated distribution
    mainPanel(
       plotOutput("distPlot")
    )
  )
))
