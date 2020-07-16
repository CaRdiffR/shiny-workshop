library(shiny)

zoom = FALSE

ui <- fluidPage(
  titlePanel("Hello Cardiff"),
  sidebarLayout(
    sidebarPanel(
      uiOutput("sidebarui"),
      #TODO (part 1) place for actionButton
      #TODO (part 2) place for textInput
    ),
    mainPanel(
      div(style = "background: grey; color: white;",
          tags$p("Here is where the action takes place")
      ), 
      #TODO (part 2) "welcome_message" textOutput
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
  
  #TODO (part 1) observe event from action button
  
  
  #TODO (part 2) renderText
}

shinyApp(ui = ui, server = server)
