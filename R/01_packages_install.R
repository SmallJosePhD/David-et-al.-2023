###############################################################################
#'
#'The moderating role of corruption in the oil price-economic growth relationship in an oil-dependent economy: Evidence from Bootstrap ARDL with a Fourier Function

#' 
###############################################################################
 #
 # PACKAGES INSTALLATION
 #
################################################################################
 
 # these are the required packages
 pkgs <- c("tidyverse", 
           "readxl",
           "tseries", 
           "urca",
           "dynamac",
           "pastecs"
 )
 
 
 # replaced w pacman, basically the same
 if(!require("pacman", 
             character.only = TRUE)){
   install.packages("pacman", dep = TRUE)
   if (!require("pacman", character.only = TRUE))
     stop("Package not found")
 }
 
 # library(pacman)
 # if(!sum(!p_isinstalled(pkgs))==0){
 #   p_install(
 #     package = pkgs[!p_isinstalled(pkgs)], 
 #     character.only = TRUE
 #   )
 # }
 
 p_load(pkgs, character.only = TRUE)
 rm(pkgs)
 
