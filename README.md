# 📊 Customer Churn Analysis

An interactive customer churn analysis project developed using **MySQL and Microsoft Power BI** to analyze customer behavior, identify churn patterns, and generate meaningful business insights.

---

## 📌 Project Overview

Customer churn is an important business problem that can affect customer retention and recurring revenue.

This project analyzes customer data using **MySQL for SQL-based analysis** and **Power BI for interactive data visualization**.

The analysis focuses on customer characteristics, contract type, tenure, monthly charges, payment methods, internet services, and additional customer services.

The final solution combines SQL analysis, DAX calculations, and Power BI dashboards to present customer churn patterns in a clear and business-oriented format.

---

## 🎯 Project Objectives

The main objectives of this project are:

- Calculate the total number of customers
- Identify the number of churned customers
- Calculate the overall churn rate
- Analyze churn by contract type
- Analyze churn by customer tenure
- Analyze churn by monthly charges
- Analyze churn by payment method
- Analyze churn by customer characteristics
- Analyze churn by customer service subscriptions
- Build an interactive Power BI dashboard
- Generate meaningful business insights from customer data

---

## 🛠️ Tools & Technologies

| Tool / Technology | Purpose |
|---|---|
| **MySQL** | Database storage and SQL analysis |
| **Power BI Desktop** | Interactive dashboard development |
| **DAX** | Measures and calculated columns |
| **Excel / CSV** | Source dataset and data preparation |
| **GitHub** | Project documentation and version control |

---

## 🔄 Project Workflow

```text
Customer Dataset
       ↓
Data Preparation
       ↓
MySQL Database
       ↓
SQL Exploratory Analysis
       ↓
Power BI Data Connection
       ↓
DAX Measures & Calculated Columns
       ↓
Interactive Power BI Dashboard
       ↓
Business Insights
```

---

## 📊 Dataset

The dataset contains **7,039 customer records**.

The data includes information related to:

### Customer Information

- Customer ID
- Gender
- Senior Citizen
- Partner
- Dependents

### Account Information

- Tenure
- Contract
- Paperless Billing
- Payment Method
- Monthly Charges
- Total Charges
- Churn

### Phone Services

- Phone Service
- Multiple Lines

### Internet Services

- Internet Service
- Online Security
- Online Backup
- Device Protection
- Tech Support
- Streaming TV
- Streaming Movies

The target variable used for churn analysis is:

```text
Churn
```

with the categories:

```text
Yes
No
```

---

# 📈 Power BI Dashboard

The Power BI report contains **4 analytical pages**.

---

## 1. Customer Churn Overview

This page provides a high-level overview of customer churn.

### Analysis

- Total Customers
- Churned Customers
- Churn Rate by Contract
- Churn Rate by Tenure
- Churn Rate by Internet Service

---

## 2. Customer Behavior Analysis

This page analyzes customer characteristics and payment behavior.

### Analysis

- Churn Rate by Gender
- Churn Rate by Senior Citizen
- Churn Rate by Payment Method
- Churn Rate by Online Security

---

## 3. Customer Services & Retention

This page analyzes customer service usage and its relationship with observed churn patterns.

### Analysis

- Churn Rate by Tech Support
- Churn Rate by Online Backup
- Churn Rate by Device Protection
- Churn Rate by Multiple Lines

---

## 4. Churn Risk & Revenue Analysis

This page focuses on financial and account-related churn patterns.

### Analysis

- Churn Rate by Monthly Charges
- Churn Rate by Contract
- Churn Rate by Payment Method
- Churn Rate by Tenure

---

# 📌 Overall Metrics

| Metric | Value |
|---|---:|
| Total Customers | **7,039** |
| Churned Customers | **1,869** |
| Overall Churn Rate | **26.55%** |

---

# 🔎 Key Business Insights

## Contract Type

| Contract | Churn Rate |
|---|---:|
| Month-to-month | **42.7%** |
| One year | **11.3%** |
| Two year | **2.8%** |

Month-to-month customers show the highest observed churn rate among the contract categories.

---

## Customer Tenure

| Tenure Group | Churn Rate |
|---|---:|
| 0–12 months | **47.5%** |
| 13–24 months | **28.7%** |
| 25–48 months | **20.4%** |
| 49–72 months | **9.5%** |

Customers with shorter tenure show higher observed churn rates in the analyzed dataset.

---

## Monthly Charges

| Monthly Charges | Churn Rate |
|---|---:|
| Low (< ₹30) | **9.8%** |
| Medium (₹30–₹70) | **24.4%** |
| High (> ₹70) | **35.4%** |

The high monthly-charge group has the highest observed churn rate among the three charge groups.

---

## Payment Method

| Payment Method | Churn Rate |
|---|---:|
| Electronic check | **45.3%** |
| Mailed check | **19.1%** |
| Bank transfer | **16.7%** |
| Credit card | **15.2%** |

Electronic check customers show the highest observed churn rate among the analyzed payment methods.

---

## Online Security

| Online Security | Churn Rate |
|---|---:|
| No | **41.8%** |
| Yes | **14.6%** |
| No internet service | **7.4%** |

Customers without Online Security show a higher observed churn rate than customers with the service.

---

## Tech Support

| Tech Support | Churn Rate |
|---|---:|
| No | **41.6%** |
| Yes | **15.2%** |
| No internet service | **7.4%** |

Customers without Tech Support show a higher observed churn rate than customers with Tech Support.

---

## Online Backup

| Online Backup | Churn Rate |
|---|---:|
| No | **39.9%** |
| Yes | **21.5%** |
| No internet service | **7.4%** |

Customers without Online Backup show a higher observed churn rate.

---

## Device Protection

| Device Protection | Churn Rate |
|---|---:|
| No | **39.1%** |
| Yes | **22.5%** |
| No internet service | **7.4%** |

Customers without Device Protection show a higher observed churn rate.

---

## Gender

| Gender | Churn Rate |
|---|---:|
| Female | **26.9%** |
| Male | **26.2%** |

The observed churn rates are relatively close between the two gender categories.

---

## Senior Citizen

| Customer Category | Churn Rate |
|---|---:|
| Non-Senior Citizen | **23.6%** |
| Senior Citizen | **41.7%** |

The senior-citizen category has a higher observed churn rate in the analyzed dataset.

---

# 🧮 DAX Measures

## Total Customers

```DAX
Total Customers =
COUNTROWS('customer_churn customers')
```

## Churned Customers

```DAX
Churned Customers =
CALCULATE(
    COUNTROWS('customer_churn customers'),
    'customer_churn customers'[Churn] = "Yes"
)
```

## Churn Rate

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

## Tenure Group

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

## Monthly Charges Group

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

MySQL was used to perform exploratory customer churn analysis.

The SQL analysis includes:

- Total customer count
- Churned customer count
- Overall churn rate
- Churn by contract type
- Churn by customer tenure
- Churn by monthly charges
- Churn by gender
- Churn by payment method
- Churn by Online Security
- Churn by Tech Support
- Churn by Online Backup
- Churn by Device Protection
- Churn by Multiple Lines
- Churn by Internet Service

The complete SQL script is available in:

```text
SQL/customer_churn_analysis.sql
```

---

# 💡 Business Interpretation

The analysis identifies several notable patterns within the dataset:

- Month-to-month customers show substantially higher observed churn than customers on longer contracts.
- Customers with shorter tenure show higher observed churn.
- Higher monthly-charge groups show higher observed churn.
- Electronic check customers show the highest observed churn among the analyzed payment methods.
- Customers without Online Security show higher observed churn.
- Customers without Tech Support show higher observed churn.
- Customers without Online Backup show higher observed churn.
- Customers without Device Protection show higher observed churn.

These findings describe patterns and associations in the analyzed dataset and do not by themselves establish causation.

---

# 🎨 Dashboard Design

The Power BI dashboard uses a **Whimsical Sage & Cream** theme.

### Main Color Palette

| Element | Color |
|---|---|
| Sage Green | `RGB 158, 177, 149` |
| Warm Cream | `RGB 255, 253, 249` |
| Dark Sage Text | `RGB 62, 69, 58` |
| Beige Border | `RGB 218, 211, 201` |

The dashboard uses:

- Consistent visual formatting
- KPI cards
- Data labels
- Rounded visual containers
- Subtle shadows
- Consistent typography
- Page navigation
- Business-focused visualizations

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

# 📂 Project Files

### Power BI

```text
PowerBI/Customer_Churn_Analysis.pbix
```

Contains the complete Power BI report, including:

- Dashboard pages
- DAX measures
- Calculated columns
- Visualizations
- Page navigation
- Dashboard formatting

### SQL

```text
SQL/customer_churn_analysis.sql
```

Contains the SQL queries used for customer churn analysis.

### Screenshots

```text
Screenshots/
```

Contains dashboard screenshots for project reference.

---

# 🚀 Skills Demonstrated

## SQL & MySQL

- SQL querying
- Data filtering
- Aggregation
- `GROUP BY`
- `CASE` statements
- Conditional aggregation
- Churn-rate calculations
- Customer segmentation

## Power BI

- Interactive dashboard development
- Data visualization
- KPI cards
- Clustered column charts
- Page navigation
- Dashboard formatting
- Business intelligence reporting

## DAX

- Measures
- Calculated columns
- `COUNTROWS`
- `CALCULATE`
- `DIVIDE`
- `SWITCH`
- Conditional calculations

## Data Analytics

- Exploratory data analysis
- Customer segmentation
- Churn analysis
- KPI analysis
- Business insight generation
- Data storytelling

---

# ⚠️ Project Scope & Limitations

This project focuses on **descriptive and exploratory customer churn analysis**.

The current project does not include:

- Predictive machine learning
- Individual customer churn prediction
- Real-time customer data
- Automated data refresh
- Causal analysis

The results represent patterns observed within the analyzed dataset.

---

# 🔮 Future Enhancements

Potential future improvements include:

- Publishing the Power BI dashboard as an interactive web report
- Adding a live dashboard link
- Developing a customer churn prediction model using Python
- Adding customer-risk segmentation
- Adding revenue-impact analysis
- Implementing automated data refresh
- Adding additional business KPIs
- Integrating predictive analytics

---

# 👩‍💻 Author

## Vemula Divya Sai Mallika

**B.Tech — Civil Engineering | Aspiring Data Analyst**

### Technical Skills

- SQL
- MySQL
- Power BI
- DAX
- Python
- Data Analytics
- Data Visualization
- Business Intelligence

### GitHub

[VemulaDivya19](https://github.com/VemulaDivya19)

### LinkedIn

[Vemula Divya Sai Mallika](https://www.linkedin.com/in/vemula-divya-90aa64349/)

---

# ⭐ Project Summary

**Customer Churn Analysis** demonstrates the practical use of **MySQL, SQL, Power BI, and DAX** to analyze customer data and develop an interactive business intelligence dashboard.

The project combines database analysis, analytical calculations, visualization, and business interpretation to identify customer churn patterns across contracts, tenure, monthly charges, payment methods, customer characteristics, and service subscriptions.

---

⭐ **Thank you for exploring this project!**
