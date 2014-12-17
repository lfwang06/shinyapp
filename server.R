#server.R
library(shiny)
data(Titanic)
class<-apply(Titanic,c(1,4),sum)
sex<-apply(Titanic,c(2,4),sum)
age<-apply(Titanic,c(3,4),sum)

shinyServer(function(input,output){
       output$barplot<-renderPlot({
            if(input$name=="class"){
               barplot(class, beside=TRUE, legend.text=TRUE,main="Survival information",
                       ylab="Number of people",names.arg=c("Not survival","Survival"))}
            else if(input$name=="sex"){
               barplot(sex, beside=TRUE, legend.text=TRUE,main="Survival information",
                       ylab="Number of people",names.arg=c("Not survival","Survival"))}
            else if(input$name=="age"){
               barplot(age, beside=TRUE, legend.text=TRUE,main="Survival information",
                       ylab="Number of people",names.arg=c("Not survival","Survival"))}     
      })
      survival=data.frame(category=c("first","second","third","crew","male","female","child","adult"),
                          number=c(class[1]+class[5],class[2]+class[6],class[3]+class[7],class[4]+class[8],
                                   sex[1]+sex[3],sex[2]+sex[4],age[1]+age[3],age[2]+age[4]),
                          rate=c(class[5]/(class[1]+class[5]),class[6]/(class[2]+class[6]),class[7]/(class[3]+class[7]),
                                 class[8]/(class[4]+class[8]),sex[3]/(sex[1]+sex[3]),sex[4]/(sex[2]+sex[4]),
                                 age[3]/(age[1]+age[3]),age[4]/(age[2]+age[4]))
      )
     output$number<-renderPrint({survival[survival$category==input$category,]$number})
     output$rate<-renderPrint({survival[survival$category==input$category,]$rate})
})
