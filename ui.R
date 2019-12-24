library(shiny)
library(shinydashboard)

ui <- dashboardPage(skin = "blue",
                    dashboardHeader(title = h3("PROYECTO FINAL")),
                    
                    dashboardSidebar(
                      
                      sidebarMenu(
                        
                        selectInput("distribucion","distribucion",
                                    c("Poison",
                                      "Exponencial"
                                    ),
                                    selected = "Gamma"
                        ),
                        
                        sliderInput("num_muestra", "Muestra n: ",
                                    min = 1, max = 100, value = 100,animate = TRUE),
                        sliderInput("num_simu", "Simulaciones",
                                    min = 1, max = 5000, value = 100)
                      )
                    ),
                    
                    dashboardBody(
                      
                      br(),
                      br(),
                      h1(class = "text-center", "TRABAJO FINAL-ESTADISTICA II"),
                      br(),
                      
                      
                      box(
                        title = "PRUEBA", status = "danger", solidHeader = TRUE,
                        
                        plotOutput("simular", height = 400, width = 600)
                      ),
                      box(
                        title = "INTEGRANTES", status = "danger", solidHeader = TRUE,
                        h3("Ccerhuayo Raqui Jhon"),
                        h3("Avendano Huaman Emir"),
                        h3("Gutierrez Diaz Cesar"),
                        h3("Navarro Gamboa Anderson"),
                        h1("FELIZ NAVIDAD"),
                      
                      )
                      
                     
                    )
)