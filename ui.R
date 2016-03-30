library(shiny)
shinyUI(fluidPage(
    titlePanel("How many calories do you burn a day?"),
    mainPanel(
      p("How many calories you burn every day depends among other things on your weight, height and age."), 
        
      p("This app will help you calculate how many calories you consume on a day without special physical activity. 
        You simply plot in weight, height and age and you get the result."),             
                    
                      fluidRow(
                        column(4, 
                              numericInput("w",
                                           label=h5("Enter your weight in kg"),
                                           value=50)),
                        column(4, 
                               numericInput("h",
                                            label=h5("Enter your height in cm"),
                                            value=150)),
                        column(4, 
                               sliderInput("a",
                                            label=h5("Enter your age in years"),
                                            min=0, max=100, value=30)),
                        
                       fluidRow(
                         column(9,
                          h4('Your total amount of calories burnded on a relaxing day;'),
                          verbatimTextOutput("prediction"),
                          p("This is the bare minimum of calories you should consume each day.")))
                     
                               
                               
                      
                    ))
                  ))