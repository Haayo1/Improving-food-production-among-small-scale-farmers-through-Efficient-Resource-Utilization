
# Install and Load the Required Packages ----

# Install renv:
if (!is.element("renv", installed.packages()[, 1])) {
  install.packages("renv", dependencies = TRUE)
}
require("renv")

## dplyr ----
if (!is.element("dplyr", installed.packages()[, 1])) {
  install.packages("dplyr", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
require("dplyr")

## naniar ----
# Documentation:
#   https://cran.r-project.org/package=naniar or
#   https://www.rdocumentation.org/packages/naniar/versions/1.0.0
if (!is.element("naniar", installed.packages()[, 1])) {
  install.packages("naniar", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
require("naniar")

## ggplot2 ----
# We require the "ggplot2" package to create more appealing visualizations
if (!is.element("ggplot2", installed.packages()[, 1])) {
  install.packages("ggplot2", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
require("ggplot2")

## MICE ----
# We use the MICE package to perform data imputation
if (!is.element("mice", installed.packages()[, 1])) {
  install.packages("mice", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
require("mice")

## Amelia ----
if (!is.element("Amelia", installed.packages()[, 1])) {
  install.packages("Amelia", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
require("Amelia")


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

if (!is.element("ggcorrplot", installed.packages()[, 1])) {
  install.packages("ggcorrplot", dependencies = TRUE)
}
require("ggcorrplot")

## caret ----
if (require("caret")) {
  require("caret")
} else {
  install.packages("caret", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}

## klaR ----
if (require("klaR")) {
  require("klaR")
} else {
  install.packages("klaR", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}


## readr ----
if (require("readr")) {
  require("readr")
} else {
  install.packages("readr", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}

## LiblineaR ----
if (require("LiblineaR")) {
  require("LiblineaR")
} else {
  install.packages("LiblineaR", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}

## naivebayes ----
if (require("naivebayes")) {
  require("naivebayes")
} else {
  install.packages("naivebayes", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}

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


## kernlab ----
if (require("kernlab")) {
  require("kernlab")
} else {
  install.packages("kernlab", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}

## rpart ----
if (require("rpart")) {
  require("rpart")
} else {
  install.packages("rpart", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}

## randomForest ----
if (require("randomForest")) {
  require("randomForest")
} else {
  install.packages("randomForest", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}

## RRF ----
if (require("RRF")) {
  require("RRF")
} else {
  install.packages("RRF", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}

## caretEnsemble ----
if (require("caretEnsemble")) {
  require("caretEnsemble")
} else {
  install.packages("caretEnsemble", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}

## C50 ----
if (require("C50")) {
  require("C50")
} else {
  install.packages("C50", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}

## adabag ----
if (require("adabag")) {
  require("adabag")
} else {
  install.packages("adabag", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}

## plumber ----
if (require("plumber")) {
  require("plumber")
} else {
  install.packages("plumber", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}

## httr ----
if (require("httr")) {
  require("httr")
} else {
  install.packages("httr", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}

## jsonlite ----
if (require("jsonlite")) {
  require("jsonlite")
} else {
  install.packages("jsonlite", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}

# Load datasets----

## DATASET: Intelligent Irrigation System----
### Description ----

#Our system's primary function is to provide automatic water supply. Farmers are pleased with the autonomous water supply based on their crops, according to the product experience. 
#Product functionalities include providing water as needed and automatically activating the relay motor. 
#Real-time sensing and control, self-control, and complete removal of man power are product features. 
#Farmers who can autonomously supply water to different crops based on their needs are examples of customer revalidation.
#This proposal offered an embedded system for autonomous irrigation control. When you go on vacation, you can water your plants on a regular basis. 
#A wireless sensor network is used in the system for real-time sensing and control of an irrigation system. 
#This system offers regular and required water levels for the garden and farm while minimizing water waste. This method is meant to build an automatic irrigation mechanism that detects the moisture content of the earth and turns the pumping motor ON and OFF. 
#In this setup, we connect the Arduino board to the soil moisture sensor and the dht11 sensor.

#The primary goal of this project is to create an intelligent irrigation system that analyzes soil moisture and assists in deciding whether to turn on or off the water supply. 
#The goal of this project is to offer an autonomous irrigation system for plants, which will aid in water conservation. 
#The primary goal of this initiative is to eliminate human labor while also conserving water and the environment.

library(readr)
IrrigationScheduling <- read_csv("data/IrrigationScheduling.csv")
View(IrrigationScheduling)

# Exploratory Data Analysis----

# Use renv::init() to initialize renv in a new or existing project.

# The prompt received after executing renv::init() is as shown below:
# This project already has a lockfile. What would you like to do?

# 1: Restore the project from the lockfile.
# 2: Discard the lockfile and re-initialize the project.
# 3: Activate the project without snapshotting or installing any packages.
# 4: Abort project initialization.

# Select option 1 to restore the project from the lockfile

renv::init()


#Dimensions----
# Dimensions refer to the number of observations (rows) and the number of
# attributes/variables/features (columns).

dim(IrrigationScheduling)

# Data Types ----

## Identify the Data Types ----
# Knowing the data types will help you to identify the most appropriate
# visualization types and algorithms that can be applied.It can also help you
# to identify the need to convert from categorical data (factors) to integers
# or vice versa where necessary. Execute the following command to identify the
# data types:

sapply(IrrigationScheduling, class)


# Descriptive Statistics ----

#This understanding can be done using descriptive statistics such as:

# 1. Measures of frequency
# (e.g., count, percent)

# 2. Measures of central tendency
# (e.g., mean, median, mode)

# 3. Measures of distribution/dispersion/spread/scatter/variability
# (e.g., range, quartiles, interquartile range, standard deviation, variance,
# kurtosis, skewness)

# 4. Measures of relationship
# (e.g., covariance, correlation, ANOVA)

# Understanding your data can lead to:
# (i)	  Data cleaning: Removing bad data or imputing missing data.
# (ii)	Data transformation: Reduce the skewness by applying the same function
#       to all the observations.
# (iii)	Data modelling: You may notice properties of the data such as
#       distributions or data types that suggest the use (or not) of
#       specific algorithms.

## Measures of Frequency ----


## Identify the number of instances that belong to each class. ----
# It is more sensible to count categorical variables (factors or dimensions)
# than numeric variables, e.g., counting the number of male and female
# participants instead of counting the frequency of each participant’s height.

irrigation_scheduling_freq <- IrrigationScheduling$class
cbind(frequency = table(irrigation_scheduling_freq),
      percentage = prop.table(table(irrigation_scheduling_freq)) * 100)

## Measures of Central Tendency ----

## Calculate the mode ----

irrigation_scheduling_chas_mode <- names(table(IrrigationScheduling$class))[
  which(table(IrrigationScheduling$class) == max(table(IrrigationScheduling$class)))
]
print(irrigation_scheduling_chas_mode)

## Measures of Distribution/Dispersion/Spread/Scatter/Variability ----

### Measure the distribution of the data for each variable ----

summary(IrrigationScheduling)

### Measure the standard deviation of each variable ----

# Measuring the variability in the dataset is important because the amount of
# variability determines how well you can generalize results from the sample
# dataset to a new observation in the population.

# Low variability is ideal because it means that you can better predict
# information about the population based on sample data. High variability means
# that the values are less consistent, thus making it harder to make
# predictions.

sapply(IrrigationScheduling[, 2:3], sd)

###  Measure the variance of each variable ----
sapply(IrrigationScheduling[, 2:3], var)

### Measure the kurtosis of each variable ----
# The Kurtosis informs you of how often outliers occur in the results.

# There are different formulas for calculating kurtosis.
# Specifying “type = 2” allows us to use the 2nd formula which is the same
# kurtosis formula used in SPSS and SAS. More details about any function can be
# obtained by searching the R help knowledge base. The knowledge base says:

# In “type = 2” (used in SPSS and SAS):
# 1.	Kurtosis < 3 implies a low number of outliers
# 2.	Kurtosis = 3 implies a medium number of outliers
# 3.	Kurtosis > 3 implies a high number of outliers


sapply(IrrigationScheduling[, 2:3],  kurtosis, type = 2)


## Measures of Relationship ----

## Measure the covariance between variables ----
irrigation_scheduling_cov <- cov(IrrigationScheduling[, 2:3])
View(irrigation_scheduling_cov)

## Perform ANOVA on the “irrigation scheduling” dataset ----
# ANOVA (Analysis of Variance) is a statistical test used to estimate how a
# quantitative dependent variable changes according to the levels of one or
# more categorical independent variables.

# The null hypothesis (H0) of the ANOVA is that
# “there is no difference in means”, and
# the alternative hypothesis (Ha) is that
# “the means are different from one another”.

# We can use the “aov()” function in R to calculate the test statistic for
# ANOVA. The test statistic is in turn used to calculate the p-value of your
# results. A p-value is a number that describes how likely you are to have
# found a particular set of observations if the null hypothesis were true. The
# smaller the p-value, the more likely you are to reject the null-hypothesis.


# Dependent variable: class
# Independent variables:

# The features (attributes) are:
# 1.	Id
# 2.	temperature
# 3.	pressure
# 4.	altitude
# 5.  soilmiosture
# 6.  note
# 7.  status
# 8.  date
# 9.  time


irrigation_scheduling_additive_two_way_anova <- aov(altitude ~temperature +soilmiosture, # nolint
                                           data = IrrigationScheduling)
summary(irrigation_scheduling_additive_two_way_anova)


## Univariate Plots ----

### Create Box and Whisker Plots for Each Numeric Attribute ----

boxplot(IrrigationScheduling[, 5], main = names(IrrigationScheduling)[5])

### Create Bar Plots for Each Categorical Attribute ----
# Categorical attributes (factors) can also be visualized. This is done using a
# bar chart to give an idea of the proportion of instances that belong to each
# category.

barplot(table(IrrigationScheduling[, 7]), main = names(IrrigationScheduling)[7])

### Create a Missingness Map to Identify Missing Data ----
# Some machine learning algorithms cannot handle missing data. A missingness
# map (also known as a missing plot) can be used to get an idea of the amount
# missing data in the dataset. The x-axis of the missingness map shows the
# attributes of the dataset whereas the y-axis shows the instances in the
# dataset.
# Horizontal lines indicate missing data for an instance whereas vertical lines
# indicate missing data for an attribute. The missingness map requires the
# “Amelia” package.

# Execute the following to create a map to identify the missing data in each
# dataset:

missmap(IrrigationScheduling, col = c("red", "grey"), legend = TRUE)

## Multivariate Plots ----

### Create a ggcorplot ----

#ggcorplot function helps in making a more appealing graph


ggcorrplot(cor(IrrigationScheduling[, 1:3]))

# Data Imputation----

# Confirm the 'missingness' in the dataset before Imputation ----
# Are there missing values in the dataset?
any_na(IrrigationScheduling)

# How many?
n_miss(IrrigationScheduling)

# What is the percentage of missing data in the entire dataset?
prop_miss(IrrigationScheduling)

# How many missing values does each variable have?
IrrigationScheduling %>% is.na() %>% colSums()

# What is the number and percentage of missing values grouped by
# each variable?
miss_var_summary(IrrigationScheduling)

# What is the number and percentage of missing values grouped by
# each observation?
miss_case_summary(IrrigationScheduling)

# Which variables contain the most missing values?
gg_miss_var(IrrigationScheduling)

# Where are missing values located (the shaded regions in the plot)?
vis_miss(IrrigationScheduling) + theme(axis.text.x = element_text(angle = 80))

# Second, create the visualization
gg_miss_fct(IrrigationScheduling, fct = altitude)

IrrigationScheduling <-IrrigationScheduling[-9:-10]

# Use the MICE package to perform data imputation ----
somewhat_correlated_variables_std3 <- quickpred(IrrigationScheduling, mincor = 0.3) # nolint


irrigation_scheduling_mice <- mice(IrrigationScheduling, m = 11, method = "pmm",
                             seed = 7,
                             predictorMatrix = somewhat_correlated_variables_std3)

## Impute the missing data ----
# We then create imputed data for the final dataset using the mice::complete()
# function in the mice package to fill in the missing data.
irrigation_scheduling_imputed <- mice::complete(irrigation_scheduling_mice, 1)

# Confirm the "missingness" in the Imputed Dataset ----
# A textual confirmation that the dataset has no more missing values in any
# feature:
miss_var_summary(irrigation_scheduling_imputed)

# A visual confirmation that the dataset has no more missing values in any
# feature:
Amelia::missmap(irrigation_scheduling_imputed)

#########################
# Are there missing values in the dataset?
any_na(irrigation_scheduling_imputed)

# How many?
n_miss(irrigation_scheduling_imputed)

# What is the percentage of missing data in the entire dataset?
prop_miss(irrigation_scheduling_imputed)

# How many missing values does each variable have?
irrigation_scheduling_imputed %>% is.na() %>% colSums()

# What is the number and percentage of missing values grouped by
# each variable?
miss_var_summary(irrigation_scheduling_imputed)

# What is the number and percentage of missing values grouped by
# each observation?
miss_case_summary(irrigation_scheduling_imputed)

# Which variables contain the most missing values?
gg_miss_var(irrigation_scheduling_imputed)


# Where are missing values located (the shaded regions in the plot)?
vis_miss(irrigation_scheduling_imputed) + theme(axis.text.x = element_text(angle = 80))

# Second, create the visualization
gg_miss_fct(irrigation_scheduling_imputed, fct = class)


# Resampling Methods----

# The str() function is used to compactly display the structure (variables
# and data types) of the dataset
str(irrigation_scheduling_imputed)

## Split the dataset ====
# Define a 80:20 train:test data split of the dataset.
# That is, 80% of the original data will be used to train the model and
# 20% of the original data will be used to test the model.
train_index <- createDataPartition(irrigation_scheduling_imputed$class,
                                   p = 0.8,
                                   list = FALSE)
IrrigationScheduling_train <- irrigation_scheduling_imputed[train_index, ]
IrrigationScheduling_test <- irrigation_scheduling_imputed[-train_index, ]

# Bootstrapping 

### Bootstrapping train control ----
# The "train control" allows you to specify that bootstrapping (sampling with
# replacement) can be used and also the number of times (repetitions or reps)
# the sampling with replacement should be done.

# This increases the size of the training dataset from 60 observations to
# approximately 60 x 40 = 2,400 observations for training the model.
train_control <- trainControl(method = "boot", number = 40)


# Algorithm Selection----

# Algorithm Selection for Classification ----
# A. Linear Algorithms ----
## 1. Linear Discriminant Analysis----
### 1.a. Linear Discriminant Analysis without caret ----
sapply(irrigation_scheduling_imputed, class)

#### Train the model ----
IrrigationScheduling_model_lda <- lda(class ~soilmiosture, data = IrrigationScheduling_train)


#### Display the model's details ----
print(IrrigationScheduling_model_lda)


#### Make predictions ----
predictions <- predict(IrrigationScheduling_model_lda,
                       irrigation_scheduling_imputed[, 1:5])$class


### Linear Discriminant Analysis with caret ----

#### Train the model ----
set.seed(7)

# We apply a Leave One Out Cross Validation resampling method
train_control <- trainControl(method = "LOOCV")
# We also apply a standardize data transform to make the mean = 0 and
# standard deviation = 1
IrrigationScheduling_caret_model_lda <- train(class ~ soilmiosture,
                                     data = IrrigationScheduling_train,
                                     method = "lda", metric = "Accuracy",
                                     preProcess = c("center", "scale"),
                                     trControl = train_control)

#### Display the model's details ----
print(IrrigationScheduling_caret_model_lda)

#### Make predictions ----
predictions <- predict(IrrigationScheduling_caret_model_lda,
                       IrrigationScheduling_test[, 1:5])

# Model Performance Comparison----

# The Resamples Function ----

# The "resamples()"  function checks that the models are comparable and that
# they used the same training scheme ("train_control" configuration).
# To do this, after the models are trained, they are added to a list and we
# pass this list of models as an argument to the resamples() function in R.

## Train the Models ----
# We train the following models, all of which are using 10-fold repeated cross
# validation with 3 repeats:
#   CART
#   KNN
#   SVM
#   Random Forest

sapply(lapply(irrigation_scheduling_imputed, unique), length)
train_control <- trainControl(method = "repeatedcv", number = 10, repeats = 3)


### CART ----
set.seed(7)
class_model_cart <- train(class ~ ., data = irrigation_scheduling_imputed,
                         method = "rpart", trControl = train_control)

### KNN ----
set.seed(7)
class_model_knn <- train(class ~ ., data = irrigation_scheduling_imputed,
                        method = "knn", trControl = train_control)

### SVM ----
set.seed(7)
class_model_svm <- train(class ~ ., data = irrigation_scheduling_imputed,
                        method = "svmRadial", trControl = train_control)

### Random Forest ----
set.seed(7)
class_model_rf <- train(class ~ ., data = irrigation_scheduling_imputed,
                       method = "rf", trControl = train_control)

## Call the `resamples` Function ----
# We then create a list of the model results and pass the list as an argument
# to the `resamples` function.

results <- resamples(list( CART = class_model_cart,
                          KNN = class_model_knn, SVM = class_model_svm,
                          RF = class_model_rf))

# Display the Results ----

## Table Summary ----
# This is the simplest comparison. It creates a table with one model per row
# and its corresponding evaluation metrics displayed per column.

summary(results)

## Dot Plots ----
# They show both the mean estimated accuracy as well as the 95% confidence
# interval (e.g. the range in which 95% of observed scores fell).

scales <- list(x = list(relation = "free"), y = list(relation = "free"))
dotplot(results, scales = scales)


# Hyperparameter Tuning----

# Introduction ----
# Hyperparameter tuning involves identifying and applying the best combination
# of algorithm parameters. Only the algorithm parameters that have a
# significant effect on the model's performance are available for tuning.

# Train the Model ----
# The default random forest algorithm exposes the "mtry" parameter to be tuned.

## The "mtry" parameter ----
# Number of variables randomly sampled as candidates at each split.

# This can be confirmed from here:
#   https://topepo.github.io/caret/available-models.html
#   or by executing the following command: names(getModelInfo())

# We start by identifying the accuracy by using
# the recommended defaults for each parameter, i.e.,
# mtry=floor(sqrt(ncol(sonar_independent_variables))) or mtry=7

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


# Apply a "Random Search" to identify the best parameter value ----
# A random search is good if we are unsure of what the value might be and
# we want to overcome any biases we may have for setting the parameter value
# (like the suggested "mtry" equation above).

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
plot(irrigation_model_random_search_rf)

# Ensemble Methods----

# Bagging ----
# Two popular bagging algorithms are:
## 1. Bagged CART
## 2. Random Forest

# Example of Bagging algorithms
train_control <- trainControl(method = "repeatedcv", number = 10, repeats = 3)
seed <- 7
metric <- "Accuracy"

## Bagged CART ----
set.seed(seed)
irrigation_model_bagged_cart <- train(class ~ ., data = irrigation_scheduling_imputed, method = "treebag",
                               metric = metric,
                               trControl = train_control)

## Random Forest ----
set.seed(seed)
irrigation_model_rf <- train(class ~ ., data =irrigation_scheduling_imputed, method = "rf",
                      metric = metric, trControl = train_control)

# Summarize results
bagging_results <-
  resamples(list("Bagged Decision Tree" = irrigation_model_bagged_cart,
                 "Random Forest" = irrigation_model_rf))

summary(bagging_results)
dotplot(bagging_results)

# Plumber API----

# Save and Load your Model ----
# Saving a model into a file allows you to load it later and use it to make
# predictions. Saved models can be loaded by calling the `readRDS()` function

saveRDS(IrrigationScheduling_caret_model_lda, "./models/IrrigationScheduling_caret_model_lda.rds")

# The saved model can then be loaded later as follows:
loaded_irrigation_model_lda <- readRDS("./models/IrrigationScheduling_caret_model_lda.rds")
print(loaded_irrigation_model_lda)

predictions_with_loaded_model <-
  predict(loaded_irrigation_model_lda, newdata = IrrigationScheduling_test)


# Consume PlumberAPIOutput----

# Enclose everything in a function ----
# All the 3 steps above can be enclosed in a function
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

# The model's prediction should be "Very Wet  for class" based on the
# following parameters:
get_class_predictions(230, 28.57, 9977.14, -12.83, 177, 3, 1)

# The model's prediction should be "Dry for class" based on the
# following parameters:
get_class_predictions(126, 28.86, 9981.95, -12.42, 323, 1, 0)
