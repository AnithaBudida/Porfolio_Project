COVID-19 Global Data Analysis Dashboard

Project Overview:

This project analyzes global COVID-19 data to understand how the pandemic impacted populations across countries and continents over time.
Using SQL for data preparation and transformation and Tableau for visualization, the project converts raw public health data into meaningful business insights such as infection rates, death trends, and regional comparisons.
The goal is to demonstrate end-to-end analytics skills — from raw data handling to executive-level dashboarding.

Business Problem Statement:

Decision-makers need a clear, high-level and drill-down view of how COVID-19 spread globally, which regions were most affected, and how trends evolved over time.

Key questions addressed:
1. Which continents and countries experienced the highest death counts?
2. What percentage of the population was infected over time?
3. How did infection trends differ across regions?
4. How can complex public health data be summarized into actionable insights?

Dataset Description:

Source: Our World in Data
https://ourworldindata.org/covid-deaths

Data Type: Public health time-series data

Granularity: Daily country-level records

Key Columns Used:

location
continent
date
population
total_cases
new_cases
total_deaths
new_vaccinations

Tools & Technologies Used:

SQL Server: Data cleaning,Joins & aggregations,KPI calculations
Tableau Public: Interactive dashboards,Geographic maps,Trend analysis
Excel: Initial file handling before loading into SQL
GitHub: Project version control,Documentation

Data Cleaning & SQL processing:

1. Removed irrelevant aggregate rows (e.g., continent IS NULL)
2. Handled missing values (NULLs)
3. Ensured correct data types for numerical calculations
4. Joined multiple datasets (Deaths + Vaccinations)
5. Created calculated metrics for analysis

Key SQL Concepts Used:

JOINs
GROUP BY & Aggregations (SUM, MAX)
Window Functions (SUM() OVER)
Calculated fields

Tableau Dashboard Features:

🔗 Live Dashboard:
https://public.tableau.com/views/COVID-19GlobalAnalysisDashboard_17705912881740/Dashboard2

Dashboard includes:

1. Global KPIs(Total cases,Total deaths,Death percentage)
2. Deaths by continent
3. Percentage of population infected over time
4. Country-level geographic visualization

Key Insights & Findings:

--Europe and North America reported the highest total deaths
--Infection rates increased sharply after early 2020
--Significant variation exists in infection levels across countries

Challenges Faced & Solutions:

Challenge: Handling large datasets with inconsistent aggregation levels
Solution: Filtered non-country rows and applied correct SQL aggregations

Business Impact:

This project demonstrates how public data can be transformed into insights that support:
a. Trend analysis
b. Regional comparison
c. Executive-level decision making

Screenshots:




Future Improvements:

--Add vaccination vs death analysis
--Automate data refresh
--Add predictive trend modeling

Author & Contact:

Anitha Budida
Aspiring Data Analyst | Business Analytics Graduate

📌 GitHub: https://github.com/AnithaBudida

📊 Tableau Public: [https://public.tableau.com](https://public.tableau.com/app/profile/anitha.budida/vizzes)

🔗 LinkedIn: https://www.linkedin.com/in/anithabudida/
