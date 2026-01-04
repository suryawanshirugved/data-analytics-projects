SELECT
    COUNT(DISTINCT Customer_ID) AS Total_Customers
FROM superstore;

SELECT
    Segment,
    SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Segment
ORDER BY Total_Sales DESC;

SELECT
    Customer_ID,
    Customer_Name,
    SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Customer_ID, Customer_Name
ORDER BY Total_Sales DESC;

WITH customer_sales AS (
    SELECT
        Customer_ID,
        Customer_Name,
        SUM(Sales) AS Total_Sales
    FROM superstore
    GROUP BY Customer_ID, Customer_Name
),
customer_rank AS (
    SELECT
        Customer_ID,
        Customer_Name,
        Total_Sales,
        NTILE(10) OVER (ORDER BY Total_Sales DESC) AS sales_bucket
    FROM customer_sales
)
SELECT
    Customer_ID,
    Customer_Name,
    Total_Sales,
    CASE
        WHEN sales_bucket <= 2 THEN 'High Value'
        WHEN sales_bucket <= 5 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS Customer_Value_Segment
FROM customer_rank
ORDER BY Total_Sales DESC;

WITH customer_sales AS (
    SELECT
        Customer_ID,
        Customer_Name,
        SUM(Sales) AS Total_Sales
    FROM superstore
    GROUP BY Customer_ID, Customer_Name
),
customer_rank AS (
    SELECT
        Customer_ID,
        Customer_Name,
        Total_Sales,
        NTILE(10) OVER (ORDER BY Total_Sales DESC) AS sales_bucket
    FROM customer_sales
),
customer_segment AS (
    SELECT
        Customer_ID,
        Customer_Name,
        Total_Sales,
        CASE
            WHEN sales_bucket <= 2 THEN 'High Value'
            WHEN sales_bucket <= 5 THEN 'Medium Value'
            ELSE 'Low Value'
        END AS Customer_Value_Segment
    FROM customer_rank
)
SELECT
    Customer_Value_Segment,
    SUM(Total_Sales) AS Segment_Total_Sales
FROM customer_segment
GROUP BY Customer_Value_Segment
ORDER BY Segment_Total_Sales DESC;
