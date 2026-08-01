# Fleet Maintenance Optimization: Cost & Event Analysis

![SQL](https://img.shields.io/badge/SQL-BigQuery-blue)
![Power BI](https://img.shields.io/badge/Power%20BI-DAX-yellow)
![Excel](https://img.shields.io/badge/Excel-Power%20Query-green)

An end-to-end analytics project analyzing **25,0000+ vehicle service logs** totaling **$260M in maintenance spend** across an 18-month period (Jan 2023 – June 2024).

---

## 📌 Executive Summary

This project analyzes operational fleet logs across four truck models, evaluating key cost drivers, maintenance severity, and environmental factors. 

### Key Findings
* **The Biggest Cost Driver:** Engine overhauls swallow **77% ($200M)** of total fleet expenditure despite accounting for only ~20% of service events.
* **Model Dominance:** The **Ford F-150** accounts for nearly half of total costs (**$129M across 124K events**).
* **Efficiency Inversion by Cabin Type:** 
  * In **Double Cabin** setups, the **Mitsubishi L200** is the most cost-effective ($938.72 avg cost).
  * In **Single Cabin** setups, the **Chevy Silverado** leads efficiency ($999.66 avg cost).

---

## 🛠️ Analytics Tech Stack

* **BigQuery & SQL:** Data warehousing, views optimization, and querying raw logs.
* **Excel & Power Query:** Initial ETL, structural shaping, and data cleansing.
* **Power BI & DAX:** Dynamic time-intelligence modeling, interactive cross-filtering, and dashboard development.
* **GitHub:** Version control and project documentation.

---

## 📊 Dashboard Highlights & Data Breakdown

### 1. Overall Fleet Overview ($260M Total Spend)
* **Total Maintenance Events:** 249K check-ins
* **Average Cost per Event:** ~$1.04K
* **Average Vehicle Mileage:** 119.75K KM

| Vehicle Model | Avg Cost ($) | Avg Distance (KM) | Total Cost ($) | Total Events |
| :--- | :--- | :--- | :--- | :--- |
| **Ford F-150** | $1,037.87 | 30.11K | **$129.17M** | 124,456 |
| **Chevy Silverado** | $1,053.92 | 29.81K | **$79.11M** | 75,058 |
| **Mitsubishi L200** | $1,055.88 | 30.06K | **$26.46M** | 25,063 |
| **Isuzu D-Max** | $1,018.71 | 29.76K | **$25.21M** | 24,748 |

---

### 2. Operational & Cost Breakdown

* **Expense by Maintenance Type:**
  * **Engine Overhaul:** $200M (77.08%) | ~50K events
  * **Periodic Service:** $34M (12.93%) | 113K events
  * **Tire Maintenance:** $26M (9.98%) | 87K events
* **Expense by Route Type:**
  * **Highway:** $130M (50.11%)
  * **Rural:** $65M (25.15%)
  * **Urban:** $64M (24.74%)

---

### 3. Sampling Analysis: Cabin Type Cost Inversion

Evaluating vehicles strictly by **Cabin Type** reveals distinct efficiency advantages:

| Scenario / Filter | Most Cost-Effective Model | Highest Cost Model | Fleet Avg Cost | Avg KM |
| :--- | :--- | :--- | :--- | :--- |
| **Overall Baseline** | Isuzu D-Max ($981.64) | Mitsubishi L200 ($1,071.62) | $1,036.54 | 29,978 KM |
| **Double Cabin Filter** | **Mitsubishi L200 ($938.72)** | Chevy Silverado ($1,061.07) | $999.04 | 29,053 KM |
| **Single Cabin Filter** | **Chevy Silverado ($999.66)** | Mitsubishi L200 ($1,057.30) | $1,024.75 | 29,656 KM |

---

## 💡 Strategic Recommendations

1. **Tailored Procurement by Cabin Type:** Pair procurement decisions strictly with operational requirements. Purchase Mitsubishi L200s for Double-Cabin duty and Chevy Silverados for Single-Cabin duty.
2. **Shift to Proactive Servicing:** Prevent expensive major engine overhauls ($200M spend) by enforcing strict periodic service routines.
3. **Capture Vehicle Identification Numbers (VINs):** Implement individual vehicle IDs in future logging to track rogue outlier assets and calculate repair-vs-replace thresholds.
