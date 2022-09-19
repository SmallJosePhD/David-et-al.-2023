###############################################################################
#
#'The moderating role of corruption in the oil price-economic growth relationship in an oil-dependent economy: Evidence from Bootstrap ARDL with a Fourier Function

###############################################################################

# MASTER SCRIPT

################################################################################

# This is a master script that calls other scripts one-by-one
# To replicate the unit root tests (ADF, KPSS, ZA and LS), and the plots of dynamic ARDL simulation discussed in the paper.


#First let's check if the directory where we want to save our R codes exist, if not we creat one.
if(!dir.exists("R")) {
  dir.create("R")
}



## Step 1: Package Installation -------------------------
source("R/01_packages_install.R")

## Step 2: Import data and present descriptive statistics --------
source ("R/02_descriptive_statistics.R")

## Step 3: Lee and Strazicich Unit root test script  --------
source ("R/03_Lee-Strazicich_unit_root_test.R")

## Step 4: Unit root tests (ADF, KPSS, ZA, and LS)  --------
source ("R/04_unit_root_test.R")

## Step 5: ARDL bounds-testing estimation --------
source ("R/05_ardl_bounds_testing.R")

## Step 6: Dynamic ARDL Simulation --------
source ("R/06_dynamic_ardl_simulation.R")
