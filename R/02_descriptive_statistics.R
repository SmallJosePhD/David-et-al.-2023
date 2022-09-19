##############################################################################
#'The moderating role of corruption in the oil price-economic growth relationship in an oil-dependent economy: Evidence from Bootstrap ARDL with a Fourier Function

#' 
##############################################################################

# DESCRIPTIVE STATISTICS

##############################################################################


#'Let's first import the data used from "Data" folder
myData <- read_excel("Data/myData.xlsx", sheet=1)

#'Compute the descriptive statistics using stat.desc() from pastecs package 
myData |>
  select(everything(), -YEAR) |>
  stat.desc() |>
  print()
