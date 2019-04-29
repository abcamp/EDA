# ExploratoryDataAnalysis
Exploratory Data Analysis
This repository was created for the Spring 2019 Data Science Group (Ling 619) at the 
University of Hawaii at Manoa

This repository includes two files: ExploratoryDataAnalysis.R and allVowels.csv

ExploratoryDataAnalysis.R is an R script that offers practice for the concepts presented in
Chapter 7 of Garret Grolemund and Hadley Wickham's 2017 book R for Data Science, which can also
be found here: https://r4ds.had.co.nz/exploratory-data-analysis.html

allVowels.csv is a simple spreadsheet that contains values collected in a production experiment
comparing the acoustics and articulation of the high back unrounded vowel in Turkish and Japanese.*
Each row contains a single observation of the following variables:
subject: the unique ID of a participants
language: j for Japanese or t for Turkish
vowel: u for Japanese and I for Turkish high back unrounded vowels
env: consonantal environment/the onset of the target syllable in the production task, CVs, where 
C = the consonant listed in the column, V is the high back unrounded vowel, and s is /s/
F1: Hz values for the first formant
F2: Hz values for the second formant
* NOTE that some F1 and F2 values have been fudged for demo purposes. The original study also included
F3 and articulation data, which is not presented here.
