library(shiny)

zoom = FALSE

ui <- fluidPage(
  titlePanel("Hello Cardiff"),
  sidebarLayout(
    sidebarPanel(
      uiOutput("sidebarui"),
      # (part 1) place for actionButton
      actionButton("go_button", "Go!"),
      # (part 2) place for textInput
      textInput("name", "Give your name here")
    ),
    mainPanel(
      div(style = "background: grey; color: white;",
          tags$p("Here is where the action takes place")
      ), 
      # (part 2) "welcome_message" textOutput
      tags$h3(textOutput("welcome_message")),
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
  
  # (part 1) observe event from action button
  observeEvent(input$go_button, {
    print("Go")
  })  
  
  # (part 2) renderText
  output$welcome_message <- renderText({
    paste("Welcome", input$name)
  })
}

shinyApp(ui = ui, server = server)
