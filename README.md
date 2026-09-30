# 📊 Customer Churn Analysis

An interactive customer churn analysis project built using **MySQL and Power BI** to analyze customer behavior, identify churn patterns, and generate business insights.

---

## 📌 Project Overview

Customer churn is an important business problem that can affect customer retention and revenue.

This project analyzes customer data using **MySQL for SQL-based analysis** and **Power BI for interactive data visualization**.

The analysis focuses on:

- Customer churn
- Contract type
- Customer tenure
- Monthly charges
- Payment methods
- Customer services
- Customer characteristics
- Internet services

The final Power BI dashboard contains **4 interactive pages** with KPI cards and analytical visualizations.

---

## 🎯 Objectives

- Calculate total customers and churned customers
- Calculate the overall churn rate
- Analyze churn by contract type
- Analyze churn by customer tenure
- Analyze churn by monthly charges
- Analyze churn by payment method
- Analyze churn by customer services
- Analyze churn by customer characteristics
- Create an interactive Power BI dashboard
- Generate meaningful business insights from customer data

---

## 🛠️ Tools & Technologies

- **MySQL** — Database and SQL analysis
- **Power BI** — Interactive dashboard and visualization
- **DAX** — Measures and calculated columns
- **Excel / CSV** — Source dataset
- **GitHub** — Project documentation and version control

---

## 🔄 Project Workflow

```text
Customer Dataset
       ↓
Data Preparation
       ↓
MySQL Database
       ↓
SQL Analysis
       ↓
Power BI Connection
       ↓
DAX Measures
       ↓
Interactive Dashboard
       ↓
Business Insights
```

---

## 📊 Dataset

The dataset contains **7,039 customer records** with information related to:

### Customer Details
- Customer ID
- Gender
- Senior Citizen
- Partner
- Dependents

### Account Details
- Tenure
- Contract
- Paperless Billing
- Payment Method
- Monthly Charges
- Total Charges
- Churn

### Services
- Phone Service
- Multiple Lines
- Internet Service
- Online Security
- Online Backup
- Device Protection
- Tech Support
- Streaming TV
- Streaming Movies

The target variable is:

```text
Churn
```

with values:

```text
Yes
No
```

---

# 📈 Power BI Dashboard

The dashboard consists of **4 analytical pages**.

---

## 1. ✦ Customer Churn Overview

Provides an overall view of customer churn.

### KPI Cards
- Total Customers — **7,039**
- Churned Customers — **1,869**

### Visualizations
- Churn Rate by Contract
- Churn Rate by Tenure
- Churn Rate by Internet Service

### Dashboard Preview

![Customer Churn Overview](https://raw.githubusercontent.com/VemulaDivya19/Customer-Churn-Analysis/main/Screenshots/01_Customer_Churn_Overview.png)

---

## 2. ✦ Customer Behavior Analysis

Analyzes churn across customer characteristics and payment behavior.

### Visualizations
- Churn Rate by Gender
- Churn Rate by Senior Citizen
- Churn Rate by Payment Method
- Churn Rate by Online Security

### Dashboard Preview

![Customer Behavior Analysis](https://raw.githubusercontent.com/VemulaDivya19/Customer-Churn-Analysis/main/Screenshots/02_Customer_Behavior_Analysis.png)

---

## 3. ✦ Customer Services & Retention

Analyzes the relationship between customer service usage and churn.

### Visualizations
- Churn Rate by Tech Support
- Churn Rate by Online Backup
- Churn Rate by Device Protection
- Churn Rate by Multiple Lines

### Dashboard Preview

![Customer Services & Retention](https://raw.githubusercontent.com/VemulaDivya19/Customer-Churn-Analysis/main/Screenshots/03_Customer_Services_Retention.png)

---

## 4. ✦ Churn Risk & Revenue Analysis

Analyzes financial and account-related churn patterns.

### Visualizations
- Churn Rate by Monthly Charges
- Churn Rate by Contract
- Churn Rate by Payment Method
- Churn Rate by Tenure

### Dashboard Preview

![Churn Risk & Revenue Analysis](https://raw.githubusercontent.com/VemulaDivya19/Customer-Churn-Analysis/main/Screenshots/04_Churn_Risk_Revenue_Analysis.png)

---

# 🔎 Key Insights

### 📄 Contract

| Contract | Churn Rate |
|---|---:|
| Month-to-month | **42.7%** |
| One year | **11.3%** |
| Two year | **2.8%** |

Month-to-month customers have the highest observed churn rate among the contract categories.

---

### ⏳ Tenure

| Tenure Group | Churn Rate |
|---|---:|
| 0–12 months | **47.5%** |
| 13–24 months | **28.7%** |
| 25–48 months | **20.4%** |
| 49–72 months | **9.5%** |

Customers with shorter tenure show higher observed churn rates.

---

### 💰 Monthly Charges

| Monthly Charges | Churn Rate |
|---|---:|
| Low (< ₹30) | **9.8%** |
| Medium (₹30–₹70) | **24.4%** |
| High (> ₹70) | **35.4%** |

The high monthly-charge group has the highest observed churn rate.

---

### 💳 Payment Method

| Payment Method | Churn Rate |
|---|---:|
| Electronic check | **45.3%** |
| Mailed check | **19.1%** |
| Bank transfer | **16.7%** |
| Credit card | **15.2%** |

Electronic check customers show the highest observed churn rate among the analyzed payment methods.

---

### 🛡️ Online Security

| Online Security | Churn Rate |
|---|---:|
| No | **41.8%** |
| Yes | **14.6%** |
| No internet service | **7.4%** |

Customers without Online Security show a higher observed churn rate.

---

### 🛠️ Tech Support

| Tech Support | Churn Rate |
|---|---:|
| No | **41.6%** |
| Yes | **15.2%** |
| No internet service | **7.4%** |

Customers without Tech Support show a higher observed churn rate.

---

### ☁️ Online Backup

| Online Backup | Churn Rate |
|---|---:|
| No | **39.9%** |
| Yes | **21.5%** |
| No internet service | **7.4%** |

Customers without Online Backup show a higher observed churn rate.

---

### 🔐 Device Protection

| Device Protection | Churn Rate |
|---|---:|
| No | **39.1%** |
| Yes | **22.5%** |
| No internet service | **7.4%** |

Customers without Device Protection show a higher observed churn rate.

---

## 📌 Overall Metrics

| Metric | Value |
|---|---:|
| Total Customers | **7,039** |
| Churned Customers | **1,869** |
| Overall Churn Rate | **26.55%** |

---

# 🧮 DAX Measures

### Total Customers

```DAX
Total Customers =
COUNTROWS('customer_churn customers')
```

### Churned Customers

```DAX
Churned Customers =
CALCULATE(
    COUNTROWS('customer_churn customers'),
    'customer_churn customers'[Churn] = "Yes"
)
```

### Churn Rate

```DAX
Churn Rate KPI =
DIVIDE(
    CALCULATE(
        COUNTROWS('customer_churn customers'),
        'customer_churn customers'[Churn] = "Yes"
    ),
    COUNTROWS('customer_churn customers'),
    0
)
```

---

# 🧮 Calculated Columns

### Tenure Group

```DAX
Tenure Group =
SWITCH(
    TRUE(),
    'customer_churn customers'[tenure] <= 12, "0–12 months",
    'customer_churn customers'[tenure] <= 24, "13–24 months",
    'customer_churn customers'[tenure] <= 48, "25–48 months",
    'customer_churn customers'[tenure] <= 72, "49–72 months",
    "72+ months"
)
```

### Monthly Charges Group

```DAX
Monthly Charges Group =
SWITCH(
    TRUE(),
    'customer_churn customers'[MonthlyCharges] < 30, "Low (< ₹30)",
    'customer_churn customers'[MonthlyCharges] <= 70, "Medium (₹30–₹70)",
    "High (> ₹70)"
)
```

---

# 🗄️ SQL Analysis

MySQL was used to perform customer churn analysis using SQL queries.

The SQL analysis includes:

- Total customer count
- Churned customer count
- Overall churn rate
- Churn by contract
- Churn by tenure
- Churn by monthly charges
- Churn by gender
- Churn by payment method
- Churn by Online Security
- Churn by Tech Support
- Churn by Online Backup
- Churn by Device Protection
- Churn by Multiple Lines
- Churn by Internet Service

The complete SQL script is available here:

**[SQL Analysis](SQL/customer_churn_analysis.sql)**

---

# 📁 Project Structure

```text
Customer-Churn-Analysis/
│
├── Dataset/
│   └── .gitkeep
│
├── PowerBI/
│   └── Customer_Churn_Analysis.pbix
│
├── Screenshots/
│   ├── 01_Customer_Churn_Overview.png
│   ├── 02_Customer_Behavior_Analysis.png
│   ├── 03_Customer_Services_Retention.png
│   └── 04_Churn_Risk_Revenue_Analysis.png
│
├── SQL/
│   └── customer_churn_analysis.sql
│
└── README.md
```

---

# 🎨 Dashboard Design

The dashboard uses a **Whimsical Sage & Cream** theme.

### Color Palette

- Sage Green — `RGB 158, 177, 149`
- Warm Cream — `RGB 255, 253, 249`
- Dark Sage Text — `RGB 62, 69, 58`
- Beige Border — `RGB 218, 211, 201`

The dashboard includes:

- Consistent page navigation
- KPI cards
- Data labels
- Rounded visual cards
- Subtle shadows
- Consistent typography
- Interactive Power BI visuals

---

# 💡 Business Interpretation

The analysis shows several notable patterns in the dataset:

- Month-to-month customers have a substantially higher observed churn rate than customers on longer contracts.
- Customers with shorter tenure show higher observed churn.
- Higher monthly-charge groups show higher observed churn.
- Electronic check customers have the highest observed churn among the payment methods analyzed.
- Customers without Online Security and Tech Support show higher observed churn rates.
- Customers without Online Backup and Device Protection also show higher observed churn rates.

These findings describe **patterns and associations in the dataset** and do not by themselves establish causation.

---

# 🚀 Skills Demonstrated

### SQL & MySQL
- SQL querying
- Filtering
- Aggregation
- GROUP BY
- CASE statements
- Conditional aggregation
- Churn-rate calculations

### Power BI
- Interactive dashboard development
- Data visualization
- KPI cards
- Page navigation
- Dashboard formatting
- Business intelligence reporting

### DAX
- Measures
- Calculated columns
- `COUNTROWS`
- `CALCULATE`
- `DIVIDE`
- `SWITCH`
- Conditional calculations

### Data Analytics
- Exploratory data analysis
- Customer segmentation
- Churn analysis
- Business insight generation
- Data storytelling

---

# 📂 Project Files

### Power BI Dashboard

`PowerBI/Customer_Churn_Analysis.pbix`

Contains the complete interactive Power BI report.

### SQL Script

`SQL/customer_churn_analysis.sql`

Contains the SQL queries used for churn analysis.

### Dashboard Screenshots

`Screenshots/`

Contains screenshots of all four dashboard pages.

### Dataset

The raw dataset is not included in the public repository.

---

# ⚠️ Project Scope

This project focuses on **descriptive and exploratory customer churn analysis**.

The dashboard identifies patterns within the available customer data but does not currently include:

- Machine learning
- Predictive churn modeling
- Real-time data
- Automated data refresh
- Individual customer churn prediction

---

# 🔮 Future Enhancements

Potential future improvements include:

- Publishing the dashboard as an interactive web report
- Adding a live Power BI dashboard link
- Building a customer churn prediction model using Python
- Adding customer-risk segmentation
- Adding revenue-impact analysis
- Adding automated data refresh
- Adding additional business KPIs

---

# 👩‍💻 Author

## Vemula Divya Sai Mallika

**B.Tech — Civil Engineering | Aspiring Data Analyst**

### Skills

- SQL
- MySQL
- Power BI
- DAX
- Python
- Data Analytics
- Data Visualization

### GitHub

[VemulaDivya19](https://github.com/VemulaDivya19)

### LinkedIn

[Vemula Divya Sai Mallika](https://www.linkedin.com/in/vemula-divya-90aa64349/)

---

# ⭐ Project Summary

**Customer Churn Analysis** demonstrates the use of **MySQL, SQL, Power BI, and DAX** to transform customer data into an interactive business intelligence dashboard.

The project combines SQL-based analysis with Power BI visualization to identify customer churn patterns across contracts, tenure, monthly charges, payment methods, customer characteristics, and service subscriptions.

---

⭐ **Thank you for exploring this project!**
