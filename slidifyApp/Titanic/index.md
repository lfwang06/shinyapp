---
title       : Survival of passengers on the Titanic
subtitle    : Find survival rate in each category
author      : lfwang06
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [mathjax]            # {mathjax, quiz, bootstrap}
mode        : standalone  # {standalone, draft}
knit        : slidify::knit2slides
------------

## About the data

The interactive application is based on Titanic dataset in the R Datasets Package.

```r
library(datasets)
data(Titanic)
```
The data set provides information on the fate of passengers on the fatal maider voyage of Titanic, summarized according to economic status(class),gender,age and survival.

-------------- 

## Visualization on the survival information

The application produces barplots on different summrarizing factors.

![plot of chunk unnamed-chunk-2](figure/unnamed-chunk-2.png) 

---------------

## Find the survival rate for each category

For example:

The survival rate in female:


```
## [1] 0.7319
```

The survival rate ln male:


```
## [1] 0.212
```

Further interest:

1. Was there higher survival rate in female than in male?

2. How was the "women and children first" policy in the third class?

--------------

## Other information

These data were originally collected by the British Board of Trade in their ivestigation of the sinking. Note that there is not complete agreement among primary sources as to the exact numbers on board and rescued. 

Link to the App:

https://lfwang06.shinyapps.io/TitanicApp/

