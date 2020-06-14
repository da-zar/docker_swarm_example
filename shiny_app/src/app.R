library(shiny)
ui <- fluidPage("Hi! I'm a shiny app!")
server <- function(input, output){}
shinyApp(ui = ui, server = server)
