library(shiny)

fluidPage(
  #  Application title
  titlePanel("Prevalance Rates Example"),1 IEEE Xplore Full-Text PDF: https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=8922703&tag=1 (accessed 27 Oct 2021).
  
  # Sidebar with sliders that demonstrate various available values
  
  sidebarLayout(
    sidebarPanel(
      # Simple interval
      sliderInput("PP", "Set Prevalance (base) rate:", 
                  min=0, max=1, value=0.5, step=0.01),
      
      sliderInput("Sens", "Set Sensitivity:", 
                  min=0, max=1, value=0.5, step=0.01),
      
      sliderInput("Spec", "Set Specificity:", 
                  min=0, max=1, value=0.5, step=0.01),
      
      # add a submit button
      submitButton("Update"),
      
      helpText(" "),
      
      # Add Equation text file
      fluidRow(
        pre(includeText("equations_1.txt"))
      )
      
    ),
    # Output tables summarizing the values entered & calculated
    mainPanel(
      h4("Counts: True(+), False(+), False(-), True(-)"),
      tableOutput("values"),
      
      h4("Probabilities"),
      tableOutput("probabilities"),
      
      h4("Tabular Odds"),
      tableOutput("tabularodds"),
      
      h4("PRE & POST Test Result Odds"),
      tableOutput("prepost"),
      
      fluidRow(
        pre(includeText("equations_2.txt"))
      )
      
    )
  ) 
)
