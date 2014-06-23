---
title       : MPG prediction App
subtitle    : MPG and weight relationship for your new car
author      : Adriana Rivera
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
---

## MilesPerGallon (MPG) prediction from car weight
###  This Shiny App help users choose their new car based on desired gas consumption.


#### When it starts, it calculates MPG for a weight of 2,ooo lbs, to use it just follow the next steps:


1. Input the desired weight in the text box
2. Press the "Calculate MPG" button
3. Look at the results on your right. Youcan see both the numer and a graph showing where you stand.


--- .class #id 


## Describing the Algorithm

* To calculate the prediction, we used a simple Linear Regressaion Algorithm that only takes into account the weight of the car.
* This model is trained with the database mtcars included in R. 
* The options for weight are only those from the mtcars database.


```r
data(mtcars)
fit <- lm(mpg ~ wt, data = mtcars)
predict(fit, newdata = data.frame(wt = 3))
```

```
##     1 
## 21.25
```


This calculation shows the MPG predicted for a weight of 3,000 lbs.

---

## Visualizing your MPG
#### Sample graph for a weight of 3,000 lbs.


```r
plot(mtcars$wt, mtcars$mpg, pch = 19, xlab = "Weight", ylab = "MPG")
points(mtcars$wt, mtcars$mpg, pch = 19)
lines(mtcars$wt, fit$fitted, col = "red", lwd = 3)
abline(v = 3, col = "blue", lwd = 3)
```

![plot of chunk unnamed-chunk-2](assets/fig/unnamed-chunk-2.png) 


---

## Future Developments

### This App is  still a work in progress, and some of the features in the pipeline are:

* Inclusion of the number of cylinders in the prediction.
* Type of transmission.

