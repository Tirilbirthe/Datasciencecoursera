library(shiny)


 


vekt <- function(w,h,a) {655 + (w*9)+ (h*1.8)- (a*4.7)} 


shinyServer(function(input, output){
  output$inputValue <- renderPrint({input$w})
  output$inputValue <- renderPrint({input$h})
  output$inputValue <- renderPrint({input$a})
  
  
  output$prediction<- renderPrint({vekt(input$w, input$h, input$a)})
}
)