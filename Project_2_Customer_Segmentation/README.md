# Customer Segmentation & Revenue Contribution Analysis

## 📌 Project Overview
This project focuses on analyzing customer-level sales data to segment customers based on their purchasing behavior and identify revenue contribution from different customer groups. The objective is to help businesses understand who their most valuable customers are and support data-driven customer strategies.

---

## 🧠 Business Objectives
- Identify the total number of unique customers
- Analyze sales performance by customer segment
- Segment customers into High, Medium, and Low value groups based on spending
- Identify top revenue-generating customers
- Understand revenue contribution by customer value segment

---

## 🗂 Dataset
- Dataset Name: Sample Superstore Retail Sales Data  
- Total Records: ~9,994 rows  

### Key Columns Used
- Customer ID  
- Customer Name  
- Segment  
- Sales  
- Profit  
- Region  
- Category  

---

## 🛠 Tools & Technologies Used
- **Excel**: Initial data validation  
- **SQL (SQLite)**: Customer-level aggregation and segmentation analysis  
- **Power BI**: Data modeling (DAX) and interactive dashboards  

---

## 🔍 Data Preparation
- Aggregated transactional data at the customer level
- Created a summarized customer table for analysis
- Ensured correct data types for reporting and visualization

---

## 📊 SQL Analysis
The following analyses were performed using SQL:
- Total number of unique customers
- Sales by customer segment
- Total sales per customer
- Customer value segmentation using percentile-based logic
- Revenue contribution by customer value segment

SQL queries are saved in the following file:

sql/customer_segmentation_analysis.sql

---

## 📈 Power BI Dashboard
The Power BI dashboard includes:
- KPI cards (Total Customers, Total Sales)
- Sales by Customer Value Segment
- Customer distribution by value segment
- Sales by customer type (Consumer, Corporate, Home Office)
- Top 10 High-Value Customers table
- Interactive slicers for Region, Category, and Segment

Dashboard file location:

powerbi/Customer_Segmentation_Analysis.pbix

---

## 💡 Key Insights
- A small percentage of customers contributes a large portion of total revenue
- High-value customers drive the majority of sales
- Consumer segment generates the highest overall revenue
- Customer segmentation helps prioritize retention and marketing efforts

---

## 🎯 Conclusion
This project demonstrates customer-centric data analysis using SQL and Power BI. It highlights the ability to perform segmentation analysis, identify high-value customers, and present insights through an interactive dashboard.

---

## 📬 Contact
For any questions or feedback, feel free to connect via GitHub or LinkedIn.
