library(shiny)

# Define UI for dataset viewer application
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Word Recommendation"),
  

  sidebarLayout(
    sidebarPanel(
      textInput("word", "Palabra o Frase:", "Analytic Methods"),
      
      submitButton("Update View")
    ),
    

    mainPanel(
      h3(textOutput("word", container = span)),
      tabsetPanel(type="tabs",
                  tabPanel("Recommendation",dataTableOutput("res")),
                  tabPanel("Discrimination", plotOutput("distPlot")),
                  navbarMenu("Word Contribution",
                             tabPanel("Wordcloud",plotOutput("contPlot")),
                             tabPanel("Weights",dataTableOutput("cont"))
                             )
                  )
    )
  )
))

#,dataTableOutput("cont")







