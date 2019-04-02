#######################
## Ling 619: Exploratory Data Analysis
## 2 Apr 2019
## Amber Camp
#######################


#### Get started ####
## Load package
library(tidyverse)

## Inspect working directory
getwd()
list.files()

## Read in data
data <- read.csv("allVowels.csv") 
summary(data)


#### Count ####
data %>%
  count(vowel)

## Practice: How many different environments are there?


#### Histogram ####
ggplot(data) +
  geom_histogram(aes(F1), binwidth = 100)

## Practice: Take a close look at the data by changing bindwidth. What is a binwidth that gives you an informative histogram?

## Count using cut_width
data %>%
  count(cut_width(F1, 100))


## Frequncy polygon
ggplot(data, aes(F1, colour = env)) +
  geom_freqpoly(binwidth = 100)

## Practice: Plot frequency polygon for F2 data and find the best binwidth



#### Boxplot####
ggplot(data, aes(language, F1)) +
  geom_boxplot()

## Practice: Make boxplots with environment on the x-axis and F2 on the y-axis



#### Q-Q Plot ####
qqnorm(data$F1)

## Practice: Is the F1 data normally distributed? The F2 data?



#### Scatter plot w/ two continuous variables ####
ggplot(data) +
  geom_point(aes(F1, F2))

## Practice: Add color to this scatterplot to make it more informative.



#### Boxplot w/ continuous variables ####
ggplot(data, aes(F1, F2)) +
  geom_boxplot(aes(group = cut_width(F1, 100)))



#### Outliers ####
# 1) Find outliers. Decide how to define outliers.
# 2) Look for patterns
# 3) Decide how to treat them. Can replace that value with NA, or with the mean. 
#    Can remove entire trial, item, or participant, depending on patterns.

# To replace extreme values with NA
data2 <- data %>%
  mutate(F1 = ifelse(F1<300 | F1>600, NA, F1))
summary(data)
summary(data2)

# To drop the entire row with the unusual value:
data3 <- data %>%
  filter(between(F1,300,600)) # be careful when you do this!!
summary(data)
summary(data3)


#### Fun on your own ####
## 1) Choose a cutoff value for removing outliers, and a method for dealing with them. Then go back through 
##    the above and inspect the data visually.You can choose to focus on only one language, environment, or participant. 
##    See what inferences you can make about this data.
## 2) Can you make a violin plot of this data? What does a violin plot tell you? 


