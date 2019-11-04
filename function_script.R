#load packages
library(gapminder)

#read in .csv file
co2perCap <- read.csv(file="data/co2_emissions_tonnes_per_person_gapminder.csv")

# source in script
source("")

#function to find the co2 per capita for a country in a given year
co2_report <- function(dat, country, year){
  cntry <- dat[dat$country==country, ]
  yr <- dat[cntry == year, ]
  report <- yr
  return(report)
}

co2_report <- function(dat, country, year){
  dat <- dat[dat$country==country, ]
  dat <- dat[dat$year==year, ]
  report <- dat
  return(report)
}