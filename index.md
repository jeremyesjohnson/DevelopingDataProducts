---
title       : Car Data Explorer
subtitle    : A simple example of slidify and shiny
author      : Jeremy S. Johnson
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
ext_widgets: {rCharts: [libraries/nvd3]}
---

## Introduction
Objectives
- To demonstrate the use of shiny and slidify
- To illustrate the concept of mean square error

The application is available [here](https://mojomadaian.shinyapps.io/DevelopingDataProducts/)

The source code is avaiable [here](https://github.com/jeremyesjohnson/DevelopingDataProducts)

---
## Data
The cars data in R gives the speed of cars and the distances taken to stop. Note that the data were recorded in the 1920s. It consists of data frame with 50 observations on 2 variables: 

[,1]     speed	 numeric	 Speed (mph)  

[,2]	 dist	 numeric	 Stopping distance (ft)  


```r
summary(cars)
```

```
##      speed           dist       
##  Min.   : 4.0   Min.   :  2.00  
##  1st Qu.:12.0   1st Qu.: 26.00  
##  Median :15.0   Median : 36.00  
##  Mean   :15.4   Mean   : 42.98  
##  3rd Qu.:19.0   3rd Qu.: 56.00  
##  Max.   :25.0   Max.   :120.00
```

---
## Charts

```r
par(mfrow=c(1,2))
hist(cars$dist)
hist(cars$speed)
```

![plot of chunk unnamed-chunk-3](assets/fig/unnamed-chunk-3-1.png) 

---
## Summary
This project showed that slidify and shiny can be combined to create data products with interactive elements for exploring data in an intuitive way.



