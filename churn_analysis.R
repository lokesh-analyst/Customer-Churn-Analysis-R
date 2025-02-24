# Install and Load Necessary Packages
install.packages(c("ggplot2", "dplyr", "caret"))
library(ggplot2)
library(dplyr)
library(caret)

# Load Dataset
data <- read.csv("raw_data.csv", stringsAsFactors = TRUE)

# View first few rows
head(data)

# Chech for Missing Values
sum(is.na(data))

# Drop Missing Values
data <- na.omit(data)

# Write Transformed file
write.csv(data, "transformed_data.csv", row.names = FALSE)

# Convert Catagorical Variables to Factors
data$Churn <- as.factor(data$Churn)
data$Contract <- as.factor(data$Contract)
data$PaymentMethod <- as.factor(data$PaymentMethod)

# Summary Statistics
summary(data)

# ---------------------- Data Visualization ----------------------

# 1. Churn Distribution
ggplot(data, aes(x = Churn, fill = Churn)) +
  geom_bar() +
  ggtitle("Churn Distibution") +
  theme(plot.title = element_text(hjust = 0.5))

# 2. Churn by Contract Type
ggplot(data, aes(x = Contract, fill = Churn)) +
  geom_bar(position = "fill") +
  ggtitle("Churn Rate by Contract Type") +
  theme(plot.title = element_text(hjust = 0.5))

# 3. Monthly Charges vs. Churn
ggplot(data, aes(x = Churn, Y = MonthlyCharges, fill = Churn)) +
  geom_boxplot() +
  ggtitle("Monthly Charges vs. Churn") +
  theme(plot.title = element_text(hjust = 0.5))

# 4. Tenure Distribution
ggplot(data, aes(x = tenure)) +
  geom_histogram(binwidth = 5, fill = "blue", color = "black") +
  ggtitle("Tenure Distribution") +
  theme(plot.title = element_text(hjust = 0.5))

# ---------------------- Statistical Analysis ----------------------

# 1. Chi-Square Test for Churn and Contract Type
chisq.test(table(data$Churn, data$Contract))

# 2. Correlation between Tenure & Monthly Charges
cor(data$tenure, data$MonthlyCharges, use = "complete.obs")

# ---------------------- Conclusion ---------------------

cat("Key Takeaways:\n")
cat("- Customer with Month-To-Month contracts have the highest churn rate.\n")
cat("- Higher monthly charges are associated with higher churn.\n")
cat("- Tenure has a negative correlation with churn, meaning long-term customers are less likely to leave.\n")
