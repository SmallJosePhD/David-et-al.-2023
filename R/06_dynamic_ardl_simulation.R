##############################################################################
#'The moderating role of corruption in the oil price-economic growth relationship in an oil-dependent economy: Evidence from Bootstrap ARDL with a Fourier Function

#' 
##############################################################################

# DYNAMIC ARDL SIMULATION

##############################################################################
#first set a seed
set.seed(200)


##############################################################################
#Simulation for oil price
##############################################################################

#Simulation for oil price (10 percent increase)

dynardl.model_oilp1 <- dynardl(GDPG ~ LOILPBRENT + CORWB + CWOILPBRENT + AGRGDP + LINTSEC + UNEMP + cos + sin, data = myData, 
                               lags = list("GDPG" = 1, "LOILPBRENT" = 1, "CORWB" = 1, "CWOILPBRENT" = 1, AGRGDP = 1, LINTSEC =1, UNEMP =1),
                               diffs = c("LOILPBRENT", "CORWB", "CWOILPBRENT", "AGRGDP", "LINTSEC", "UNEMP"),
                               lagdiffs = list("GDPG" = c(1:2), "LOILPBRENT" = c(1), "CORWB" =c(1), "CWOILPBRENT" = c(1:2), "AGRGDP" = c(1:2), "LINTSEC" = 1),
                               levels = c("cos", "sin"),
                               ec = TRUE, 
                               simulate = TRUE,
                               shockvar = "LOILPBRENT",
                               shockval = 0.1,
                               time = 5,
                               sim = 10000,
                               range = 50,
                               fullsims = TRUE)

#Let's save this
png('Graphs/Oil price increase.png')

#Generate the spike plot
dynardl.simulation.plot(dynardl.model_oilp1, 
                        type = "spike",
                        response = "levels",
                        bw = F,
                        xlab = "Years",
                        ylab = "Predicted real GDP growth rate",
                        #main = "Plot of a counterfactual shock in predicted GDP grwoth rate following \n a percent increase in oil price (UK Brent)", cex.main =.9,
                        xaxt = "n")
#Create a-axis limits
axis(1, c(0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50),
     labels = c(2021, 2025, 2030, 2035, 2040, 2045, 2050, 2055, 2060, 2065, 2070))

#Add gridlines
grid(nx = NA, ny = NULL, lwd = 0.091, lty= "solid", col = "lightgrey")


##############################################################################

#Simulation for oil price (10 percent decrease)

dynardl.model_oilp2 <- dynardl(GDPG ~ LOILPBRENT + CORWB + CWOILPBRENT + AGRGDP + LINTSEC + UNEMP + cos + sin, data = myData, 
                               lags = list("GDPG" = 1, "LOILPBRENT" = 1, "CORWB" = 1, "CWOILPBRENT" = 1, AGRGDP = 1, LINTSEC =1, UNEMP =1),
                               diffs = c("LOILPBRENT", "CORWB", "CWOILPBRENT", "AGRGDP", "LINTSEC", "UNEMP"),
                               lagdiffs = list("GDPG" = c(1:2), "LOILPBRENT" = c(1), "CORWB" =c(1), "CWOILPBRENT" = c(1:2), "AGRGDP" = c(1:2), "LINTSEC" = 1),
                               levels = c("cos", "sin"),
                               ec = TRUE, 
                               simulate = TRUE,
                               shockvar = "LOILPBRENT",
                               shockval = -.1,
                               time = 5,
                               sim = 10000,
                               range = 50,
                               fullsims = TRUE)

#Let's save this
png('Graphs/Oil price decrease.png')

#Generate the spike plot
dynardl.simulation.plot(dynardl.model_oilp2, 
                        type = "spike",
                        response = "levels",
                        bw = F,
                        xlab = "Years",
                        ylab = "Predicted real GDP growth rate",
                        #main = "Plot of a counterfactual shock in predicted GDP grwoth rate following \n a percent decrease in oil price (UK Brent)", cex.main =.9,
                        xaxt = "n")

#Create a-axis limits
axis(1, c(0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50),
     labels = c(2021, 2025, 2030, 2035, 2040, 2045, 2050, 2055, 2060, 2065, 2070))

#Add gridlines
grid(nx = NA, ny = NULL, lwd = 0.091, lty= "solid", col = "lightgrey")


##############################################################################


##############################################################################
#Simulation for world bank control of corruption
##############################################################################

#Simulation for a 10 percent increase in control of corruption index (lesser corruption)

dynardl.model_cor1 <- dynardl(GDPG ~ LOILPBRENT + CORWB + CWOILPBRENT + AGRGDP + LINTSEC + UNEMP + cos + sin, data = myData, 
                              lags = list("GDPG" = 1, "LOILPBRENT" = 1, "CORWB" = 1, "CWOILPBRENT" = 1, AGRGDP = 1, LINTSEC =1, UNEMP =1),
                              diffs = c("LOILPBRENT", "CORWB", "CWOILPBRENT", "AGRGDP", "LINTSEC", "UNEMP"),
                              lagdiffs = list("GDPG" = c(1:2), "LOILPBRENT" = c(1), "CORWB" =c(1), "CWOILPBRENT" = c(1:2), "AGRGDP" = c(1:2), "LINTSEC" = 1),
                              levels = c("cos", "sin"),
                              ec = TRUE, 
                              simulate = TRUE,
                              shockvar = "CORWB",
                              shockval = +.1,
                              time = 5,
                              sim = 10000,
                              range = 50,
                              fullsims = TRUE)


#Let's save this
png('Graphs/Corruption increase.png')

#Spike
dynardl.simulation.plot(dynardl.model_cor1, 
                        type = "spike",
                        response = "levels",
                        bw = F,
                        xlab = "Years",
                        ylab = "Predicted real GDP growth rate",
                        #main = "Plot of a counterfactual shock in predicted GDP growth rate following \n a percent increase in corruption index (lesser corruption)", cex.main =.9,
                        xaxt = "n")

#Create a-axis limits
axis(1, c(0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50),
     labels = c(2021, 2025, 2030, 2035, 2040, 2045, 2050, 2055, 2060, 2065, 2070))

#Add gridlines
grid(nx = NA, ny = NULL, lwd = 0.091, lty= "solid", col = "lightgrey")


##############################################################################

#Simulation for a 10 percent decrease in WB control of corruption index (increase in the level of corruption)

dynardl.model_cor2 <- dynardl(GDPG ~ LOILPBRENT + CORWB + CWOILPBRENT + AGRGDP + LINTSEC + UNEMP + cos + sin, data = myData, 
                              lags = list("GDPG" = 1, "LOILPBRENT" = 1, "CORWB" = 1, "CWOILPBRENT" = 1, AGRGDP = 1, LINTSEC =1, UNEMP =1),
                              diffs = c("LOILPBRENT", "CORWB", "CWOILPBRENT", "AGRGDP", "LINTSEC", "UNEMP"),
                              lagdiffs = list("GDPG" = c(1:2), "LOILPBRENT" = c(1), "CORWB" =c(1), "CWOILPBRENT" = c(1:2), "AGRGDP" = c(1:2), "LINTSEC" = 1),
                              levels = c("cos", "sin"),
                              ec = TRUE, 
                              simulate = TRUE,
                              shockvar = "CORWB",
                              shockval = -0.1,
                              time = 5,
                              sim = 10000,
                              range = 50,
                              fullsims = TRUE)


#Let's save this
png('Graphs/Corruption decrease.png')

#Generate the spike plot
dynardl.simulation.plot(dynardl.model_cor2, 
                        type = "spike",
                        response = "levels",
                        bw = F,
                        xlab = "Years",
                        ylab = "Predicted real GDP growth rate",
                        #main = "Plot of a counterfactual shock in predicted GDP growth rate following \n a  percent decrease in corruption index (increase in corruption)", cex.main =.9,
                        xaxt = "n")

#Create a-axis limits
axis(1, c(0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50),
     labels = c(2021, 2025, 2030, 2035, 2040, 2045, 2050, 2055, 2060, 2065, 2070))
#Add gridlines
grid(nx = NA, ny = NULL, lwd = 0.091, lty= "solid", col = "lightgrey")


##############################################################################



##############################################################################
#Simulation for oil price-corruption interaction
##############################################################################
#Simulation for a percent increase in oil price and control of corruption index (increase in oil price and lesser corruption)

dynardl.model_oilcor1 <- dynardl(GDPG ~ LOILPBRENT + CORWB + CWOILPBRENT + AGRGDP + LINTSEC + UNEMP + cos + sin, data = myData, 
                                 lags = list("GDPG" = 1, "LOILPBRENT" = 1, "CORWB" = 1, "CWOILPBRENT" = 1, AGRGDP = 1, LINTSEC =1, UNEMP =1),
                                 diffs = c("LOILPBRENT", "CORWB", "CWOILPBRENT", "AGRGDP", "LINTSEC", "UNEMP"),
                                 lagdiffs = list("GDPG" = c(1:2), "LOILPBRENT" = c(1), "CORWB" =c(1), "CWOILPBRENT" = c(1:2), "AGRGDP" = c(1:2), "LINTSEC" = 1),
                                 levels = c("cos", "sin"),
                                 ec = TRUE, 
                                 simulate = TRUE,
                                 shockvar = "CWOILPBRENT",
                                 shockval =.1,
                                 time = 5,
                                 sim = 10000,
                                 range = 50,
                                 fullsims = TRUE,
                                 sig = 90)


#Let's save this
png('Graphs/oil price-corruption interaction increase.png')

#Spike
dynardl.simulation.plot(dynardl.model_oilcor1, 
                        type = "spike",
                        response = "levels",
                        bw = F,
                        xlab = "Years",
                        ylab = "Predicted real GDP growth rate",
                        #main = "Plot of a counterfactual shock in predicted GDP grwoth rate following a percent \n increase in oil price and corruption index", cex.main =.9,
                        xaxt = "n")
#Create a-axis limits
axis(1, c(0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50),
     labels = c(2021, 2025, 2030, 2035, 2040, 2045, 2050, 2055, 2060, 2065, 2070))
#Add gridlines
grid(nx = NA, ny = NULL, lwd = 0.091, lty= "solid", col = "lightgrey")



##############################################################################
#Simulation for 1 percent decrease in oil price (UK Brent) and WB control of corruption index (decrease in oil price and increase in the level of corruption)
dynardl.model_oilcor2 <- dynardl(GDPG ~ LOILPBRENT + CORWB + CWOILPBRENT + AGRGDP + LINTSEC + UNEMP + cos + sin, data = myData, 
                                 lags = list("GDPG" = 1, "LOILPBRENT" = 1, "CORWB" = 1, "CWOILPBRENT" = 1, AGRGDP = 1, LINTSEC =1, UNEMP =1),
                                 diffs = c("LOILPBRENT", "CORWB", "CWOILPBRENT", "AGRGDP", "LINTSEC", "UNEMP"),
                                 lagdiffs = list("GDPG" = c(1:2), "LOILPBRENT" = c(1), "CORWB" =c(1), "CWOILPBRENT" = c(1:2), "AGRGDP" = c(1:2), "LINTSEC" = 1),
                                 levels = c("cos", "sin"),
                                 ec = TRUE, 
                                 simulate = TRUE,
                                 shockvar = "CWOILPBRENT",
                                 shockval = -1,
                                 time = 5,
                                 sim = 10000,
                                 range = 50,
                                 fullsims = TRUE)

#Let's save this
png('Graphs/oil price-corruption interaction decrease.png')


#Generate the spike plot
dynardl.simulation.plot(dynardl.model_oilcor2, 
                        type = "spike",
                        response = "levels",
                        bw = F,
                        xlab = "Years",
                        ylab = "Predicted real GDP growth rate",
                        #main = "Plot of a counterfactual shock in predicted GDP grwoth rate following a percent \n decrease in oil price and corruption index", cex.main =.9,
                        xaxt = "n")

#Create a-axis limits
axis(1, c(0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50),
     labels = c(2021, 2025, 2030, 2035, 2040, 2045, 2050, 2055, 2060, 2065, 2070))
#Add gridlines
grid(nx = NA, ny = NULL, lwd = 0.091, lty= "solid", col = "lightgrey")

##############################################################################