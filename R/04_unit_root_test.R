###############################################################################
#'The moderating role of corruption in the oil price-economic growth relationship in an oil-dependent economy: Evidence from Bootstrap ARDL with a Fourier Function

#' 
###############################################################################
#
# UNIT ROOT TESTS (KPSS, Zivot-Andrews and LS)
#
##############################################################################


##############################################################################
#' ADF unit root Test (using ur.df() function)
##############################################################################
#GDPG
#Level
print(summary(ur.df(myData$GDPG, type = "drift", lags =12, selectlags = "AIC")))
#First difference
print(summary(ur.df(diff(myData$GDPG), type = "drift", lags =12, selectlags = "AIC")))


#LOILPBRENT
#Level
print(summary(ur.df(myData$LOILPBRENT, type = "drift", lags =12, selectlags = "AIC")))
#First difference
print(summary(ur.df(diff(myData$LOILPBRENT), type = "drift", lags =12, selectlags = "AIC")))


#CORWB
#Level
print(summary(ur.df(myData$CORWB, type = "drift", lags =12, selectlags = "AIC")))
#First difference
print(summary(ur.df(diff(myData$CORWB), type = "drift", lags =12, selectlags = "AIC")))


#AGRGDP
#Level
print(summary(ur.df(myData$AGRGDP, type = "drift", lags =12, selectlags = "AIC")))
#First difference
print(summary(ur.df(diff(myData$AGRGDP), type = "drift", lags =12, selectlags = "AIC")))


#LINTSEC
#Level
print(summary(ur.df(myData$LINTSEC, type = "drift", lags =12, selectlags = "AIC")))
#First difference
print(summary(ur.df(diff(myData$LINTSEC), type = "drift", lags =12, selectlags = "AIC")))


#UNEMP
#Level
(summary(ur.df(myData$UNEMP, type = "drift", lags =12, selectlags = "AIC")))
#First difference
print(summary(ur.df(diff(myData$UNEMP), type = "drift", lags =12, selectlags = "AIC")))

##############################################################################



##############################################################################
#' KPSS unit root Test (using ur.kpss() function)
##############################################################################
#GDPG
#Level
summary(ur.kpss(myData$GDPG, type = "mu", lags ="long"))
#First difference
summary(ur.kpss(diff(myData$GDPG), type = "mu", lags ="long"))


#LOILPBRENT
#Level
summary(ur.kpss(myData$LOILPBRENT, type = "mu", lags ="long"))
#First difference
summary(ur.kpss(diff(myData$LOILPBRENT), type = "mu", lags ="long"))


#CORWB
#Level
summary(ur.kpss(myData$CORWB, type = "mu", lags ="long"))
#First difference
summary(ur.kpss(diff(myData$CORWB), type = "mu", lags ="long"))


#AGRGDP
#Level
summary(ur.kpss(myData$AGRGDP, type = "mu", lags ="long"))
#First difference
summary(ur.kpss(diff(myData$AGRGDP), type = "mu", lags ="long"))


#LINTSEC
#Level
summary(ur.kpss(myData$LINTSEC, type = "mu", lags ="long"))
#First difference
summary(ur.kpss(diff(myData$LINTSEC), type = "mu", lags ="long"))


#UNEMP
#Level
summary(ur.kpss(myData$UNEMP, type = "mu", lags ="long"))
#First difference
summary(ur.kpss(diff(myData$UNEMP), type = "mu", lags ="long"))


##############################################################################



##############################################################################
#' Zivot-Andrews unit root Test (using ur.za() function)
##############################################################################
#GDPG
#Level
summary(ur.za(myData$GDPG, model = "intercept", lag =12))
#First difference
summary(ur.za(diff(myData$GDPG), model = "intercept", lag =12))


#LOILPBRENT
#Level
summary(ur.za(myData$LOILPBRENT, model = "intercept", lag =12))
#First difference
summary(ur.za(diff(myData$LOILPBRENT), model = "intercept", lag =12))


#CORWB
#Level
summary(ur.za(myData$CORWB, model = "intercept", lag =12))
#First difference
summary(ur.za(diff(myData$CORWB), model = "intercept", lag =12))

#AGRGDP
#Level
summary(ur.za(myData$AGRGDP, model = "intercept", lag =12))
#First difference
summary(ur.za(diff(myData$AGRGDP), model = "intercept", lag =12))

#LINTSEC
#Level
summary(ur.za(myData$LINTSEC, model = "intercept", lag =12))
#First difference
summary(ur.za(diff(myData$LINTSEC), model = "intercept", lag =12))

#UNEMP
#Level
summary(ur.za(myData$UNEMP, model = "intercept", lag =12))
#First difference
summary(ur.za(diff(myData$GDPG), model = "intercept", lag =12))

##############################################################################



##############################################################################
# Application of the basic Lee and Strazizich (2003) unit root test (with two breaks) without any parallelization
##############################################################################

##############################################################################
#Step One:
#Define the values to be used in the application 

# Number of possible structural breaks
myBreaks <- 2

# Assumed break in the series, "crash" - break in intercept; "break" - break in intercept and trend
myModel <- "crash"

# Number of lags to be used in fixed specification or maximum number of lags, when using the GTOS method
myLags <- 8


###############################################################################LS unit root test proper
##############################################################################

#GDPG 
#Levels
myLS_test <- ur.ls(y=myData$GDPG, model = myModel, breaks = myBreaks, lags = 3, method = "GTOS",pn = 0.1, print.results = "print" )

#First difference
myLS_test_D <- ur.ls(y=diff(myData$GDPG), model = myModel, breaks = myBreaks, lags = 3, method = "GTOS",pn = 0.1, print.results = "print" )

#' LOILPBRENT
#Levels
myLS_test <- ur.ls(y=myData$LOILPBRENT, model = myModel, breaks = myBreaks, lags = 3, method = "GTOS",pn = 0.1, print.results = "print")

#First difference
myLS_test_D <- ur.ls(y=diff(myData$LOILPBRENT), model = myModel, breaks = myBreaks, lags = 3, method = "GTOS",pn = 0.1, print.results = "print")

#' CORWB 
#Levels
myLS_test <- ur.ls(y=myData$CORWB, model = myModel, breaks = myBreaks, lags = 3, method = "GTOS",pn = 0.1, print.results = "print" )

#First differenced
myLS_test_D <- ur.ls(y=diff(myData$CORWB), model = myModel, breaks = myBreaks, lags = 3, method = "GTOS",pn = 0.1, print.results = "print" )


#' AGRGDP 
#Levels
myLS_test <- ur.ls(y=myData$AGRGDP, model = myModel, breaks = myBreaks, lags = 3, method = "GTOS",pn = 0.1, print.results = "print" )

#First difference
myLS_test_D <- ur.ls(y=diff(myData$AGRGDP), model = myModel, breaks = myBreaks, lags = 3, method = "GTOS",pn = 0.1, print.results = "print" )


#' LINTSEC 
#Levels
myLS_test <- ur.ls(y=myData$LINTSEC, model = myModel, breaks = myBreaks, lags = 3, method = "GTOS",pn = 0.1, print.results = "print" )

#First differenced
myLS_test_D <- ur.ls(y=diff(myData$LINTSEC), model = myModel, breaks = myBreaks, lags = 3, method = "GTOS",pn = 0.1, print.results = "print" )


#' UNEMP 
#Levels
myLS_test <- ur.ls(y=myData$UNEMP, model = myModel, breaks = myBreaks, lags = 3, method = "GTOS",pn = 0.1, print.results = "print" )

#First difference
myLS_test_D <- ur.ls(y=diff(myData$UNEMP), model = myModel, breaks = myBreaks, lags = 3, method = "GTOS",pn = 0.1, print.results = "print" )
