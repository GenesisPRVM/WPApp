library(shiny)
library(shinythemes)

shinyUI(fluidPage(theme = shinytheme("journal"),
                  titlePanel("PRM Work Process App",
                             tags$head(tags$link(rel = "icon", type = "image/png", href = "favicon.png"),
                                       tags$title("Work Process App"))),
                  sidebarLayout(
                    sidebarPanel(
                      fluidRow(
                        column(6, 
                               img(src = "Techniplogo.png", width = 150)
                        ),
                        column(6,
                               img(src = "Genesislogo.png", width = 150)
                        )
                      ),
                      br(),
                      helpText("Select your project's region:"),
                      selectInput("region", h5("Region:"), 
                                  c(Choose='', 
                                    "Region A"="regiona",
                                    "Region B"="regionb",
                                    "Asia-Pacific"="asiapacific",
                                    "North America"="northamerica",
                                    "North Sea/Canada"="northsea",
                                    "Brazil"="brazil",
                                    "Middle East"="middleeast"
                                  )),
                      hr(),
                      helpText("Select your project's business segment:"),
                      selectInput("segment", h5("Business Segment:"), 
                                  c(Choose='', 
                                    "Onshore"="onshore",
                                    "Offshore"="offshore",
                                    "Subsea"="subsea"
                                  )),
                      hr(),
                      helpText("Enter your project's contract value (MEuros):"),
                      numericInput("num", label = h5("Contract Value"), min = 0, value = 0),
                      actionButton("goButton", "Go")
                    ),
                    mainPanel(
                      tabsetPanel(type = "tabs",
                                  tabPanel("Key Phases",
                                           br(),
                                           conditionalPanel("input.goButton >= 1",
                                                            uiOutput("image2")
                                           )
                                  ),
                                  tabPanel("Work Process",
                                           br(),
                                           conditionalPanel("input.goButton >= 1",
                                                            uiOutput("image1")
                                           )
                                  ),
                                  tabPanel("Thresholds for PRA",
                                           br(),
                                           column(10,
                                                  h5("Contract value thresholds for full (probabilistic) PRM Work Process:"),
                                                  br(),
                                                  DT::dataTableOutput("myTable")
                                           )
                                  )
                      )
                    )
                  )
))