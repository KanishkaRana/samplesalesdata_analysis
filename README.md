# 📊 Sales Trend Analysis Using SQL Server

This project explores and analyzes sales trends over time using SQL Server. The analysis is based on a sample dataset containing product, order, customer, and regional information.

---

## 📁 Dataset Overview

The dataset includes transactional sales data with the following key fields:
- `ORDERDATE`: Date of order
- `SALES`: Total value of each order line
- `PRICEEACH`: Unit price of the product
- `QUANTITYORDERED`: Number of items ordered
- `PRODUCTLINE`: Category of the product
- `DEALSIZE`: Market segment (Small, Medium, Large)
- `COUNTRY`, `STATE`: Regional info for segmentation
- `YEAR_ID`, `MONTH_ID`, `QTR_ID`: Time-based breakdowns

> ⚠️ Note: The dataset does not specify currency. For the sake of analysis, all monetary values (like `SALES` and `PRICEEACH`) are treated as **generic units** or assumed to be in **USD**.

---

## 🧹 Data Cleaning Performed

- 🔸 Dropped the `ADDRESSLINE2` column as it contained only null values.
- 🔸 Checked and documented all other nulls.
- 🔸 Missing values in categorical fields (e.g., `TERRITORY`, `STATE`) were handled using placeholders like `'Unknown'`.
- 🔸 `SALES` was converted from float to integer for cleaner aggregation.

---

## 🧠 Analysis Goals

- Track **monthly and quarterly sales trends**
- Analyze **product-line performance** over years
- Study **regional sales trends** (by country and state)
- Detect any seasonal patterns or high-performing months

---

## 🧾 SQL Techniques Used

- Aggregation functions (`SUM`, `COUNT`)
- Grouping (`GROUP BY YEAR_ID, MONTH_ID`, etc.)
- Filtering and NULL handling
- Data type conversion (`CAST`, `ROUND`)
- Derived views and intermediate tables
- altered table 

---

## 📈 Next Steps

- Build Power BI/Tableau dashboards using the cleaned and aggregated SQL views
- Compare performance between different deal sizes and product lines
- Publish insights in a presentation or report format

---

## 🧑‍💻 Author

**Kanishka Kumari**  
Final Year B.Tech Student | Certified Data Analyst  
📧 kanishkaa040104@gmail.com  
🔗 [LinkedIn](https://www.linkedin.com/in/kanishka-kumari04)

---



---

## ⭐ Project Highlights

- Real-world style data analysis using SQL Server
- Covers full data cleaning + EDA + trend aggregation
- Sets foundation for building BI dashboards

