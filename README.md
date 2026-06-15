# Fleet Maintenance Optimization Dashboard
**A Cost & Event Analysis | Jan 2023 – June 2024**

---

## What This Project Is About

This project analyzes over **249,000 vehicle maintenance records** from a real-world mixed fleet to answer one core question: *where is the money actually going, and when?*

Starting from a raw dataset of service logs, I built a full end-to-end analytics pipeline that surfaces the true cost drivers — by vehicle model, maintenance type, route, and month — across an 18-month operating window.

The total fleet spend across this period: **$260 Million.**

---

## The Fleet

Four vehicle models are tracked:

| Vehicle | Total Cost | Total Events | Avg Cost/Event |
|---|---|---|---|
| Ford F-150 | $129M | 124,456 | $1,037.87 |
| Chevy Silverado | $79M | 75,058 | $1,053.92 |
| Mitsubishi L200 | $26M | 25,063 | $1,055.88 |
| Isuzu D-Max | $25M | 24,748 | $1,018.71 |

> Ford F-150 alone accounts for nearly **half the entire budget**.

---

## Key Findings

### 1. Engine Overhauls Are the Budget Killer
- **$200M** — nearly 77% of all spending — goes to Engine Overhauls alone
- Engine Overhauls have the *lowest* event count (50K) but the *highest* cost
- Periodic Services are the most frequent (113K events) but cost far less ($34M total)

### 2. Major Repairs Dominate Severity
- **Major maintenance:** $171M | 96K events
- **Normal maintenance:** $60M | 58K events
- **Minor maintenance:** $29M | 96K events

### 3. The Fleet Is Extremely Predictable
Every 6-month window costs almost exactly the same:

| Period | Total Cost | Total Events |
|---|---|---|
| Jan – Jun 2023 | $86M | 82K |
| Jul – Dec 2023 | $87M | 83K |
| Jan – Jun 2024 | $87M | 84K |

> The fleet behaves like a machine — it demands roughly **$87M every six months**, regardless of season or year.

### 4. Highway Routes Cost the Most
- **Highway:** $130M
- **Rural:** $65M
- **Urban:** $64M

### 5. Double vs Single Cabin — Almost Identical
- Double Cabin: $144M | 138K events | 100 hrs avg downtime
- Single Cabin: $116M | 112K events | 99 hrs avg downtime

---

## Data Pipeline & Tech Stack

```
Raw Excel Data
     ↓
Excel + Power Query   ← Initial cleaning and structural shaping
     ↓
BigQuery (SQL)        ← Data warehouse, aggregations, view optimization
     ↓
Power BI + DAX        ← Interactive dashboard, KPI cards, time intelligence
     ↓
GitHub                ← Version control and public deployment
```

---

## Dashboard Pages

### Page 1 — Vehicle Details & Maintenance Reports
Covers the full-period overview: total cost, total events, average cost per event, breakdown by vehicle model, maintenance type, and maintenance level.

**SQL file:** `page_one_Vehicle_Details.sql` — aggregates per vehicle model including total cost, event count, average cost per event, average KM, vehicle age, and repair level percentages.

**SQL file:** `page_one_cost_by_maintence.sql` — breaks down total cost by maintenance type and maintenance level, ordered by highest spend.

### Page 2 — Monthly Cost Analysis (Jan 2023 – Jun 2024)
An interactive filtering page with a timeline slider, cabin type selector, and route filter. Updates KPIs and charts in real time.

**SQL file:** `page_2_monthly_analysis.sql` — extracts year, month, and formatted month labels; groups by vehicle, route, weather, maintenance type, and level; outputs total events, total cost, average cost, repair counts by level, and average delivery delay.

---

## SQL Files in This Repo

| File | Purpose |
|---|---|
| `page_one_Vehicle_Details.sql` | Per-model summary: cost, events, KM, age, repair % |
| `page_one_cost_by_maintence.sql` | Cost breakdown by maintenance type and level |
| `page_2_monthly_analysis.sql` | Monthly time-series aggregation with weather and route context |

---

## Known Limitations

- **No vehicle registration numbers** — the dataset groups by model, not individual vehicle. We can see which model burns money but cannot pinpoint a specific rogue truck.
- Future work: add vehicle-level ID sampling to isolate individual high-cost assets.

---

## Project Assets

- **Live Dashboard:** Power BI (published via GitHub)
- **Repository:** [Fleet Management Project on GitHub](https://github.com/abhishek862000/Fleet_Managment_Project)
- **Raw Dataset:** Available in the `/MAIN_DATA_SOURCE` folder of the repository

---

## What I Learned

When I first opened this dataset I honestly didn't know what story it would tell. The lack of registration numbers felt like a dead end. But the date field unlocked monthly tracking, and the combination of route type, weather conditions, maintenance type, and service level turned a flat table into a hundred different cross-sections.

The real insight wasn't any single number — it was discovering how *predictable* this fleet is. $87M every six months, like clockwork. That kind of consistency is actually a signal: it means this fleet is manageable, and with the right intervention on engine overhauls and Ford F-150 scheduling, there is a clear path to reducing the budget.

---

*Built as part of a data analytics portfolio. Tools: BigQuery, SQL, Excel, Power Query, Power BI, DAX, GitHub.*