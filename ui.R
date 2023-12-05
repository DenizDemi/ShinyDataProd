#'
#' BMI Calculator
#'  
#' This is a very simple application for calculating Body Mass Index (BMI)
#' 
#' This application takes weight (in kg) and height (in cm) as input
#' and calculates the BMI
#' 
#' @author Deniz
#' 
#' @details This app takes in the weight(kg) and height(cm) 
#'  and calculates the BMI using the formula weight / height^2
#'  
#' @import shiny


library(shiny)

# Define UI for application that calculates BMI
shinyUI(

    # Sidebar with a slider input for weight and height
    pageWithSidebar(
          # Application title
          headerPanel("BMI calculator"),
          sidebarPanel(
                numericInput('weight', 'Weight in kg', 60, min = 30, max = 200),
                numericInput('height', 'Height in cm', 170, min = 100, max = 250),
                actionButton('Help', "Help")
          ),
          mainPanel(
                h3('Enter weight and height and see the BMI value:'),
                verbatimTextOutput('calculation'),
                textOutput('documentation')
        )
    )
)
