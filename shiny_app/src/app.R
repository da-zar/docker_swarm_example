library(shiny)
ui <- fluidPage(
  titlePanel("The normal distribution"),
  sidebarLayout(
    sidebarPanel(
      sliderInput(inputId = "mean",
                  label = "Mean:",
                  min = -10,
                  max = 10,
                  value = 0),
      sliderInput(inputId = "sd",
                  label = "Standard deviation:",
                  min = 1,
                  max = 10,
                  value = 1),
      sliderInput(inputId = "sample_size",
                  label = "Sample size:",
                  min = 1000,
                  max = 100000,
                  value = 10000),
      sliderInput(inputId = "bins",
                  label = "Number of bins:",
                  min = 1,
                  max = 100,
                  value = 50)
    ),
    mainPanel(
      plotOutput(outputId = "hist")
    )
  )
)

server <- function(input, output) {
  output$hist <- renderPlot({
    x <- rnorm(input$sample_size, input$mean, input$sd)
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    hist(x, breaks = bins, col = "#75AADB", border = "white",
         xlim = c(-30, 30),
         xlab = "X",
         main = "Histogram")
    
  })
  
}

shinyApp(ui = ui, server = server)
