library(shiny)
library(ggplot2)


server <- function(input, output) { 
  
  
  output$simular <- renderPlot({ 
    
    
    
    cant <- input$num_muestra
    sim <- input$num_simu
    
    if(input$distribucion == "Poison"){
      
      muestras <- matrix(rpois(sim*cant, lambda = 1), nrow = sim)
      
    }
    
    else if(input$distribucion == "Exponencial"){
      
      muestras <- matrix(rexp(sim*cant, sim), nrow = sim)
    }
    
    
    medias <- rowMeans(muestras)
    
    hist(medias, breaks = 15, freq = F)
    
  })
  
  
}