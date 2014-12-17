# ui.R
library(shiny)

shinyUI(pageWithSidebar(
      headerPanel("Survival of passengers on the Titanic"),
      sidebarPanel(
            p("Exploratory analysis on the survival information"),
            radioButtons("name",h4("Create a Bar plot based on :"),
                             choices=c("Class-- 1st, 2nd, 3rd, Crew"="class",
                                 "Gender-- Male,Female"="sex",
                                 "Age-- Child,Adult"="age"),
                               selected="class"),   
            br(),
            p("Find the number of people on aboard and survival rate respectively. "),
            selectInput("category", h4("Choose a category:"),
                        choices=c("First Class"="first",
                                 "Second class"="second",
                                 "Third class"="third",
                                 "Crew"="crew",
                                 "Male"="male",
                                 "Female"="female",
                                 "Child"="child",
                                  "Adult"="adult"),
                       selected="first"),               
            br()
            ),
        
      mainPanel(
            em("Supporting documentation:"),
            p("The fate of passengers on the fatal maiden voyage of the Titanic according to economic status(class), gender and age.
              There were totally 2201 passengers including crew. Only 711 survived. The app contains two parts. 
              one produces bar plots and one calculates the survival rates."),
            p("These data were originally collected by the British Board of Trade in their ivestigation of the sinking. 
              Note that there is not complete agreement among primary sources as to the exact numbers on board and rescued."),            
            plotOutput("barplot"),
            h4("How many people were on Titanic in this category?"),
             verbatimTextOutput("number"),
            h4("Survival rate in this category:"),
            verbatimTextOutput("rate")
            )
      ))