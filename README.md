## The moderating role of corruption in the oil price-economic growth relationship in an oil-dependent economy: Evidence from Bootstrap ARDL with a Fourier Function
### Abstract:
This study employs the recently proposed bootstrap autoregressive distributed lag (ARDL) model augmented with a Fourier function and the dynamic ARDL simulation procedures to examine whether the oil price-economic growth relationship is dependent on the level of corruption in an oil-dependent economy. Using Nigerian quarterly data during the 1996Q1-2021Q4 period, the results of the bounds-testing present evidence for cointegration between the variables. In addition, the results indicate that oil price and corruption are growth-enhancing, but the effect of oil price on growth is contingent on the level of corruption. Moreover, evidence suggests that the marginal effect of oil price on economic growth varies with the level of corruption; the lower the level of corruption, the higher the growth-enhancing effect of oil price on economic growth, and vice versa. The dynamic ARDL simulations plots demonstrate the significant increase (decrease) in predicted growth in the short-term due to a counterfactual rise in the price of oil price (corruption), which gradually deflates (increase) after the shock in the long-term. Therefore, policies geared toward diversifying the economy away from oil, reducing corruption in the oil and gas industry and the security sector, improving agricultural output, and reducing the unemployment rate are recommended to enhance growth.

&nbsp;

-- All the R codes used to conduct most of the analysis in the study were provided here.  

*Please note: The computation was performed using R version 4.1.3*

The paper has been accepted for publication in the [**Economic Alternatives**](https://www.unwe.bg/eajournal/en) journal.

A preprint copy is assessable on [ResearchGate](http://dx.doi.org/10.13140/RG.2.2.32652.28800/1)

&nbsp;

#### **Data Sources**

  - [World Bank's World Development Indicators](https://databank.worldbank.org/source/world-development-indicators)
  
  - [World Bank's World Governance Indicator](https://databank.worldbank.org/source/worldwide-governance-indicators) 
  
  - [OPEC annual statistical bulletin](https://asb.opec.org/data/ASB_Data.php)
  
  - [Central Bank of Nigeria's annual statistical bulletin: Public Finance Statistics](https://www.cbn.gov.ng/Out/2022/STD/2021%20Statistics%20Bulletin_Public%20Finance.xlsx)
  
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

-   Open "Oil-price-corruption-and-growth.Rproj" file in the main project directory.

-   Run the master file in "R/00_master.R".

    The analysis is split into 6 parts, which is reflected in the structure of R scripts.

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
