# Bank Loan Risk Analysis Dashboard

## Project Overview

This project analyzes bank loan data to identify patterns that contribute to loan defaults. The objective is to understand borrower risk and provide insights that help financial institutions make better lending decisions.

The project uses **Python for data cleaning, SQL for analysis, and Power BI for visualization** to build an interactive loan risk dashboard.

---

## Tools and Technologies

* Python (Pandas, NumPy)
* SQL (MySQL)
* Power BI
* Excel

---

## Dataset Description

The dataset contains borrower financial and demographic details used to analyze loan risk.

Key features include:

* Age
* Income
* LoanAmount
* CreditScore
* MonthsEmployed
* NumCreditLines
* InterestRate
* LoanTerm
* DTIRatio
* Education
* EmploymentType
* MaritalStatus
* HasMortgage
* HasDependents
* LoanPurpose
* HasCoSigner
* Default

The **Default column** indicates whether the borrower failed to repay the loan.

* `1` → Default
* `0` → No Default

---

## Data Cleaning (Python)

Data preprocessing was performed using Python to prepare the dataset for analysis.

Cleaning steps included:

* Handling missing values
* Removing duplicate records
* Checking and correcting data types
* Exporting a cleaned dataset for SQL analysis and Power BI visualization

Notebook used:

```
bankloanriskdatacleaning.ipynb
```

---

## SQL Analysis

SQL queries were used to analyze loan risk patterns and calculate important metrics.

Key analyses performed:

1. Default Rate Analysis
2. Default Rate by Education
3. Average Loan Amount by Loan Purpose
4. Identification of High-Risk Customers
5. Default Rate by Employment Type
6. Loan Amount Risk Categories
7. Credit Score vs Default Analysis
8. Interest Rate vs Default Relationship
9. Customers with Multiple Credit Lines
10. Top 10 High-Risk Borrowers
11. Default Rate by Age Group
12. Credit Score Risk Categories

SQL file used:

```
sql queries.sql
```

---

## Power BI Dashboard

An interactive Power BI dashboard was created to visualize loan risk indicators.

### Key Performance Indicators

* Total Loans
* Total Defaults
* Default Rate
* Average Loan Amount
* Average Credit Score

### Visualizations

* Default Rate by Credit Score Category
* Default Rate by Employment Type
* Default Risk by DTI Category
* Default Rate by Loan Purpose
* Income vs Loan Amount Analysis

### Filters

* Loan Purpose
* Employment Type
* Education

Users can interact with the filters to explore different borrower segments.

---

## Dashboard Preview

![Dashboard Screenshot](dashboard.png)

---

## Project Files

```
Bank Loan Risk.csv
cleaned_loan_data.csv
bankloanriskdatacleaning.ipynb
sql queries.sql
Bank Loan Risk Analysis.pbix
dashboard.png
README.md
```

---

## Key Insights

**Credit Score Risk**

Borrowers with lower credit scores have significantly higher chances of loan default.

**Debt-to-Income Ratio**

Higher DTI ratios are strongly associated with higher default risk.

**Employment Type**

Borrowers with unstable employment tend to have slightly higher default rates.

**Loan Purpose**

Some loan purposes have higher loan amounts and increased risk.

**Age Group Trends**

Younger borrowers tend to show slightly higher default probability.

---

## Business Value

This project demonstrates how data analysis can help financial institutions:

* Identify high-risk borrowers
* Improve credit risk assessment
* Reduce loan default losses
* Support data-driven lending decisions

---

## Author

Jagan Mohan Reddy
Aspiring Data Analyst
