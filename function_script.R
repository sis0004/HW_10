co2_report <- function(dat, country, year){
  dat <- dat[dat$country==country, ]
  dat <- dat[dat$year == year, ]
  report <- dat
  return(report)
}
