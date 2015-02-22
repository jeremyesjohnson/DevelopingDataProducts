library(UsingR)
data(cars)

shinyServer(function(input, output) {

    distance <- reactive({
        input$distance
    })
    
    speed <- reactive({
        input$speed
    })

    output$histDistance <- renderPlot({
        hist(cars$dist, xlab="Stopping Distance", col="lightblue", main="Histogram of Stopping Distance")
        distance <- distance()
        lines(c(distance, distance), c(0, 25), col="blue", lwd=1)
        mse <- mean((cars$dist - distance)^2)
        text(distance, 15, paste("Distance=", distance))
        text(distance, 14, paste("MSE=", round(mse, 2)))
    })

    
    output$histSpeed <- renderPlot({
        hist(cars$speed, xlab="Speed", col="lightblue",main="Histogram of Speed")
        speed <- speed()
        lines(c(speed, speed), c(0, 25), col="blue", lwd=1)
        mse <- mean((cars$speed - speed)^2)
        text(speed, 15, paste("Speed=", speed))
        text(speed, 14, paste("MSE=", round(mse, 2)))
    })
    
    output$data <- renderTable({
        summary(cars)
    })
})