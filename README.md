# JSC370 - Final Project
**View the project website:** 
[Project Website](https://sophiaaa12.github.io/JSC370-FinalProject/index.html)

**Download the Full Final Report (PDF**)
[PDF Link](docs/Final_Report.pdf)

## Introduction:
Every year, millions of people and vehicles cross the Canada border for work, tourism, and so on. These movements are critical not only for local economies but also for infrastructure planning. Understanding daily border traffic can help governments design targeted marketing for tourism, and forecast revenue from duty-free sales. Additionally, incorporating U.S. data extends our insights: comparing patterns on both sides allows policymakers to identify best practices, leverage U.S. operational strengths, and address Canada’s crossover vulnerabilities. This binational perspective fosters more coordinated, evidence-based policies and infrastructure investments along the Canada–U.S. corridor.

The research question is: **To what extent do seasonal patterns, geographic regions, day-of-week (weekday vs. weekend), and transportation mode explain daily border-crossing volumes into Canada between January 2018 and Dec 2019? Additionally, how do seasonal patterns and geographic concentrations in U.S. border crossings compare to those in Canada between January 2018 and December 2019?**

## Data Sources Instructions:
This project uses two cross-border travel datasets:
1. **Traveller Volumes by Port of Entry (Canada)**  
   Source: Government of Canada (https://open.canada.ca/data/en/dataset/1b1c2b92-b388-47d9-87d4-01aee8d3c3e4/resource/22653cdd-d1e2-4c04-9d11-61b5cdd79b4e)<br>
   Access: Dataset has already been under `data/` folder in this respository. By using codes in `data_prep.R`, you can load the csv file from the `data/` folder, since the API occasionally blocks peer requests.

2. **Border Crossing Entry Data (U.S.)**  
   Source: U.S. Department of Transportation (https://data.bts.gov/Research-and-Statistics/Border-Crossing-Entry-Data/keg4-3bc2/data_preview)<br>
   Access: via API: [https://data.bts.gov/resource/keg4-3bc2.json?$limit=500000](https://data.bts.gov/resource/keg4-3bc2.json?$limit=500000). Same as first one, code in `data_prep.R` can call API directly to load the dataset.

