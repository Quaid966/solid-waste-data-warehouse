# solid-waste-data-warehouse
# 🧱 Solid Waste Management Data Warehouse Project

This project is part of the **Data Warehouse Fundamentals** course on Coursera. I designed and implemented a **data warehouse** for a solid waste management company operating across Brazil. The company collects and recycles solid waste using various truck types and stations across major cities. The goal of this warehouse is to enable reporting and analytical insights for better decision-making.

---

## 🧠 Business Goals

Enable management to run analytics and generate reports such as:

- Total waste collected per year per city
- Total waste collected per month per city
- Total waste collected per quarter per city
- Total waste collected per year per truck type
- Total waste collected per truck type per city
- Total waste collected per truck type per station per city

---

## 🏗️ Data Warehouse Schema

The warehouse consists of 3 dimension tables and 1 fact table:

- **`dimdate`** — Calendar details (dateid, date, Year, Quarter, QuarterName, Month, Monthname, Day, Weekday, WeekdayName)
- **`dimstation`** — Station information (Stationid, City)
- **`dimtruck`** — Truck types (Truckid, TruckType)
- **`facttrips`** — Waste collection trips (Tripid, Dateid, Stationid, Truckid, Wastecollected)

### Entity-Relationship Model (ERD)
![ERD Diagram](https://github.com/Quaid966/solid-waste-data-warehouse/blob/main/erd/ERD.png)

Relationships are enforced via foreign keys.

- `facttrips.dateid → dimdate.dateid`
- `facttrips.stationid → dimstation.stationid`
- `facttrips.truckid → dimtruck.truckid`

---

## 🛠️ Technologies Used

- PostgreSQL
- SQL (DDL, DML)
- Grouping Sets, ROLLUP, and CUBE queries
- Materialized Views
- CSV files for data loading
- pgAdmin for database management

---
