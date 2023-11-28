Business Intelligence Project
================
<GroundBreakers>
\<26/11/2023\>

- [Student Details](#student-details)
- [Setup Chunk](#setup-chunk)
- [Understanding the Dataset (Exploratory Data Analysis
  (EDA))](#understanding-the-dataset-exploratory-data-analysis-eda)
  - [Downloading the Dataset](#downloading-the-dataset)
    - [Source:](#source)
    - [Reference:](#reference)
- [Install and load all the
  packages](#install-and-load-all-the-packages)
- [Load datasets](#load-datasets)
  - [DATASET: Intelligent Irrigation
    System](#dataset-intelligent-irrigation-system)
    - [Description](#description)
- [Exploratory Data Analysis](#exploratory-data-analysis)
  - [Identify the Data Types](#identify-the-data-types)
  - [Descriptive Statistics](#descriptive-statistics)
    - [Measures of Frequency](#measures-of-frequency)
    - [Measures of Central Tendency](#measures-of-central-tendency)
      - [Calculate the mode](#calculate-the-mode)
  - [Measures of
    Distribution/Dispersion/Spread/Scatter/Variability](#measures-of-distributiondispersionspreadscattervariability)
    - [Measure the distribution of the data for each
      variable](#measure-the-distribution-of-the-data-for-each-variable)
    - [Measure the standard deviation of each
      variable](#measure-the-standard-deviation-of-each-variable)
    - [Measure the variance of each
      variable](#measure-the-variance-of-each-variable)
    - [Measure the kurtosis of each
      variable](#measure-the-kurtosis-of-each-variable)
  - [Measures of Relationship](#measures-of-relationship)
    - [Measure the covariance between
      variables](#measure-the-covariance-between-variables)
    - [Perform ANOVA on the “crop_dataset”
      dataset](#perform-anova-on-the-crop_dataset-dataset)
  - [Univariate Plots](#univariate-plots)
    - [Create Box and Whisker Plots for Each Numeric
      Attribute](#create-box-and-whisker-plots-for-each-numeric-attribute)
    - [Create Bar Plots for Each Categorical
      Attribute](#create-bar-plots-for-each-categorical-attribute)
    - [Create a Missingness Map to Identify Missing
      Data](#create-a-missingness-map-to-identify-missing-data)
  - [Multivariate Plots](#multivariate-plots)
    - [Create a ggcorplot](#create-a-ggcorplot)
- [Data Imputation](#data-imputation)
  - [Confirm the ‘missingness’ in the dataset before
    Imputation](#confirm-the-missingness-in-the-dataset-before-imputation)
  - [How many?](#how-many)
  - [What is the percentage of missing data in the entire
    dataset?](#what-is-the-percentage-of-missing-data-in-the-entire-dataset)
  - [How many missing values does each variable
    have?](#how-many-missing-values-does-each-variable-have)
  - [What is the number and percentage of missing values grouped by each
    variable?](#what-is-the-number-and-percentage-of-missing-values-grouped-by-each-variable)
  - [What is the number and percentage of missing values grouped by each
    observation?](#what-is-the-number-and-percentage-of-missing-values-grouped-by-each-observation)
  - [Which variables contain the most missing
    values?](#which-variables-contain-the-most-missing-values)
  - [Where are missing values located (the shaded regions in the
    plot)?](#where-are-missing-values-located-the-shaded-regions-in-the-plot)
  - [Create the visualization](#create-the-visualization)
  - [Removing the variables that are
    irrelevant](#removing-the-variables-that-are-irrelevant)
  - [Use the MICE package to perform data
    imputation](#use-the-mice-package-to-perform-data-imputation)
  - [Impute the missing data](#impute-the-missing-data)
  - [Confirm the “missingness” in the Imputed
    Dataset](#confirm-the-missingness-in-the-imputed-dataset)
  - [A visual confirmation that the dataset has no more missing values
    in any
    feature](#a-visual-confirmation-that-the-dataset-has-no-more-missing-values-in-any-feature)
- [Repeating Data Imputation after finding missing data in variable
  altitude](#repeating-data-imputation-after-finding-missing-data-in-variable-altitude)
  - [Are there missing values in the
    dataset?](#are-there-missing-values-in-the-dataset)
  - [How many?](#how-many-1)
  - [What is the percentage of missing data in the entire
    dataset?](#what-is-the-percentage-of-missing-data-in-the-entire-dataset-1)
  - [How many missing values does each variable
    have?](#how-many-missing-values-does-each-variable-have-1)
  - [What is the number and percentage of missing values grouped by each
    variable?](#what-is-the-number-and-percentage-of-missing-values-grouped-by-each-variable-1)
  - [Which variables contain the most missing
    values?](#which-variables-contain-the-most-missing-values-1)
  - [Where are missing values located (the shaded regions in the
    plot)?](#where-are-missing-values-located-the-shaded-regions-in-the-plot-1)
  - [Create the visualization](#create-the-visualization-1)
- [Resampling Methods](#resampling-methods)
  - [Perform str() function](#perform-str-function)
  - [Split the dataset](#split-the-dataset)
- [:Bootstrapping](#bootstrapping)
  - [Bootstrapping train control](#bootstrapping-train-control)
- [Algorithm Selection](#algorithm-selection)
- [Algorithm Selection for
  Classification](#algorithm-selection-for-classification)
- [Linear Algorithms](#linear-algorithms)
  - [Linear Discriminant Analysis](#linear-discriminant-analysis)
    - [Linear Discriminant Analysis without
      caret](#linear-discriminant-analysis-without-caret)
      - [Train the model](#train-the-model)
      - [Display the model’s details](#display-the-models-details)
      - [Make predictions](#make-predictions)
    - [Linear Discriminant Analysis with
      caret](#linear-discriminant-analysis-with-caret)
      - [Train the model](#train-the-model-1)
      - [Display the model’s details](#display-the-models-details-1)
      - [Make predictions](#make-predictions-1)
- [Model Performance Comparison](#model-performance-comparison)
- [The Resamples Function](#the-resamples-function)
  - [CART](#cart)
  - [KNN](#knn)
  - [SVM](#svm)
  - [Random Forest](#random-forest)
  - [Call the `resamples` Function](#call-the-resamples-function)
- [Display the Results](#display-the-results)
  - [Table Summary](#table-summary)
  - [Dot Plots](#dot-plots)
- [Hyperparameter Tuning](#hyperparameter-tuning)
- [Apply a “Random Search” to identify the best parameter
  value](#apply-a-random-search-to-identify-the-best-parameter-value)
- [Ensemble Methods](#ensemble-methods)
- [Bagging](#bagging)
- [Example of Bagging algorithms](#example-of-bagging-algorithms)
  - [Bagged CART](#bagged-cart)
  - [Random Forest](#random-forest-1)
- [Summarize results](#summarize-results)
- [Plumber API](#plumber-api)
- [Save and Load your Model](#save-and-load-your-model)
- [The saved model can then be loaded later as
  follows:](#the-saved-model-can-then-be-loaded-later-as-follows)
- [Consume PlumberAPIOutput](#consume-plumberapioutput)
- [Enclose everything in a function](#enclose-everything-in-a-function)

# Student Details

<table style="width:99%;">
<colgroup>
<col style="width: 65%" />
<col style="width: 33%" />
</colgroup>
<tbody>
<tr class="odd">
<td><strong>Student ID Number</strong></td>
<td><p>134111</p>
<p>120313</p></td>
</tr>
<tr class="even">
<td><strong>Student Name</strong></td>
<td><p>Juma Immaculate Haayo</p>
<p>Daniel Obala</p></td>
</tr>
<tr class="odd">
<td><strong>BBIT 4.2 Group</strong></td>
<td>BBIT Exempt</td>
</tr>
<tr class="even">
<td><strong>BI Project Group Name/ID (if applicable)</strong></td>
<td>GroundBreakers</td>
</tr>
</tbody>
</table>

# Setup Chunk

**Note:** the following KnitR options have been set as the global
defaults: <BR>
`knitr::opts_chunk$set(echo = TRUE, warning = FALSE, eval = TRUE, collapse = FALSE, tidy = TRUE)`.

More KnitR options are documented here
<https://bookdown.org/yihui/rmarkdown-cookbook/chunk-options.html> and
here <https://yihui.org/knitr/options/>.

# Understanding the Dataset (Exploratory Data Analysis (EDA))

## Downloading the Dataset

### Source:

The dataset that was used can be downloaded here:
*\<<https://www.kaggle.com/code/triptmann/irrigation-scheduling-for-smart-agriculture/input>\>*

### Reference:

*\<Cite the dataset here using APA\>  
Refer to the APA 7th edition manual for rules on how to cite datasets:
<https://apastyle.apa.org/style-grammar-guidelines/references/examples/data-set-references>*

# Install and load all the packages

We installed all the packages that will enable us execute our project.

``` r
# Install renv:
if (!is.element("renv", installed.packages()[, 1])) {
  install.packages("renv", dependencies = TRUE)
}
require("renv")
```

    ## Loading required package: renv

    ## 
    ## Attaching package: 'renv'

    ## The following objects are masked from 'package:stats':
    ## 
    ##     embed, update

    ## The following objects are masked from 'package:utils':
    ## 
    ##     history, upgrade

    ## The following objects are masked from 'package:base':
    ## 
    ##     autoload, load, remove

``` r
## dplyr ----
if (!is.element("dplyr", installed.packages()[, 1])) {
  install.packages("dplyr", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
require("dplyr")
```

    ## Loading required package: dplyr

    ## 
    ## Attaching package: 'dplyr'

    ## The following objects are masked from 'package:stats':
    ## 
    ##     filter, lag

    ## The following objects are masked from 'package:base':
    ## 
    ##     intersect, setdiff, setequal, union

``` r
## naniar ----
# Documentation:
#   https://cran.r-project.org/package=naniar or
#   https://www.rdocumentation.org/packages/naniar/versions/1.0.0
if (!is.element("naniar", installed.packages()[, 1])) {
  install.packages("naniar", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
require("naniar")
```

    ## Loading required package: naniar

``` r
## ggplot2 ----
# We require the "ggplot2" package to create more appealing visualizations
if (!is.element("ggplot2", installed.packages()[, 1])) {
  install.packages("ggplot2", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
require("ggplot2")
```

    ## Loading required package: ggplot2

``` r
## MICE ----
# We use the MICE package to perform data imputation
if (!is.element("mice", installed.packages()[, 1])) {
  install.packages("mice", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
require("mice")
```

    ## Loading required package: mice

    ## 
    ## Attaching package: 'mice'

    ## The following object is masked from 'package:stats':
    ## 
    ##     filter

    ## The following objects are masked from 'package:base':
    ## 
    ##     cbind, rbind

``` r
## Amelia ----
if (!is.element("Amelia", installed.packages()[, 1])) {
  install.packages("Amelia", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
require("Amelia")
```

    ## Loading required package: Amelia

    ## Loading required package: Rcpp

    ## ## 
    ## ## Amelia II: Multiple Imputation
    ## ## (Version 1.8.1, built: 2022-11-18)
    ## ## Copyright (C) 2005-2023 James Honaker, Gary King and Matthew Blackwell
    ## ## Refer to http://gking.harvard.edu/amelia/ for more information
    ## ##

``` r
## MICE ----
# We use the MICE package to perform data imputation
if (!is.element("mice", installed.packages()[, 1])) {
  install.packages("mice", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
require("mice")

if (!is.element("e1071", installed.packages()[, 1])) {
  install.packages("e1071", dependencies = TRUE)
}
require("e1071")
```

    ## Loading required package: e1071

``` r
if (!is.element("ggcorrplot", installed.packages()[, 1])) {
  install.packages("ggcorrplot", dependencies = TRUE)
}
require("ggcorrplot")
```

    ## Loading required package: ggcorrplot

``` r
## caret ----
if (require("caret")) {
  require("caret")
} else {
  install.packages("caret", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
```

    ## Loading required package: caret

    ## Loading required package: lattice

``` r
## klaR ----
if (require("klaR")) {
  require("klaR")
} else {
  install.packages("klaR", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
```

    ## Loading required package: klaR

    ## Loading required package: MASS

    ## 
    ## Attaching package: 'MASS'

    ## The following object is masked from 'package:dplyr':
    ## 
    ##     select

``` r
## readr ----
if (require("readr")) {
  require("readr")
} else {
  install.packages("readr", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
```

    ## Loading required package: readr

``` r
## LiblineaR ----
if (require("LiblineaR")) {
  require("LiblineaR")
} else {
  install.packages("LiblineaR", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
```

    ## Loading required package: LiblineaR

``` r
## naivebayes ----
if (require("naivebayes")) {
  require("naivebayes")
} else {
  install.packages("naivebayes", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
```

    ## Loading required package: naivebayes

    ## naivebayes 0.9.7 loaded

``` r
## stats ----
if (require("stats")) {
  require("stats")
} else {
  install.packages("stats", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}

## mlbench ----
if (require("mlbench")) {
  require("mlbench")
} else {
  install.packages("mlbench", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
```

    ## Loading required package: mlbench

``` r
## MASS ----
if (require("MASS")) {
  require("MASS")
} else {
  install.packages("MASS", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}

## glmnet ----
if (require("glmnet")) {
  require("glmnet")
} else {
  install.packages("glmnet", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
```

    ## Loading required package: glmnet

    ## Loading required package: Matrix

    ## Loaded glmnet 4.1-8

``` r
## kernlab ----
if (require("kernlab")) {
  require("kernlab")
} else {
  install.packages("kernlab", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
```

    ## Loading required package: kernlab

    ## 
    ## Attaching package: 'kernlab'

    ## The following object is masked from 'package:mice':
    ## 
    ##     convergence

    ## The following object is masked from 'package:ggplot2':
    ## 
    ##     alpha

``` r
## rpart ----
if (require("rpart")) {
  require("rpart")
} else {
  install.packages("rpart", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
```

    ## Loading required package: rpart

``` r
## randomForest ----
if (require("randomForest")) {
  require("randomForest")
} else {
  install.packages("randomForest", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
```

    ## Loading required package: randomForest

    ## randomForest 4.7-1.1

    ## Type rfNews() to see new features/changes/bug fixes.

    ## 
    ## Attaching package: 'randomForest'

    ## The following object is masked from 'package:ggplot2':
    ## 
    ##     margin

    ## The following object is masked from 'package:dplyr':
    ## 
    ##     combine

``` r
## RRF ----
if (require("RRF")) {
  require("RRF")
} else {
  install.packages("RRF", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
```

    ## Loading required package: RRF

    ## Registered S3 method overwritten by 'RRF':
    ##   method      from        
    ##   plot.margin randomForest

    ## RRF 1.9.4

    ## Type rrfNews() to see new features/changes/bug fixes.

    ## 
    ## Attaching package: 'RRF'

    ## The following objects are masked from 'package:randomForest':
    ## 
    ##     classCenter, combine, getTree, grow, importance, margin, MDSplot,
    ##     na.roughfix, outlier, partialPlot, treesize, varImpPlot, varUsed

    ## The following object is masked from 'package:ggplot2':
    ## 
    ##     margin

    ## The following object is masked from 'package:dplyr':
    ## 
    ##     combine

``` r
## caretEnsemble ----
if (require("caretEnsemble")) {
  require("caretEnsemble")
} else {
  install.packages("caretEnsemble", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
```

    ## Loading required package: caretEnsemble

    ## 
    ## Attaching package: 'caretEnsemble'

    ## The following object is masked from 'package:ggplot2':
    ## 
    ##     autoplot

``` r
## C50 ----
if (require("C50")) {
  require("C50")
} else {
  install.packages("C50", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
```

    ## Loading required package: C50

``` r
## adabag ----
if (require("adabag")) {
  require("adabag")
} else {
  install.packages("adabag", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
```

    ## Loading required package: adabag

    ## Loading required package: foreach

    ## Loading required package: doParallel

    ## Loading required package: iterators

    ## Loading required package: parallel

``` r
## plumber ----
if (require("plumber")) {
  require("plumber")
} else {
  install.packages("plumber", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
```

    ## Loading required package: plumber

``` r
## httr ----
if (require("httr")) {
  require("httr")
} else {
  install.packages("httr", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
```

    ## Loading required package: httr

    ## 
    ## Attaching package: 'httr'

    ## The following object is masked from 'package:caret':
    ## 
    ##     progress

``` r
## jsonlite ----
if (require("jsonlite")) {
  require("jsonlite")
} else {
  install.packages("jsonlite", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
```

    ## Loading required package: jsonlite

# Load datasets

## DATASET: Intelligent Irrigation System

### Description

Our system’s primary function is to provide automatic water supply.
Farmers are pleased with the autonomous water supply based on their
crops, according to the product experience. Product functionalities
include providing water as needed and automatically activating the relay
motor. Real-time sensing and control, self-control, and complete removal
of man power are product features. Farmers who can autonomously supply
water to different crops based on their needs are examples of customer
revalidation.This proposal offered an embedded system for autonomous
irrigation control. When you go on vacation, you can water your plants
on a regular basis. A wireless sensor network is used in the system for
real-time sensing and control of an irrigation system. This system
offers regular and required water levels for the garden and farm while
minimizing water waste. This method is meant to build an automatic
irrigation mechanism that detects the moisture content of the earth and
turns the pumping motor ON and OFF. In this setup, we connect the
Arduino board to the soil moisture sensor and the dht11 sensor.The
primary goal of this project is to create an intelligent irrigation
system that analyzes soil moisture and assists in deciding whether to
turn on or off the water supply. The goal of this project is to offer an
autonomous irrigation system for plants, which will aid in water
conservation. The primary goal of this initiative is to eliminate human
labor while also conserving water and the environment.

``` r
library(readr)
IrrigationScheduling <- read_csv("../data/IrrigationScheduling.csv")
```

    ## Rows: 4688 Columns: 10
    ## ── Column specification ────────────────────────────────────────────────────────
    ## Delimiter: ","
    ## chr  (2): class, date
    ## dbl  (7): id, temperature, pressure, altitude, soilmiosture, note, status
    ## time (1): time
    ## 
    ## ℹ Use `spec()` to retrieve the full column specification for this data.
    ## ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.

``` r
View(IrrigationScheduling)
```

# Exploratory Data Analysis

The code below is used to initialize renv in a new or existing project

The prompt received after executing renv::init() is as shown below: This
project already has a lockfile. What would you like to do? 1: Restore
the project from the lockfile. 2: Discard the lockfile and re-initialize
the project. 3: Activate the project without snapshotting or installing
any packages. 4: Abort project initialization.

Then you proceed to chose the first option

``` r
renv::init()
```

\##Dimensions Refer to the number of observations (rows) and the number
of attributes/variables/features (columns).

``` r
dim(IrrigationScheduling)
```

    ## [1] 4688   10

## Identify the Data Types

Knowing the data types will help you to identify the most appropriate
visualization types and algorithms that can be applied. It can also help
you to identify the need to convert from categorical data (factors) to
integers or vice versa where necessary

``` r
sapply(IrrigationScheduling, class)
```

    ## $id
    ## [1] "numeric"
    ## 
    ## $temperature
    ## [1] "numeric"
    ## 
    ## $pressure
    ## [1] "numeric"
    ## 
    ## $altitude
    ## [1] "numeric"
    ## 
    ## $soilmiosture
    ## [1] "numeric"
    ## 
    ## $note
    ## [1] "numeric"
    ## 
    ## $status
    ## [1] "numeric"
    ## 
    ## $class
    ## [1] "character"
    ## 
    ## $date
    ## [1] "character"
    ## 
    ## $time
    ## [1] "hms"      "difftime"

## Descriptive Statistics

### Measures of Frequency

Identify the number of instances that belong to each class It is more
sensible to count categorical variables (factors or dimensions) than
numeric variables

``` r
irrigation_scheduling_freq <- IrrigationScheduling$class
cbind(frequency = table(irrigation_scheduling_freq),
      percentage = prop.table(table(irrigation_scheduling_freq)) * 100)
```

    ##          frequency percentage
    ## Dry            366   7.807167
    ## Very Dry      1023  21.821672
    ## Very Wet      1842  39.291809
    ## Wet           1457  31.079352

### Measures of Central Tendency

#### Calculate the mode

We identify the class that appears the most

``` r
irrigation_scheduling_chas_mode <- names(table(IrrigationScheduling$class))[
  which(table(IrrigationScheduling$class) == max(table(IrrigationScheduling$class)))
]
print(irrigation_scheduling_chas_mode)
```

    ## [1] "Very Wet"

## Measures of Distribution/Dispersion/Spread/Scatter/Variability

### Measure the distribution of the data for each variable

``` r
summary(IrrigationScheduling)
```

    ##        id        temperature        pressure        altitude     
    ##  Min.   :   1   Min.   : 27.97   Min.   :-2120   Min.   :-17.61  
    ##  1st Qu.:1173   1st Qu.: 28.63   1st Qu.: 9935   1st Qu.:-16.34  
    ##  Median :2344   Median : 29.18   Median : 9970   Median :-13.47  
    ##  Mean   :2344   Mean   : 29.60   Mean   : 9963   Mean   :-14.29  
    ##  3rd Qu.:3516   3rd Qu.: 29.99   3rd Qu.: 9976   3rd Qu.:-12.95  
    ##  Max.   :4688   Max.   :178.70   Max.   :99931   Max.   :116.70  
    ##                                                  NA's   :6       
    ##   soilmiosture         note           status          class          
    ##  Min.   :-243.0   Min.   :0.000   Min.   :0.0000   Length:4688       
    ##  1st Qu.: 171.0   1st Qu.:1.000   1st Qu.:0.0000   Class :character  
    ##  Median : 233.0   Median :2.000   Median :1.0000   Mode  :character  
    ##  Mean   : 243.7   Mean   :1.878   Mean   :0.7037                     
    ##  3rd Qu.: 326.0   3rd Qu.:3.000   3rd Qu.:1.0000                     
    ##  Max.   : 480.0   Max.   :3.000   Max.   :1.0000                     
    ##                                                                      
    ##      date               time         
    ##  Length:4688        Length:4688      
    ##  Class :character   Class1:hms       
    ##  Mode  :character   Class2:difftime  
    ##                     Mode  :numeric   
    ##                                      
    ##                                      
    ## 

### Measure the standard deviation of each variable

Low variability is ideal because it means that you can better predict
information about the population based on sample data. High variability
means that the values are less consistent, thus making it harder to make
predictions.

``` r
sapply(IrrigationScheduling[, 2:3], sd)
```

    ## temperature    pressure 
    ##    5.842685 1383.602527

### Measure the variance of each variable

``` r
sapply(IrrigationScheduling[, 2:3], var)
```

    ##  temperature     pressure 
    ## 3.413697e+01 1.914356e+06

### Measure the kurtosis of each variable

Informs you of how often outliers occur in the results.

``` r
sapply(IrrigationScheduling[, 2:3],  kurtosis, type = 2)
```

    ## temperature    pressure 
    ##     631.206    3823.606

## Measures of Relationship

### Measure the covariance between variables

``` r
irrigation_scheduling_cov <- cov(IrrigationScheduling[, 2:3])
View(irrigation_scheduling_cov)
```

### Perform ANOVA on the “crop_dataset” dataset

Estimate how a quantitative dependent variable changes according to the
levels of one or more categorical independent variables.

The code below performs two way anova whereby we are testing the effect
of temperature and and soilmiosture on altitude

``` r
irrigation_scheduling_additive_two_way_anova <- aov(altitude ~temperature +soilmiosture, # nolint
                                           data = IrrigationScheduling)
summary(irrigation_scheduling_additive_two_way_anova)
```

    ##                Df Sum Sq Mean Sq F value   Pr(>F)    
    ## temperature     1  16379   16379 4697.09  < 2e-16 ***
    ## soilmiosture    1    172     172   49.46 2.32e-12 ***
    ## Residuals    4679  16316       3                     
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 6 observations deleted due to missingness

## Univariate Plots

### Create Box and Whisker Plots for Each Numeric Attribute

``` r
boxplot(IrrigationScheduling[, 5], main = names(IrrigationScheduling)[5])
```

![](Project-Submission_files/figure-gfm/Your%2014th%20Code%20Chunk-1.png)<!-- -->

### Create Bar Plots for Each Categorical Attribute

This is done using a bar chart to give an idea of the proportion of
instances that belong to each category.

``` r
barplot(table(IrrigationScheduling[, 7]), main = names(IrrigationScheduling)[7])
```

![](Project-Submission_files/figure-gfm/Your%2015th%20Code%20Chunk-1.png)<!-- -->

### Create a Missingness Map to Identify Missing Data

Horizontal lines indicate missing data for an instance whereas vertical
lines indicate missing data for an attribute.

``` r
missmap(IrrigationScheduling, col = c("red", "grey"), legend = TRUE)
```

![](Project-Submission_files/figure-gfm/Your%2016th%20Code%20Chunk-1.png)<!-- -->

## Multivariate Plots

### Create a ggcorplot

ggcorplot function helps in making a more appealing graph

``` r
ggcorrplot(cor(IrrigationScheduling[, 1:3]))
```

![](Project-Submission_files/figure-gfm/Your%2017th%20Code%20Chunk-1.png)<!-- -->

# Data Imputation

## Confirm the ‘missingness’ in the dataset before Imputation

We are checking if there are any missing values in the Irrigation
Scheduling dataset

``` r
any_na(IrrigationScheduling)
```

    ## [1] TRUE

## How many?

We are finding the number of missing values in the Irrigation Scheduling
dataset

``` r
n_miss(IrrigationScheduling)
```

    ## [1] 6

## What is the percentage of missing data in the entire dataset?

We are finding the percentage of missing values in the Irrigation
Scheduling dataset

``` r
prop_miss(IrrigationScheduling)
```

    ## [1] 0.0001279863

## How many missing values does each variable have?

We are finding the missing values in the each variable

``` r
IrrigationScheduling %>% is.na() %>% colSums()
```

    ##           id  temperature     pressure     altitude soilmiosture         note 
    ##            0            0            0            6            0            0 
    ##       status        class         date         time 
    ##            0            0            0            0

## What is the number and percentage of missing values grouped by each variable?

``` r
miss_var_summary(IrrigationScheduling)
```

    ## # A tibble: 10 × 3
    ##    variable     n_miss pct_miss
    ##    <chr>         <int>    <dbl>
    ##  1 altitude          6    0.128
    ##  2 id                0    0    
    ##  3 temperature       0    0    
    ##  4 pressure          0    0    
    ##  5 soilmiosture      0    0    
    ##  6 note              0    0    
    ##  7 status            0    0    
    ##  8 class             0    0    
    ##  9 date              0    0    
    ## 10 time              0    0

## What is the number and percentage of missing values grouped by each observation?

``` r
miss_case_summary(IrrigationScheduling)
```

    ## # A tibble: 4,688 × 3
    ##     case n_miss pct_miss
    ##    <int>  <int>    <dbl>
    ##  1   414      1       10
    ##  2  4217      1       10
    ##  3  4231      1       10
    ##  4  4232      1       10
    ##  5  4631      1       10
    ##  6  4634      1       10
    ##  7     1      0        0
    ##  8     2      0        0
    ##  9     3      0        0
    ## 10     4      0        0
    ## # ℹ 4,678 more rows

## Which variables contain the most missing values?

``` r
gg_miss_var(IrrigationScheduling)
```

![](Project-Submission_files/figure-gfm/Your%2024th%20Code%20Chunk-1.png)<!-- -->

## Where are missing values located (the shaded regions in the plot)?

``` r
vis_miss(IrrigationScheduling) + theme(axis.text.x = element_text(angle = 80))
```

![](Project-Submission_files/figure-gfm/Your%2025th%20Code%20Chunk-1.png)<!-- -->

## Create the visualization

``` r
gg_miss_fct(IrrigationScheduling, fct = altitude)
```

![](Project-Submission_files/figure-gfm/Your%2026th%20Code%20Chunk-1.png)<!-- -->

## Removing the variables that are irrelevant

We remove the date and time variables because we do not need them

``` r
IrrigationScheduling <-IrrigationScheduling[-9:-10]
```

## Use the MICE package to perform data imputation

``` r
somewhat_correlated_variables_std3 <- quickpred(IrrigationScheduling, mincor = 0.3) # nolint


irrigation_scheduling_mice <- mice(IrrigationScheduling, m = 11, method = "pmm",
                             seed = 7,
                             predictorMatrix = somewhat_correlated_variables_std3)
```

    ## 
    ##  iter imp variable
    ##   1   1  altitude
    ##   1   2  altitude
    ##   1   3  altitude
    ##   1   4  altitude
    ##   1   5  altitude
    ##   1   6  altitude
    ##   1   7  altitude
    ##   1   8  altitude
    ##   1   9  altitude
    ##   1   10  altitude
    ##   1   11  altitude
    ##   2   1  altitude
    ##   2   2  altitude
    ##   2   3  altitude
    ##   2   4  altitude
    ##   2   5  altitude
    ##   2   6  altitude
    ##   2   7  altitude
    ##   2   8  altitude
    ##   2   9  altitude
    ##   2   10  altitude
    ##   2   11  altitude
    ##   3   1  altitude
    ##   3   2  altitude
    ##   3   3  altitude
    ##   3   4  altitude
    ##   3   5  altitude
    ##   3   6  altitude
    ##   3   7  altitude
    ##   3   8  altitude
    ##   3   9  altitude
    ##   3   10  altitude
    ##   3   11  altitude
    ##   4   1  altitude
    ##   4   2  altitude
    ##   4   3  altitude
    ##   4   4  altitude
    ##   4   5  altitude
    ##   4   6  altitude
    ##   4   7  altitude
    ##   4   8  altitude
    ##   4   9  altitude
    ##   4   10  altitude
    ##   4   11  altitude
    ##   5   1  altitude
    ##   5   2  altitude
    ##   5   3  altitude
    ##   5   4  altitude
    ##   5   5  altitude
    ##   5   6  altitude
    ##   5   7  altitude
    ##   5   8  altitude
    ##   5   9  altitude
    ##   5   10  altitude
    ##   5   11  altitude

## Impute the missing data

We then create imputed data for the dataset using the mice::complete()
function in the mice package to fill in the missing data.

``` r
irrigation_scheduling_imputed <- mice::complete(irrigation_scheduling_mice, 1)
```

## Confirm the “missingness” in the Imputed Dataset

A textual confirmation that the dataset has no more missing values in
any feature

``` r
miss_var_summary(irrigation_scheduling_imputed)
```

    ## # A tibble: 8 × 3
    ##   variable     n_miss pct_miss
    ##   <chr>         <int>    <dbl>
    ## 1 id                0        0
    ## 2 temperature       0        0
    ## 3 pressure          0        0
    ## 4 altitude          0        0
    ## 5 soilmiosture      0        0
    ## 6 note              0        0
    ## 7 status            0        0
    ## 8 class             0        0

## A visual confirmation that the dataset has no more missing values in any feature

``` r
Amelia::missmap(irrigation_scheduling_imputed)
```

![](Project-Submission_files/figure-gfm/Your%2031st%20Code%20Chunk-1.png)<!-- -->

# Repeating Data Imputation after finding missing data in variable altitude

## Are there missing values in the dataset?

``` r
any_na(irrigation_scheduling_imputed)
```

    ## [1] FALSE

## How many?

``` r
n_miss(irrigation_scheduling_imputed)
```

    ## [1] 0

## What is the percentage of missing data in the entire dataset?

``` r
prop_miss(irrigation_scheduling_imputed)
```

    ## [1] 0

## How many missing values does each variable have?

``` r
irrigation_scheduling_imputed %>% is.na() %>% colSums()
```

    ##           id  temperature     pressure     altitude soilmiosture         note 
    ##            0            0            0            0            0            0 
    ##       status        class 
    ##            0            0

## What is the number and percentage of missing values grouped by each variable?

``` r
miss_var_summary(irrigation_scheduling_imputed)
```

    ## # A tibble: 8 × 3
    ##   variable     n_miss pct_miss
    ##   <chr>         <int>    <dbl>
    ## 1 id                0        0
    ## 2 temperature       0        0
    ## 3 pressure          0        0
    ## 4 altitude          0        0
    ## 5 soilmiosture      0        0
    ## 6 note              0        0
    ## 7 status            0        0
    ## 8 class             0        0

\##What is the number and percentage of missing values grouped by each
observation?

``` r
miss_case_summary(irrigation_scheduling_imputed)
```

    ## # A tibble: 4,688 × 3
    ##     case n_miss pct_miss
    ##    <int>  <int>    <dbl>
    ##  1     1      0        0
    ##  2     2      0        0
    ##  3     3      0        0
    ##  4     4      0        0
    ##  5     5      0        0
    ##  6     6      0        0
    ##  7     7      0        0
    ##  8     8      0        0
    ##  9     9      0        0
    ## 10    10      0        0
    ## # ℹ 4,678 more rows

## Which variables contain the most missing values?

``` r
gg_miss_var(irrigation_scheduling_imputed)
```

![](Project-Submission_files/figure-gfm/Your%2038th%20Code%20Chunk-1.png)<!-- -->

## Where are missing values located (the shaded regions in the plot)?

``` r
vis_miss(irrigation_scheduling_imputed) + theme(axis.text.x = element_text(angle = 80))
```

![](Project-Submission_files/figure-gfm/Your%2039th%20Code%20Chunk-1.png)<!-- -->

## Create the visualization

``` r
vis_miss(irrigation_scheduling_imputed) + theme(axis.text.x = element_text(angle = 80))
```

![](Project-Submission_files/figure-gfm/Your%2040th%20Code%20Chunk-1.png)<!-- -->

# Resampling Methods

## Perform str() function

Used to compactly display the structure (variables and data types) of
the dataset

``` r
str(irrigation_scheduling_imputed)
```

    ## 'data.frame':    4688 obs. of  8 variables:
    ##  $ id          : num  1 2 3 4 5 6 7 8 9 10 ...
    ##  $ temperature : num  29.1 29.1 29.1 29.1 29 ...
    ##  $ pressure    : num  9985 9984 9985 9984 9984 ...
    ##  $ altitude    : num  -12.2 -12.2 -12.2 -12.2 -12.2 ...
    ##  $ soilmiosture: num  377 379 376 377 379 376 380 380 380 379 ...
    ##  $ note        : num  0 0 0 0 0 0 0 0 0 0 ...
    ##  $ status      : num  0 0 0 0 0 0 0 0 0 0 ...
    ##  $ class       : chr  "Very Dry" "Very Dry" "Very Dry" "Very Dry" ...

## Split the dataset

Define a 80:20 train:test data split of the dataset. That is, 80% of the
original data will be used to train the model and 20% of the original
data will be used to test the model.

``` r
train_index <- createDataPartition(irrigation_scheduling_imputed$class,
                                   p = 0.8,
                                   list = FALSE)
IrrigationScheduling_train <- irrigation_scheduling_imputed[train_index, ]
IrrigationScheduling_test <- irrigation_scheduling_imputed[-train_index, ]
```

# :Bootstrapping

### Bootstrapping train control

Allows you to specify that bootstrapping (sampling with replacement) can
be used and also the number of times (repetitions or reps)the sampling
with replacement should be done.

This increases the size of the training dataset from 60 observations to
approximately 60 x 40 = 2,400 observations for training the model.

``` r
train_control <- trainControl(method = "boot", number = 40)
```

# Algorithm Selection

# Algorithm Selection for Classification

# Linear Algorithms

## Linear Discriminant Analysis

### Linear Discriminant Analysis without caret

``` r
sapply(irrigation_scheduling_imputed, class)
```

    ##           id  temperature     pressure     altitude soilmiosture         note 
    ##    "numeric"    "numeric"    "numeric"    "numeric"    "numeric"    "numeric" 
    ##       status        class 
    ##    "numeric"  "character"

#### Train the model

``` r
IrrigationScheduling_model_lda <- lda(class ~soilmiosture, data = IrrigationScheduling_train)
```

#### Display the model’s details

``` r
print(IrrigationScheduling_model_lda)
```

    ## Call:
    ## lda(class ~ soilmiosture, data = IrrigationScheduling_train)
    ## 
    ## Prior probabilities of groups:
    ##        Dry   Very Dry   Very Wet        Wet 
    ## 0.07809168 0.21828358 0.39285714 0.31076759 
    ## 
    ## Group means:
    ##          soilmiosture
    ## Dry          320.0068
    ## Very Dry     358.8632
    ## Very Wet     170.2931
    ## Wet          236.5180
    ## 
    ## Coefficients of linear discriminants:
    ##                     LD1
    ## soilmiosture 0.06392661

#### Make predictions

``` r
predictions <- predict(IrrigationScheduling_model_lda,
                       irrigation_scheduling_imputed[, 1:5])$class
```

### Linear Discriminant Analysis with caret

#### Train the model

We apply a Leave One Out Cross Validation resampling method. We also
apply a standardize data transform to make the mean = 0 and standard
deviation = 1

``` r
set.seed(7)
train_control <- trainControl(method = "LOOCV")
IrrigationScheduling_caret_model_lda <- train(class ~ soilmiosture,
                                     data = IrrigationScheduling_train,
                                     method = "lda", metric = "Accuracy",
                                     preProcess = c("center", "scale"),
                                     trControl = train_control)
```

#### Display the model’s details

``` r
print(IrrigationScheduling_caret_model_lda)
```

    ## Linear Discriminant Analysis 
    ## 
    ## 3752 samples
    ##    1 predictor
    ##    4 classes: 'Dry', 'Very Dry', 'Very Wet', 'Wet' 
    ## 
    ## Pre-processing: centered (1), scaled (1) 
    ## Resampling: Leave-One-Out Cross-Validation 
    ## Summary of sample sizes: 3751, 3751, 3751, 3751, 3751, 3751, ... 
    ## Resampling results:
    ## 
    ##   Accuracy   Kappa    
    ##   0.9813433  0.9732002

#### Make predictions

``` r
predictions <- predict(IrrigationScheduling_caret_model_lda,
                       IrrigationScheduling_test[, 1:5])
```

# Model Performance Comparison

# The Resamples Function

The “resamples()” function checks that the models are comparable and
that they used the same training scheme (“train_control” configuration).
To do this, after the models are trained, they are added to a list and
we pass this list of models as an argument to the resamples() function
in R.

``` r
sapply(lapply(irrigation_scheduling_imputed, unique), length)
```

    ##           id  temperature     pressure     altitude soilmiosture         note 
    ##         4688          426         2593          555          262            4 
    ##       status        class 
    ##            2            4

``` r
train_control <- trainControl(method = "repeatedcv", number = 10, repeats = 3)
```

### CART

``` r
set.seed(7)
class_model_cart <- train(class ~ ., data = irrigation_scheduling_imputed,
                         method = "rpart", trControl = train_control)
```

### KNN

``` r
set.seed(7)
class_model_knn <- train(class ~ ., data = irrigation_scheduling_imputed,
                        method = "knn", trControl = train_control)
```

### SVM

``` r
set.seed(7)
class_model_svm <- train(class ~ ., data = irrigation_scheduling_imputed,
                        method = "svmRadial", trControl = train_control)
```

### Random Forest

``` r
set.seed(7)
class_model_rf <- train(class ~ ., data = irrigation_scheduling_imputed,
                       method = "rf", trControl = train_control)
```

## Call the `resamples` Function

``` r
results <- resamples(list( CART = class_model_cart,
                          KNN = class_model_knn, SVM = class_model_svm,
                          RF = class_model_rf))
```

# Display the Results

## Table Summary

Is the simplest comparison. It creates a table with one model per row
and its corresponding evaluation metrics displayed per column.

``` r
summary(results)
```

    ## 
    ## Call:
    ## summary.resamples(object = results)
    ## 
    ## Models: CART, KNN, SVM, RF 
    ## Number of resamples: 30 
    ## 
    ## Accuracy 
    ##           Min.   1st Qu.    Median      Mean   3rd Qu.     Max. NA's
    ## CART 0.9189765 0.9211087 0.9212766 0.9524688 1.0000000 1.000000    0
    ## KNN  0.9594883 0.9685501 0.9723109 0.9739761 0.9802155 0.987234    0
    ## SVM  0.9978587 1.0000000 1.0000000 0.9995731 1.0000000 1.000000    0
    ## RF   1.0000000 1.0000000 1.0000000 1.0000000 1.0000000 1.000000    0
    ## 
    ## Kappa 
    ##           Min.   1st Qu.    Median      Mean   3rd Qu.      Max. NA's
    ## CART 0.8816388 0.8847827 0.8849723 0.9305832 1.0000000 1.0000000    0
    ## KNN  0.9415542 0.9547979 0.9601232 0.9625022 0.9715158 0.9816259    0
    ## SVM  0.9969185 1.0000000 1.0000000 0.9993862 1.0000000 1.0000000    0
    ## RF   1.0000000 1.0000000 1.0000000 1.0000000 1.0000000 1.0000000    0

## Dot Plots

They show both the mean estimated accuracy as well as the confidence
interval.

``` r
scales <- list(x = list(relation = "free"), y = list(relation = "free"))
dotplot(results, scales = scales)
```

![](Project-Submission_files/figure-gfm/Your%2058th%20Code%20Chunk-1.png)<!-- -->

# Hyperparameter Tuning

Involves identifying and applying the best combination of algorithm
parameters

\#Train the Model

The “mtry” parameter Number of variables randomly sampled as candidates
at each split.

``` r
seed <- 7
metric <- "Accuracy"

train_control <- trainControl(method = "repeatedcv", number = 10, repeats = 3)
set.seed(seed)
mtry <- sqrt(ncol(irrigation_scheduling_imputed))
tunegrid <- expand.grid(.mtry = mtry)
irrigation_model_default_rf <- train(class ~ ., data = irrigation_scheduling_imputed, method = "rf",
                                metric = metric,
                                # enables us to maintain mtry at a constant
                                tuneGrid = tunegrid,
                                trControl = train_control)
print(irrigation_model_default_rf)
```

    ## Random Forest 
    ## 
    ## 4688 samples
    ##    7 predictor
    ##    4 classes: 'Dry', 'Very Dry', 'Very Wet', 'Wet' 
    ## 
    ## No pre-processing
    ## Resampling: Cross-Validated (10 fold, repeated 3 times) 
    ## Summary of sample sizes: 4219, 4220, 4219, 4218, 4219, 4219, ... 
    ## Resampling results:
    ## 
    ##   Accuracy   Kappa    
    ##   0.9999289  0.9998978
    ## 
    ## Tuning parameter 'mtry' was held constant at a value of 2.828427

# Apply a “Random Search” to identify the best parameter value

A random search is good if we are unsure of what the value might be and
we want to overcome any biases we may have for setting the parameter
value.

``` r
train_control <- trainControl(method = "repeatedcv", number = 10, repeats = 3,
                              search = "random")
set.seed(seed)
mtry <- sqrt(ncol(irrigation_scheduling_imputed))

irrigation_model_random_search_rf <- train(class ~ ., data = irrigation_scheduling_imputed, method = "rf",
                                      metric = metric,
                                      # enables us to randomly search 12 options
                                      # for the value of mtry
                                      tuneLength = 12,
                                      trControl = train_control)

print(irrigation_model_random_search_rf)
```

    ## Random Forest 
    ## 
    ## 4688 samples
    ##    7 predictor
    ##    4 classes: 'Dry', 'Very Dry', 'Very Wet', 'Wet' 
    ## 
    ## No pre-processing
    ## Resampling: Cross-Validated (10 fold, repeated 3 times) 
    ## Summary of sample sizes: 4219, 4220, 4219, 4218, 4219, 4219, ... 
    ## Resampling results across tuning parameters:
    ## 
    ##   mtry  Accuracy   Kappa    
    ##   2     0.9997865  0.9996928
    ##   3     0.9998575  0.9997950
    ##   4     0.9998575  0.9997949
    ##   6     0.9999286  0.9998972
    ##   7     0.9998579  0.9997955
    ## 
    ## Accuracy was used to select the optimal model using the largest value.
    ## The final value used for the model was mtry = 6.

``` r
plot(irrigation_model_random_search_rf)
```

![](Project-Submission_files/figure-gfm/Your%2060th%20Code%20Chunk-1.png)<!-- -->

# Ensemble Methods

# Bagging

# Example of Bagging algorithms

``` r
train_control <- trainControl(method = "repeatedcv", number = 10, repeats = 3)
seed <- 7
metric <- "Accuracy"
```

## Bagged CART

``` r
set.seed(seed)
irrigation_model_bagged_cart <- train(class ~ ., data = irrigation_scheduling_imputed, method = "treebag",
                               metric = metric,
                               trControl = train_control)
```

## Random Forest

``` r
set.seed(seed)
irrigation_model_rf <- train(class ~ ., data =irrigation_scheduling_imputed, method = "rf",
                      metric = metric, trControl = train_control)
```

# Summarize results

``` r
bagging_results <-
  resamples(list("Bagged Decision Tree" = irrigation_model_bagged_cart,
                 "Random Forest" = irrigation_model_rf))

summary(bagging_results)
```

    ## 
    ## Call:
    ## summary.resamples(object = bagging_results)
    ## 
    ## Models: Bagged Decision Tree, Random Forest 
    ## Number of resamples: 30 
    ## 
    ## Accuracy 
    ##                           Min. 1st Qu. Median      Mean 3rd Qu. Max. NA's
    ## Bagged Decision Tree 0.9978587       1      1 0.9997154       1    1    0
    ## Random Forest        1.0000000       1      1 1.0000000       1    1    0
    ## 
    ## Kappa 
    ##                           Min. 1st Qu. Median      Mean 3rd Qu. Max. NA's
    ## Bagged Decision Tree 0.9969169       1      1 0.9995903       1    1    0
    ## Random Forest        1.0000000       1      1 1.0000000       1    1    0

``` r
dotplot(bagging_results)
```

![](Project-Submission_files/figure-gfm/Your%2064th%20Code%20Chunk-1.png)<!-- -->

# Plumber API

# Save and Load your Model

Saved models can be loaded by calling the `readRDS()` function

``` r
saveRDS(IrrigationScheduling_caret_model_lda,
"../models/IrrigationScheduling_caret_model_lda.rds")
```

# The saved model can then be loaded later as follows:

``` r
loaded_irrigation_model_lda <- readRDS("../models/IrrigationScheduling_caret_model_lda.rds")
print(loaded_irrigation_model_lda)
```

    ## Linear Discriminant Analysis 
    ## 
    ## 3752 samples
    ##    1 predictor
    ##    4 classes: 'Dry', 'Very Dry', 'Very Wet', 'Wet' 
    ## 
    ## Pre-processing: centered (1), scaled (1) 
    ## Resampling: Leave-One-Out Cross-Validation 
    ## Summary of sample sizes: 3751, 3751, 3751, 3751, 3751, 3751, ... 
    ## Resampling results:
    ## 
    ##   Accuracy   Kappa    
    ##   0.9813433  0.9732002

``` r
predictions_with_loaded_model <-
  predict(loaded_irrigation_model_lda, newdata = IrrigationScheduling_test)
```

# Consume PlumberAPIOutput

# Enclose everything in a function

``` r
get_class_predictions <-
  function(arg_id, arg_temperature, arg_pressure, arg_altitude,
           arg_soilmiosture, arg_note, arg_status) {
    base_url <- "http://127.0.0.1:5022/irrigation"
    
    params <- list(arg_id = arg_id, arg_temperature = arg_temperature, arg_pressure = arg_pressure, arg_altitude = arg_altitude,
                   arg_soilmiosture = arg_soilmiosture, arg_note = arg_note, arg_status = arg_status)
    
    query_url <- modify_url(url = base_url, query = params)
    
    model_prediction <- GET(query_url)
    
    model_prediction_raw <- content(model_prediction, as = "text",
                                    encoding = "utf-8")
    
    jsonlite::fromJSON(model_prediction_raw)
  }
```
