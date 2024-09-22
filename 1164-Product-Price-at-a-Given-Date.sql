# Write your MySQL query statement below
WITH t1 AS (
    SELECT product_id,new_price
    FROM Products p
    WHERE change_date = 
    (SELECT MAX(change_date) FROM Products 
    WHERE (p.product_id = product_id) AND (change_date <= '2019-08-16')))

SELECT DISTINCT p.product_id,IFNULL(t1.new_price,10) AS price
FROM Products p 
LEFT JOIN t1 
ON t1.product_id = p.product_id 
;