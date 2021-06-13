library(shiny)
library(visNetwork)

library(shinydashboard)

ui <- dashboardPage(
    dashboardHeader(title = "Partnership Navigator"),
    
    dashboardSidebar(
        sidebarMenu(
            menuItem("Dashboard", tabName = "dashboard", icon = icon("dashboard"))
        )        
    ),
    ## Body content
    dashboardBody(
        tabItems(
            tabItem(tabName = "dashboard",
                    tabsetPanel(
                        tabPanel("About", htmlOutput("about")),
                        tabPanel("Network", 
                                 visNetworkOutput("net"))
                    )
            )
        )
    )
)