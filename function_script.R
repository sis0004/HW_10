#load packages
library(gapminder)

#read in .csv file
co2perCap <- read.csv(file="data/co2_emissions_tonnes_per_person_gapminder.csv")

#function to find the co2 per capita for a country in a given year
co2_report <- function(country, year){
  co2perCap <- co2perCap[co2perCap$country==country, year]
  report <- co2perCap
  return(report)
}

#attempt at integrating quantiles
co2_report <- function(country, year){
  co2perCap <- read.csv("./data/co2_emissions_tonnes_per_person_gapminder.csv")
  if (!is.character(country)) {
    stop("country must be a character vector.")
  }
  co2peryear <- co2perCap[[year]]
  quants <- quantile(co2peryear, probs = seq(0, 1, 0.1))
  gradeA <- quants[9]
  gradeB <- quants[8]
  gradeC <- quants[7]
  gradeD <- quants[6]
  
  if (co2perCap >= gradeA){
    paste ("Grade: A;", co2_data, "tonnes CO2 per person per year.")
  }
  else if (co2perCap >= gradeB){
    paste ("Grade: B;", co2perCap, "tonnes CO2 per person per year.")
  }
  else if (co2perCap >= gradeC){
    paste ("Grade: C;", co2perCap, "tonnes CO2 per person per year.")
  }
  else if (co2perCap >= gradeD){
    paste ("Grade: D;", co2perCap, "tonnes CO2 per person per year.")
  }
  else if (co2perCap < gradeD){
    paste ("Grade: F;", co2_data, "tonnes CO2 per person per year.")
  }
  report <- co2perCap
  return(report)
}