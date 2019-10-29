# HW_10

Use the co2 data (data/co2_emissions_tonnes_per_person_gapminder.csv) for this assignment.  

With a partner:  

1) Write an R function that reads in the .csv file to R and returns the per capita co2 emissions for a user provided country and year. For example, your function call might look like:

`co2_report("China", 2014)`

And your report might look like:
`[1] "7.4 tonnes CO2 per person per year"`


2) Add to your function by reporting a grade for those emissions according to the following criteria:

 >A - Bottom 10% of emitters in that year  
  B - Bottom 11-20% emitters in that year   
  C - Bottom 21-30% emitters in that year   
  D - Bottom 31-40% emitters in that year   
  F - Greater than 40% of emitters in that year    

Hint: you can use quantile() to get the cutoffs for the grades.

Now, your call would look the same, but your report might look like:

`[1] "Grade:F; 2.65 tonnes CO2 per person per year"`

3) Improve your function by:

* allowing users to enter the year (1900) rather than "X1900"  
* reporting on NAs  
* throwing an error if inappropriate arguments are passed by user  

### Submit a .R file for the function and a .Rmd demonstrating how to use it.
