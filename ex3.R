library(shiny)

# (part 2) placeholder for variable zoom

ui <- fluidPage(
  titlePanel("Hello Cardiff"),
  sidebarLayout(
    sidebarPanel(
      tags$h2("This is sidebar") # (part 2) replace that by uiOutput
    ),
    mainPanel(
      tags$p("Here is where the action takes place"), # (part 1) This should be surrounded by styled div
      tags$img(src="https://media.giphy.com/media/u47skfNmdGSM05XP5G/giphy.gif", width="200px")
    )
  )
)


server <- function(input, output) {
  #(part 2) rendering of ui happens here
}

shinyApp(ui = ui, server = server)
