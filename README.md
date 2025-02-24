# Customer Churn Analysis in R

## 📌 Project Overview
This project analyzes **customer churn patterns** in a telecom company using R. The goal is to identify key factors contributing to churn and provide actionable insights to improve customer retention.

## 📊 Dataset
- **Source**: [Kaggle - Telco Customer Churn](https://www.kaggle.com/datasets/blastchar/telco-customer-churn)
- **Size**: 7,043 rows, 21 columns
- **Target Variable**: `Churn` (Yes/No)

## 🔧 Tools & Technologies Used
- **R** (ggplot2, dplyr, caret)

## 📂 Project Structure
```
📁 Customer-Churn-Analysis-R
│-- 📄 churn_analysis.R (R script for analysis)
│-- 📄 file_data_structure.pdf (Data structure documentation)
│-- 📄 README.md (Project documentation)
│-- 📄 raw_data.csv (Raw dataset)
│-- 📄 transformed_data.csv (Processed dataset)
│-- 📂 Plots/
│   ├── churn_distribution.jpeg
│   ├── churn_rate_by_contract_type.jpeg
│   ├── monthly_charges_vs_churn.jpeg
│   ├── tenure_distribution.jpeg
```

## 📈 Key Insights
✔ Customers with **month-to-month contracts** are more likely to churn.  
✔ Higher **monthly charges** increase churn probability.  
✔ **Long-tenure customers** tend to stay with the company.  

## 🚀 How to Run This Project
1. **Clone the repository**
   ```bash
   git clone https://github.com/lokesh-analyst/Customer-Churn-Analysis-R.git
   cd Customer-Churn-Analysis-R
   ```
2. **Open RStudio & Install Required Packages**
   ```r
   install.packages(c("ggplot2", "dplyr", "caret"))
   ```
3. **Run the R Script**
   - Open `churn_analysis.R` in RStudio
   - Execute the script line by line or run the full analysis

## 📌 Future Improvements
🔹 Implement **machine learning models** for churn prediction  
🔹 Create an **interactive dashboard**  

## 📄 References
- Dataset: [Kaggle - Telco Customer Churn](https://www.kaggle.com/datasets/blastchar/telco-customer-churn)
- R Documentation: [CRAN R Packages](https://cran.r-project.org/)

---
**Author:** Lokesh Chauhan  
**Date:** 24-02-2025  
**License:** MIT  

