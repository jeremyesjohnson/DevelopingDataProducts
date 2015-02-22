library(UsingR)
require(markdown)

shinyUI(
    navbarPage("Car Data",
       tabPanel("Plot",
            sidebarPanel(
                sliderInput("distance", "Distance:", min=4, max=120, step=1, value=6),
                sliderInput("speed", "Speed:", min=4, max=25, step=1, value=6)
            ),
            
            mainPanel(
                plotOutput("histDistance"),
                plotOutput("histSpeed"),
                tableOutput("data")
            )
        ), 
       
       tabPanel("About", mainPanel(includeMarkdown("include.md")))
))
