library(shiny)

zoom = FALSE

ui <- fluidPage(
  titlePanel("Hello Cardiff"),
  sidebarLayout(
    sidebarPanel(
      uiOutput("sidebarui"),
    ),
    mainPanel(
      div(style = "background: grey; color: white;",
        tags$p("Here is where the action takes place")
      ), 
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
}

shinyApp(ui = ui, server = server)
