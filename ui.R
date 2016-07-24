## ui.R

library(shinythemes)

shinyUI(fluidPage(theme = shinytheme("flatly"),
  titlePanel(
    h2('Hidden Car Categories : Could you identify any?', align = "center")
    ),
  
  sidebarLayout(
    sidebarPanel(
      img(src = "car_icon.png", height = 65, width = 240),
      h5("Hidden, interesting patterns can be identified by varying the variables and number of clusters below."),
      a("Dataset Information", 
        href="https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/mtcars.html"),
      h6(""),
      selectInput('xcol', 'X Variable', names(mtcars), selected=names(mtcars)[[1]]),
      selectInput('ycol', 'Y Variable', names(mtcars), selected=names(mtcars)[[2]]),
      numericInput('clusters', 'No of cluster', 3, min = 2, max = 5 )
    ),
    
    mainPanel(
      h4("K Means Clustering", align = "center"),
      plotOutput('plot1')
      )
  )
  
))