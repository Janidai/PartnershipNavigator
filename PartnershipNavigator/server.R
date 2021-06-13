server <- shinyServer(function(input, output) {
    
    output$about <- renderUI({includeHTML("files/about.html")})
    output$net <- renderVisNetwork({
        nodes <- data.frame(id = 1:8,
                            label = c("Labster", "MIT", "California’s community college", "California State University", "Hardvard", "Gwinnett Technical College", "Trinity College", "Stanford"),
                            title = c("Labster", "11254 students", "2.1 mln students over 116 colleges", "39360 students", "31119 students", "9124 students", "2234 students", "18623 students"),
                            color = list(background = c("lightblue", rep("green", 7)), border = "black",highlight = "yellow")
                            )
        
        edges <- data.frame(from = 1, to = 2:8)
        
        # using your own css
        # visNetwork(nodes, edges) %>% 
        #   visInteraction(tooltipStyle = "position: fixed;visibility:hidden;text-decoration: underline;")
        
        # default css + text-decoration
        visNetwork(nodes, edges, height = "100%", width = "100%") %>% 
            visInteraction(navigationButtons = TRUE) 

    })
})

