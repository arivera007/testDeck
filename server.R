library(shiny)

#runs once.
data(mtcars)
fit <- lm(mpg ~ wt, data = mtcars)

predecir<-function(weight){
  predict(fit, newdata = data.frame(wt = weight))
}


shinyServer(
  function(input, output){
    output$inputValue <- renderPrint({input$weight})
    output$prediction <- renderPrint({predecir(input$weight)})
    
    output$regLine <- renderPlot({
      plot(mtcars$wt,mtcars$mpg,pch=19, xlab="Weight", ylab="MPG")
      points(mtcars$wt,mtcars$mpg,pch=19)
      lines(mtcars$wt,fit$fitted,col="red",lwd=3)
      abline(v=input$weight,col="blue",lwd=3)
      
    })
    
  }
)