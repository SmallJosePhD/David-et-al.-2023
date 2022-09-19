##############################################################################
#'The moderating role of corruption in the oil price-economic growth relationship in an oil-dependent economy: Evidence from Bootstrap ARDL with a Fourier Function

#' 
##############################################################################

# ARDL BOUNDS TESTING

##############################################################################

#The fractional flexible Fourier frequency (3.579999999999968) was grid-searched using codes in EViews.  
#Here, I just create objects for the amplitude and displacement of the frequency components.

#The fomular use is cos(2*pi*kt/T) - for amplitude component; and sin(2*pi*kt/T) for displacement component of the frequency. 
#optimal frequency (kt) is 3.579999999999968

#Lets just generate Fourier frequency components as series then incorporate them in our dataset

myData <- myData |>
  mutate(cos = cos(2*3.141593*3.579999999999968*row_number()/104),
         sin = sin(2*3.141593*3.579999999999968*row_number()/104))


#Estimate Unrestricted ARDL

dynardl.model <- dynardl(GDPG ~ LOILPBRENT + CORWB + CWOILPBRENT + AGRGDP + LINTSEC + UNEMP + cos + sin, data = myData, 
                         lags = list("GDPG" = 1, "LOILPBRENT" = 1, "CORWB" = 1, "CWOILPBRENT" = 1, AGRGDP = 1, LINTSEC =1, UNEMP =1),
                         diffs = c("LOILPBRENT", "CORWB", "CWOILPBRENT", "AGRGDP", "LINTSEC", "UNEMP"),
                         lagdiffs = list("GDPG" = c(1:2), "LOILPBRENT" = c(1), "CORWB" =c(1), "CWOILPBRENT" = c(1:2), "AGRGDP" = c(1:2), "LINTSEC" = 1),
                         levels = c("cos", "sin"),
                         ec = TRUE, simulate = FALSE)

print(summary(dynardl.model))

##############################################################################

#POST ESTIMATION TESTS AND BOUNDS TESTING

##############################################################################

#Post estimation tests
print(dynardl.auto.correlated(dynardl.model))


#Cointegration test: PSS bounds testing for case II
print(pssbounds(dynardl.model, restriction = TRUE))

#Note you need to unload nardl package (if loaded) else it will not work


##############################################################################
