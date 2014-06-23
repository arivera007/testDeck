library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("MilesPerGallon (MPG) prediction from car weight"),
  sidebarPanel(
    h5('This app can help you choose a car that uses the MPG that you want. Just input the mpg that you would like to achieve, and the app will tell you the most likely weight that your car needs to have.'),
    h3('Weight of the desired car in 1000 lbs:'),
    numericInput('weight', '1000 lbs', 2, min=1, max=6, step=0.5),
    submitButton('Calculate MPG')
  ),
  mainPanel(
    h4('For your car of weight:'),
    verbatimTextOutput("inputValue"),
    h4('You most likely will get an  MPG of:'),
    verbatimTextOutput("prediction"),
    
    plotOutput('regLine'),
    p('In this figure, you can see the aproximate behavior of the different weights and their respective MPG.'),
    p('The blue line shows the weight that you chose.')
    
 #   code('some code'),
  )
  
))