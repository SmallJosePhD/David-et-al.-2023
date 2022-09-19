## The moderating role of corruption in the oil price-economic growth relationship in an oil-dependent economy: Evidence from Bootstrap ARDL with a Fourier Function

### A Short Summary:
In this project, we intend to explore whether the effect of oil price on economic growth is contingent on the level of corruption in oil-dependent economies with particular reference to the Nigerian economy. 

So, here we collate all the R codes used to conduct some of the analysis in the study.  

&nbsp;

#### **Data Sources**

  - World Bank Wordl Development Indicators
  
  - World Bank's World Governance Indicator 
  
  - OPEC annual statistical bulletin
  
  - Central Bank of Nigeria's annual statistical bulletin
  
  - Nigeria's National Bureau of Statistics
  
  &nbsp;


#### **How to replicate the analysis**

-   Download the analysis pack *[see structure below]*

    **.**

    **├── Data**
    
    │ └── myData.xlsx
    


    **├── Output**

    │ └── ...

    **├── R**

    │ ├── 00_master.R

    │ ├── 01_packages_install.R

    │ ├── 02_descriptive_statistics.R

    │ ├── 03_Lee-Strazicich_unit_root_test.R

    │ ├── 04_unit_root_test.R

    │ ├── 05_ardl_bounds_testing.R
    
    │ └── 06_dynamic_ardl_simulation.R


    ├── README.md

    └── Oil-price-corruption-and-growth.Rproj

-   Using RStudio open "Oil-price-corruption-and-growth.Rproj" file in the main project directory.

-   Run the master file in "R/00_master.R".

    The analysis is split into xxx parts, which is reflected in the structure of R scripts.

    -   Step 1: Installation of Packages -------------------

        `source ("R/01_packages_install.R")`

    -   Step 2: Import data and present descriptive statistics ---------------------
       `source ("R/02_descriptive_statistics.R")`

    -   Step 3: Lee and Strazicich Unit root test script ---------------------
        `source ("R/03_Lee-Strazicich_unit_root_test.R")`

    -   Step 4: Unit root tests (ADF, KPSS, ZA, and LS) ---------------------
        `source ("R/04_unit_root_test.R")`

    -   Step 5: ARDL bounds-testing estimation
        `source ("R/05_ardl_bounds_testing.R")`

    -   Step 5: Dynamic ARDL Simulation
        `source ("R/06_dynamic_ardl_simulation.R")`



-   Outputs from the exploratory analysis (graphs) are saved in the [Graphs folder](Graphs/).

&nbsp;
