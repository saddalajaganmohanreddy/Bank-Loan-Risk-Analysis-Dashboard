SELECT * FROM bankloanrisk.cleaned_loan_data;
/*1. Default Rate Analysis*/
SELECT 
    COUNT(*) AS Total_Customers,
    SUM(`Default`) AS Total_Defaults,
    (SUM(`Default`) * 100.0 / COUNT(*)) AS Default_Rate_Percentage
FROM bankloanrisk.cleaned_loan_data;
/*2.Default Rate by Education*/
SELECT 
    Education,
    COUNT(*) AS Total_Customers,
    SUM(`Default`) AS Total_Defaults,
    (SUM(`Default`) * 100.0 / COUNT(*)) AS Default_Rate
FROM bankloanrisk.cleaned_loan_data
GROUP BY Education
ORDER BY Default_Rate DESC;
/*3.Average Loan Amount by Loan Purpose*/
SELECT 
    LoanPurpose,
    AVG(LoanAmount) AS Avg_Loan_Amount,
    COUNT(*) AS Total_Loans
FROM bankloanrisk.cleaned_loan_data
GROUP BY LoanPurpose
ORDER BY Avg_Loan_Amount DESC;
/*4.Identify High-Risk Customers*/
SELECT *
FROM bankloanrisk.cleaned_loan_data
WHERE CreditScore < 600
AND DTIRatio > 0.4;
/*5.Default Rate by Employment Type*/
SELECT 
    EmploymentType,
    COUNT(*) AS Total_Customers,
    SUM(`Default`) AS Total_Defaults,
    (SUM(`Default`) * 100.0 / COUNT(*)) AS Default_Rate
FROM bankloanrisk.cleaned_loan_data
GROUP BY EmploymentType
ORDER BY Default_Rate DESC;
/*6.Loan Amount Risk Categories*/
SELECT 
    CASE 
        WHEN LoanAmount < 20000 THEN 'Low Loan'
        WHEN LoanAmount BETWEEN 20000 AND 50000 THEN 'Medium Loan'
        ELSE 'High Loan'
    END AS Loan_Category,
    COUNT(*) AS Total_Loans,
    SUM(`Default`) AS Total_Defaults
FROM bankloanrisk.cleaned_loan_data
GROUP BY Loan_Category;
/*7.Credit Score vs Default*/
SELECT 
    `Default`,
    AVG(CreditScore) AS Avg_CreditScore,
    COUNT(*) AS Total_Customers
FROM bankloanrisk.cleaned_loan_data
GROUP BY `Default`;
/*8.Interest Rate vs Default*/
SELECT 
    ROUND(InterestRate,1) AS Interest_Rate,
    COUNT(*) AS Total_Loans,
    SUM(`Default`) AS Total_Defaults
FROM bankloanrisk.cleaned_loan_data
GROUP BY ROUND(InterestRate,1)
ORDER BY Interest_Rate;
/*9.Customers with Many Credit Lines*/
SELECT 
    LoanID,
    NumCreditLines,
    Income,
    CreditScore,
    DTIRatio
FROM bankloanrisk.cleaned_loan_data
WHERE NumCreditLines > 3
ORDER BY NumCreditLines DESC;
/*10Top 10 High-Risk Borrowers*/
SELECT 
    LoanID,
    CreditScore,
    DTIRatio,
    LoanAmount,
    Income,
    NumCreditLines
FROM bankloanrisk.cleaned_loan_data
ORDER BY CreditScore ASC, DTIRatio DESC
LIMIT 10;
/*11.Default Rate by Age Group*/
SELECT 
    CASE 
        WHEN Age < 30 THEN 'Young'
        WHEN Age BETWEEN 30 AND 50 THEN 'Middle Age'
        ELSE 'Senior'
    END AS Age_Group,
    COUNT(*) AS Total_Customers,
    SUM(`Default`) AS Total_Defaults,
    ROUND(SUM(`Default`) * 100.0 / COUNT(*),2) AS Default_Rate
FROM bankloanrisk.cleaned_loan_data
GROUP BY Age_Group;
/*Credit Score Risk Categories*/
SELECT 
    CASE 
        WHEN CreditScore < 600 THEN 'Poor'
        WHEN CreditScore BETWEEN 600 AND 700 THEN 'Average'
        ELSE 'Good'
    END AS Credit_Category,
    COUNT(*) AS Total_Customers,
    SUM(`Default`) AS Total_Defaults
FROM bankloanrisk.cleaned_loan_data
GROUP BY Credit_Category;