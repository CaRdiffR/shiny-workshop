library(shiny)

ui <- fluidPage(
  titlePanel("Hello Cardiff"),
  sidebarLayout(
    sidebarPanel(
      tags$h2("This is sidebar")
    ),
    mainPanel(
      tags$p("Here is where the action takes place"),
      tags$img(src="https://media.giphy.com/media/u47skfNmdGSM05XP5G/giphy.gif", width="200px")
    )
  )
)


server <- function(input, output) {
}

shinyApp(ui = ui, server = server)
