per_capita_co2 <- function(country,year) {
  data <- read.csv("data/co2_emissions_tonnes_per_person_gapminder.csv")
  
  year <- paste("X",year,sep = "") #edit the year to match the dormat in the data
  
  #check if the data has the expected year
  if (!(year %in% colnames(data))) {
    stop(sprintf("No data for %s in %s",country,substring(year,2)))
  }
  #check if the country is in the data
  else if (!(country %in% data$country)) {
    stop(sprintf("Consider spellchecking country name or there is no data for %s",country))
  }
  per_capita <- data[data$country == country,year]
  
  #check if the per capita for the expected country is NA
  if (is.na(per_capita)) {
    stop(sprintf("No data for %s in %s",country,substring(year,2)))
  }
  
  data_year <- data[,year]
  new <- quantile(data_year, c(0.1,0.2,0.3,0.4), na.rm=TRUE)
  if (per_capita < new[1]) {
    sprintf("Grade:A; %.2f tonnes CO2 per person per year", per_capita)
  } else if (per_capita > new[1] && per_capita <= new[2]){
    sprintf("Grade:B; %.2f tonnes CO2 per person per year", per_capita)
  } else if (per_capita > new[2] && per_capita <= new[3]){
    sprintf("Grade:C; %.2f tonnes CO2 per person per year", per_capita)
  } else if (per_capita > new[3] && per_capita <= new[4]){
    sprintf("Grade:D; %.2f tonnes CO2 per person per year", per_capita)
  } else {
    sprintf("Grade:F; %.2f tonnes CO2 per person per year", per_capita)
  }
}