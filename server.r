library(DT)

`%then%` <- shiny:::`%OR%`

#' Title
#'
#' @param input 
#' @param output 
#'
#' @return
#' @export
#'
#' @examples
shinyServer(function(input, output) {
  output$image1 <- renderUI({
    input$goButton
    isolate({
      validate(
        need(!is.null(input$region), "To view your PRM Work Process, select your project's Region, Business Segment, and Contract Value in the sidepanal.") %then%
          need(!is.null(input$segment), "To view your PRM Work Process, select your project's Region, Business Segment, and Contract Value in the sidepanal.") %then%
          need(input$num != 0, "To view your PRM Work Process, select your project's Region, Business Segment, and Contract Value in the sidepanal.")
      )
      if(input$region == "regiona") {
        if(input$segment == "onshore") {
          if(input$num <= 300) {
            img(src = "WPShort.png", class = "img-responsive")
          } else {
            img(src = "WPLong.png", class = "img-responsive")
          }
        } else if (input$segment == "offshore") {
          if(input$num <= 300) {
            img(src = "WPShort.png", class = "img-responsive")
          } else {
            img(src = "WPLong.png", class = "img-responsive")
          }
        } else if (input$segment == "subsea") {
          if(input$num <= 60) {
            img(src = "WPShort.png", class = "img-responsive")
          } else {
            img(src = "WPLong.png", class = "img-responsive")
          }
        }
      } else if(input$region == "regionb") {
        if(input$segment == "onshore") {
          if(input$num <= 300) {
            img(src = "WPShort.png", class = "img-responsive")
          } else {
            img(src = "WPLong.png", class = "img-responsive")
          }
        } else if(input$segment == "offshore") {
          img(src = "WPShort.png", class = "img-responsive")
        } else if(input$segment == "subsea") {
          img(src = "WPShort.png", class = "img-responsive")
        }
      } else if(input$region == "asiapacific") {
        if(input$segment == "onshore") {
          if(input$num <= 150) {
            img(src = "WPShort.png", class = "img-responsive")
          } else {
            img(src = "WPLong.png", class = "img-responsive")
          }
        } else if (input$segment == "offshore") {
          if(input$num <= 150) {
            img(src = "WPShort.png", class = "img-responsive")
          } else {
            img(src = "WPLong.png", class = "img-responsive")
          }
        } else if (input$segment == "subsea") {
          if(input$num <= 60) {
            img(src = "WPShort.png", class = "img-responsive")
          } else {
            img(src = "WPLong.png", class = "img-responsive")
          }
        }
      } else if(input$region == "northamerica") {
        if(input$segment == "onshore") {
          if(input$num <= 150) {
            img(src = "WPShort.png", class = "img-responsive")
          } else {
            img(src = "WPLong.png", class = "img-responsive")
          }
        } else if (input$segment == "offshore") {
          if(input$num <= 150) {
            img(src = "WPShort.png", class = "img-responsive")
          } else {
            img(src = "WPLong.png", class = "img-responsive")
          }
        } else if (input$segment == "subsea") {
          if(input$num <= 60) {
            img(src = "WPShort.png", class = "img-responsive")
          } else {
            img(src = "WPLong.png", class = "img-responsive")
          }
        }
      } else if(input$region == "northsea") {
        if(input$segment == "onshore") {
          img(src = "WPShort.png", class = "img-responsive")
        } else if (input$segment == "offshore") {
          img(src = "WPShort.png", class = "img-responsive")
        } else if (input$segment == "subsea") {
          if(input$num <= 60) {
            img(src = "WPShort.png", class = "img-responsive")
          } else {
            img(src = "WPLong.png", class = "img-responsive")
          }
        }
      } else if(input$region == "brazil") {
        if(input$segment == "onshore") {
          if(input$num <= 10) {
            img(src = "WPShort.png", class = "img-responsive")
          } else {
            img(src = "WPLong.png", class = "img-responsive")
          }
        } else if (input$segment == "offshore") {
          if(input$num <= 150) {
            img(src = "WPShort.png", class = "img-responsive")
          } else {
            img(src = "WPLong.png", class = "img-responsive")
          }
        } else if (input$segment == "subsea") {
          if(input$num <= 60) {
            img(src = "WPShort.png", class = "img-responsive")
          } else {
            img(src = "WPLong.png", class = "img-responsive")
          }
        }
      } else if(input$region == "middleeast") {
        if(input$segment == "onshore") {
          if(input$num <= 150) {
            img(src = "WPShort.png", class = "img-responsive")
          } else {
            img(src = "WPLong.png", class = "img-responsive")
          }
        } else if (input$segment == "offshore") {
          if(input$num <= 150) {
            img(src = "WPShort.png", class = "img-responsive")
          } else {
            img(src = "WPLong.png", class = "img-responsive")
          }
        } else if (input$segment == "subsea") {
          if(input$num <= 60) {
            img(src = "WPShort.png", class = "img-responsive")
          } else {
            img(src = "WPLong.png", class = "img-responsive")
          }
        }
      }
    })
  })
  
  output$image2 <- renderUI({
    input$goButton
    if(input$goButton == 0)
      return()
    isolate({
      validate(
        need(!is.null(input$region), "To view your PRM Key Phases, select your project's Region, Business Segment, and Contract Value in the sidepanal.") %then%
          need(!is.null(input$segment), "To view your PRM Key Phases, select your project's Region, Business Segment, and Contract Value in the sidepanal.") %then%
          need(input$num != 0, "To view your PRM Key Phases, select your project's Region, Business Segment, and Contract Value in the sidepanal.")
      )
      if(input$region == "regiona") {
        if(input$segment == "onshore") {
          if(input$num <= 300) {
            img(src = "ShortPhases.png", class = "img-responsive")
          } else {
            img(src = "LongPhases.png", class = "img-responsive")
          }
        } else if (input$segment == "offshore") {
          if(input$num <= 300) {
            img(src = "ShortPhases.png", class = "img-responsive")
          } else {
            img(src = "LongPhases.png", class = "img-responsive")
          }
        } else if (input$segment == "subsea") {
          if(input$num <= 60) {
            img(src = "ShortPhases.png", class = "img-responsive")
          } else {
            img(src = "LongPhases.png", class = "img-responsive")
          }
        }
      } else if(input$region == "regionb") {
        if(input$segment == "onshore") {
          if(input$num <= 300) {
            img(src = "ShortPhases.png", class = "img-responsive")
          } else {
            img(src = "LongPhases.png", class = "img-responsive")
          }
        } else if(input$segment == "offshore") {
          img(src = "ShortPhases.png", class = "img-responsive")
        } else if(input$segment == "subsea") {
          img(src = "ShortPhases.png", class = "img-responsive")
        }
      } else if(input$region == "asiapacific") {
        if(input$segment == "onshore") {
          if(input$num <= 150) {
            img(src = "ShortPhases.png", class = "img-responsive")
          } else {
            img(src = "LongPhases.png", class = "img-responsive")
          }
        } else if (input$segment == "offshore") {
          if(input$num <= 150) {
            img(src = "ShortPhases.png", class = "img-responsive")
          } else {
            img(src = "LongPhases.png", class = "img-responsive")
          }
        } else if (input$segment == "subsea") {
          if(input$num <= 60) {
            img(src = "ShortPhases.png", class = "img-responsive")
          } else {
            img(src = "LongPhases.png", class = "img-responsive")
          }
        }
      } else if(input$region == "northamerica") {
        if(input$segment == "onshore") {
          if(input$num <= 150) {
            img(src = "ShortPhases.png", class = "img-responsive")
          } else {
            img(src = "LongPhases.png", class = "img-responsive")
          }
        } else if (input$segment == "offshore") {
          if(input$num <= 150) {
            img(src = "ShortPhases.png", class = "img-responsive")
          } else {
            img(src = "LongPhases.png", class = "img-responsive")
          }
        } else if (input$segment == "subsea") {
          if(input$num <= 60) {
            img(src = "ShortPhases.png", class = "img-responsive")
          } else {
            img(src = "LongPhases.png", class = "img-responsive")
          }
        }
      } else if(input$region == "northsea") {
        if(input$segment == "onshore") {
          img(src = "ShortPhases.png", class = "img-responsive")
        } else if (input$segment == "offshore") {
          img(src = "ShortPhases.png", class = "img-responsive")
        } else if (input$segment == "subsea") {
          if(input$num <= 60) {
            img(src = "ShortPhases.png", class = "img-responsive")
          } else {
            img(src = "LongPhases.png", class = "img-responsive")
          }
        }
      } else if(input$region == "brazil") {
        if(input$segment == "onshore") {
          if(input$num <= 10) {
            img(src = "ShortPhases.png", class = "img-responsive")
          } else {
            img(src = "LongPhases.png", class = "img-responsive")
          }
        } else if (input$segment == "offshore") {
          if(input$num <= 150) {
            img(src = "ShortPhases.png", class = "img-responsive")
          } else {
            img(src = "LongPhases.png", class = "img-responsive")
          }
        } else if (input$segment == "subsea") {
          if(input$num <= 60) {
            img(src = "ShortPhases.png", class = "img-responsive")
          } else {
            img(src = "LongPhases.png", class = "img-responsive")
          }
        }
      } else if(input$region == "middleeast") {
        if(input$segment == "onshore") {
          if(input$num <= 150) {
            img(src = "ShortPhases.png", class = "img-responsive")
          } else {
            img(src = "LongPhases.png", class = "img-responsive")
          }
        } else if (input$segment == "offshore") {
          if(input$num <= 150) {
            img(src = "ShortPhases.png", class = "img-responsive")
          } else {
            img(src = "LongPhases.png", class = "img-responsive")
          }
        } else if (input$segment == "subsea") {
          if(input$num <= 60) {
            img(src = "ShortPhases.png", class = "img-responsive")
          } else {
            img(src = "LongPhases.png", class = "img-responsive")
          }
        }
      }
    })
  })
  
  output$myTable <- DT::renderDataTable({
    region <- as.character(c("Region A", "Region B", "Asia Pacific", "North America", "North Sea/Canada", "Brazil", "Middle East"))
    df <- data.frame("Onshore" = c("> 300 MEuros", "> 300 MEuros", "> 150 MEuros", "> 150 MEuros", "N/A", "> 10 MEuros", "> 150 MEuros"), "Offshore" = c("> 300 MEuros", "N/A", "> 150 MEuros", "> 150 MEuros", "N/A", "> 150 MEuros", "> 150 MEuros"), "Subsea"= c("> 60 MEuros", "N/A", "> 60 MEuros", "> 60 MEuros", "> 60 MEuros", "> 60 MEuros", "> 60 MEuros"), row.names = region)
    DT::datatable(df, options = list(
      columnDefs = list(list(className = 'dt-center', targets = 1:3)),
      dom = 'ftr'))
  })
})
