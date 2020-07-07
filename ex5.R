library(shiny)
library(magrittr)
library(purrr)

zoom = FALSE

pigs_generator <- function(howmany){
  tagList(1:howmany %>% map(function(x) icon("piggy-bank", lib = "glyphicon")))
}

ui <- fluidPage(
  titlePanel("Hello Cardiff"),
  sidebarLayout(
    sidebarPanel(
      uiOutput("sidebarui"),
      actionButton("go_button", "Go!"),
      textInput("name", "Give your name here"),
      selectInput("column", "Select column to plot", colnames(mtcars))
    ),
    mainPanel(
      div(style = "background: grey; color: white;",
          tags$p("Here is where the action takes place")
      ), 
      tags$h3(textOutput("welcome_message")),
      #' (part 1) place for plotOutput
      #' (part 2) place for uiOutput "pigs"
      tags$img(src="https://media.giphy.com/media/u47skfNmdGSM05XP5G/giphy.gif", width="200px")
    )
  )
)


server <- function(input, output) {
  if (isTRUE(zoom))
    output$sidebarui <- renderUI({
      tags$h2("This is sidebar")
    })
  else
    output$sidebarui <- renderUI({
      tags$h4("This is sidebar")
    })
  
  observeEvent(input$go_button, {
    print("Go")
    #' (part 2) add code for rendering pigs
  })  
  
  output$welcome_message <- renderText({
    paste("Welcome", input$name)
  })
  
  #' (part 1) place for renderPlot
}

shinyApp(ui = ui, server = server)
