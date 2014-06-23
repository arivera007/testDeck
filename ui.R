library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Manual or Automatic Transmission for MPG"),
  sidebarPanel(
    h3('Weight of the desired car:'),
    numericInput('weight', '1000 lbs', 1, min=1, max=6, step=0.5),
    submitButton('Predict MPG')
  ),
  mainPanel(
    h3('For your car of weight:'),
    verbatimTextOutput("inputValue"),
    h4('is predicted to have an MPG of:'),
    verbatimTextOutput("prediction"),
    
    plotOutput('regLine')

 #   code('some code'),
#    p('some ordinary text')
  )
  
))