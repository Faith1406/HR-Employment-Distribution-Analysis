# 📊 HR Employment Distribution Dashboard
[![SQL](https://img.shields.io/badge/SQL-MySQL-blue?logo=mysql&logoColor=white)](https://www.mysql.com/)
[![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-yellow?logo=powerbi&logoColor=black)](https://powerbi.microsoft.com/)
[![Project Status](https://img.shields.io/badge/status-completed-brightgreen)]()
[![License](https://img.shields.io/badge/license-MIT-lightgrey)]()

---
## 📍 Overview


This project explores and visualizes employee demographic and HR data using **MySQL** for data cleaning and analysis, and **Power BI** for interactive dashboard development. The dashboard presents insights into employee trends, diversity, and organizational dynamics over time.

---

## 🔧 Tools & Technologies

- 🗃️ **MySQL** – For data cleaning and analytical queries
- 📊 **Power BI** – For visual dashboards
- 📁 **PDF Report** – Final dashboard output

---

## 📁 Project Files
```bash
📦 HR-Distribution-Analytics
├── 📄 HR Data Cleaning.sql           # SQL script for preprocessing & cleaning
├── 📄 HR Data Questions.sql          # SQL script for analysis & KPIs
├── 📄 HR Distribution Dashboard.pdf  # Final Power BI visual dashboard
└── 📄 README.md                      # Project documentation


## 🎯 Project Objectives

-  Clean and transform raw HR data for analysis
-  Answer key HR-related business questions using SQL
-  Visualize results with interactive and insightful visuals in Power BI

---
## Questions
1. What is the gender breakdown of employees in the company?
2.What is the race/ethnicity breakdown of employees in the company?
3.What is the age distribution of employees in the company?
4.How many employees work at headquarters versus remote locations?
5.What is the average length of employment for employees who have been terminated?
6.How does the gender distribution vary across departments and job titles?
7.What is the distribution of job titles across the company?
8.Which department has the highest turnover rate?
9.What is the distribution of employees across locations by state?
10.How has the company employee count changed over time based on hire and term dates?
11.What is the tenure distribution for each department?

## Summary of Findings
1.There are more male employees
2.White race is the most dominant while Native Hawaiian and American Indian are the least dominant.
3.The youngest employee is 20 years old and the oldest is 57 years old
4.5 age groups were created (18-24, 25-34, 35-44, 45-54, 55-64). A large number of employees were between 25-34 followed by 35-44 while the smallest group was 55-64.
5.A large number of employees work at the headquarters versus remotely.
6.The average length of employment for terminated employees is around 7 years.
7.The gender distribution across departments is fairly balanced but there are generally more male than female employees.
8.The Marketing department has the highest turnover rate followed by Training. The least turn over rate are in the Research and development, Support and Legal departments.
9.A large number of employees come from the state of Ohio.
10.The net change in employees has increased over the years.
11.The average tenure for each department is about 8 years with Legal and Auditing having the highest and Services, Sales and Marketing having the lowest.

## 🔍 Sample SQL Query

```sql
-- Gender Breakdown of Active Employees
SELECT gender, COUNT(*) as Count
FROM hr
WHERE age >= 18 AND termdate = '0000-00-00'
GROUP BY gender;
```

---

## 📊 Dashboard Highlights

- ✅ **Gender, Race, and Age Group Distributions**
- 🏠 **Remote vs Headquarters Workforce**
- 🗺️ **Employees by State**
- 🔄 **Yearly Employment Changes**
- 💼 **Turnover Rate by Department**
- 🕒 **Average Length of Employment**

> 📄 See full report:[HR Distribution Dashboard.pdf](https://github.com/user-attachments/files/21495777/HR.Distribution.Dashboard.pdf)


## Limitations
1.Some records had negative ages and these were excluded during querying(967 records). Ages used were 18 years and above.
2.Some termdates were far into the future and were not included in the analysis(1599 records). The only term dates used were those less than or equal to the current date.





