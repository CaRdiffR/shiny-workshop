library(shiny)

ui <- fluidPage(
  tags$h1("Header 1"),
  tags$h3("Header 3"),
  tags$p("My paragraph"),
  tags$img(src="https://media.giphy.com/media/u47skfNmdGSM05XP5G/giphy.gif", width="200px")
)


server <- function(input, output) {
}

shinyApp(ui = ui, server = server)
