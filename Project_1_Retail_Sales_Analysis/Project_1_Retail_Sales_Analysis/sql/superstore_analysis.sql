-- Total Sales and Total Profit
SELECT 
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM superstore;

-- Total Sales by Category
SELECT 
    Category,
    SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Category
ORDER BY Total_Sales DESC;

-- Total Sales by Region
SELECT 
    Region,
    SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Region
ORDER BY Total_Sales DESC;

-- Monthly Sales Trend
SELECT
    Year,
    Month,
    SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Year, Month, Month_Number
ORDER BY Year, Month_Number;

-- Top 5 Products by Sales
SELECT 
    "Product Name",
    SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY "Product Name"
ORDER BY Total_Sales DESC
LIMIT 5;
