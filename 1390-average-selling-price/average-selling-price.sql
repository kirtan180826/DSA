# Write your MySQL query statement below
SELECT 
    T1.product_id, 
    IFNULL(ROUND((SUM(T1.price*T2.units)/SUM(T2.units)),2),0) AS average_price
FROM Prices T1
LEFT JOIN UnitsSold T2
ON T1.product_id = T2.product_id
AND T2.purchase_date BETWEEN t1.start_date and t1.end_date
GROUP BY T1.product_id

