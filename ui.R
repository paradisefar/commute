library(shiny)

# Define UI for application that plots random distributions 
shinyUI(
  
  
  navbarPage("Communite Time Health Risk", 
             # multi-page user-interface that includes a navigation bar.
             tabPanel("Main",
                      
                      # Application title
                      headerPanel("Healthy Commute Time"),
                      
                      # input for number of observations
                      sidebarPanel(
                        numericInput('time', 'Your average one-way commute time in munites', 30, min=5, max=200, step=5),
                        submitButton('submit')
                      ),
                      
                      # show results
                      mainPanel(
                        h3('Is your commute within healthy range?'),
                        h4('You entered'),
                        verbatimTextOutput('inputValue'),
                        h4('Your communite time is'),
                        verbatimTextOutput('prediction')
                      )
             ),
             
             tabPanel("Instruction",
                      mainPanel(
                        p('Commute Time Health Risk

                          This Shiny App is an quick example for indicate health risk level associate with commute. 
                          
                          Instruction:
                          1. enter your daily average one-way commute time in munites
                          2. click submit
                          3. see results to the right')
                      )
             ) # end of "About" tab panel
  )
)