# UNICEF Consultancy Assessment – Population-Weighted Maternal Health Coverage

 **Position(s) Applied For**:  
- Learning and Skills Data Analyst Consultant – Req. #581598

## 📂 Repository Structure
```
├── 01_rawdata/                                                 # Contains all original datasets
│   ├── WPP2022_GEN_F01_DEMOGRAPHIC_INDICATORS_COMPACT_REV1.csv
│   ├── fusion_GLOBAL_DATAFLOW_UNICEF_1.0_.MNCH_ANC4+MNCH_SAB.csv    
│   └── On-track and off-track countries.csv
├── 02_scripts/                     # Contains all scripts and notebooks
│   └── Unicef_Consultancy_Assessment.ipynb
├── 03_outputs/                     # Contains output files and plots
│   ├── coverage_comparison_plot.png
│   ├── population_weighted_coverage.csv
│   └── UNICEF Consultancy Assessment Report.pdf
└── README.md                       # This file
```

## Objective

This repository presents a data-driven assessment of maternal health service coverage across countries categorized by progress toward under-five mortality targets.

Specifically, we compute **population-weighted coverage** for:
- **ANC4**: At least four antenatal care visits among women aged 15–49.
- **SBA**: Deliveries attended by skilled health personnel.

The goal is to compare average coverage between **on-track** and **off-track** countries (as defined by under-five mortality status).


## Data Sources

1. **UNICEF Global Data Repository (2018–2022)**
   - File: `fusion_GLOBAL_DATAFLOW_UNICEF_1.0_.MNCH_ANC4+MNCH_SAB.csv` 
   - ANC4 and SBA coverage estimates per country.

3. **UN World Population Prospects (2022)**  
   - File: `WPP2022_GEN_F01_DEMOGRAPHIC_INDICATORS_COMPACT_REV1.csv`  
   - Used projected births for 2022 as weighting factors.

4. **Under-Five Mortality Status Classification**  
   - File: `On-track and off-track countries.csv`  
   - Classification based on `Status.U5MR` column:
     - `Achieved` or `On-track` → On-track
     - `Acceleration needed` → Off-track


## Scripts and Automation

### `user_profile.sh`
This shell script sets up a reproducible environment. Example content:
```bash
#!/bin/bash
# user_profile.sh
# Ensure all required packages are installed
pip install -r requirements.txt
```
## run_project.sh

Automates the end-to-end workflow by executing the analysis notebook and saving the results in the `03_outputs/` folder.

## Methodology

1. **Preprocessing**
   - Cleaned and filtered ANC4 and SBA data to retain only the most recent year (2018–2022) per country.
   - Merged coverage data with projected births for 2022 and country status (on-track vs. off-track).
2. **Weighting**
   - Separate calculations for ANC4 and SBA within each group.
3. **Visualization**
   - Bar chart comparing on-track vs. off-track countries for ANC4 and SBA coverage.
4. **Report**
   - Summary findings in a PDF report located at 03_outputs/UNICEF Consultancy Assessment Report.pdf

## ⚠️ Assumptions & Limitations
   - Most recent data between 2018–2022 was used per country.
   - 2021 projected births were used as a proxy for service demand.
   - Countries with missing data were excluded.
   - Assumed comparability across country-level reported data.

