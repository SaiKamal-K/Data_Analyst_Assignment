# 📊 Data Analyst Assignment

## 📌 Overview

This project demonstrates core data analysis skills across **SQL, Excel, and Python**.
It includes database design, data querying, spreadsheet analysis, and basic programming logic.

---

## 🗂 Project Structure

```
Data_Analyst_Assignment/
│
├── SQL/
│   ├── 01_Hotel_Schema.sql
│   ├── 02_Hotel_Queries.sql
│   ├── 03_Clinic_Schema.sql
│   └── 04_Clinic_Queries.sql
│
├── Spreadsheets/
│   └── Ticket_Analysis.xlsx
│
├── Python/
│   ├── 01_Time_Converter.py
│   └── 02_Remove_Duplicates.py
│
└── README.md
```

---

## 🏨 SQL Analysis

### 🔹 Hotel Management System

* Designed relational tables: **users, bookings, items, booking_commercials**
* Performed queries to:

  * Retrieve last booked room per user
  * Calculate total billing per booking (month-wise)
  * Filter bills greater than a threshold
  * Identify most & least ordered items per month
  * Find customers with the 2nd highest bill

### 🔹 Clinic Management System

* Designed tables: **clinics, customer, clinic_sales, expenses**
* Performed queries to:

  * Calculate revenue by sales channel
  * Identify top customers
  * Perform month-wise revenue, expense, and profit analysis
  * Determine most profitable clinic per city
  * Find second least profitable clinic per state

---

## 📊 Excel Analysis

* Created two sheets: **ticket** and **feedbacks**
* Implemented:

  * **Lookup operation** using `INDEX + MATCH` to populate `ticket_created_at`
  * **Time-based analysis**:

    * Identified tickets created and closed on the same day
    * Identified tickets closed within the same hour
  * Used `COUNTIFS` for outlet-wise aggregation

---

## 🐍 Python Implementation

### 🔹 Time Conversion

* Converted minutes into human-readable format (hours & minutes)
* Used integer division and modulus operations

### 🔹 Duplicate Removal

* Removed duplicate characters from a string
* Implemented using loops and conditional checks

---

## 🛠 Tools & Technologies

* SQL (SQLite / MySQL)
* Microsoft Excel
* Python 3
* Visual Studio Code
* Google Colab

---

## ✅ Key Learnings

* Writing optimized SQL queries using joins, aggregations, and window functions
* Performing real-world data analysis using Excel formulas
* Implementing basic programming logic in Python
* Structuring and organizing projects for professional submission

---

## 🚀 Conclusion

This assignment showcases practical skills required for a Data Analyst role, including:

* Data querying and transformation
* Analytical thinking
* Problem-solving using multiple tools

---
