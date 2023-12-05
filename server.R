#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

BMI <- function(w, h) w / (h/100)^2

shinyServer( 
      function(input, output) {
            output$calculation <- renderPrint({
                        BMI(input$weight, input$height)})
            output$documentation <- renderPrint({
                  if (input$Help > 0) 
                        "Just enter weight in kg and height in cm to have the BMI calculated!"
            })
      }
)


