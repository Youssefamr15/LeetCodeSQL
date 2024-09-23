# Write your MySQL query statement below
WITH t1 AS (
    SELECT 
    *,
    SUM(weight) OVER(ORDER BY turn) AS "sum"
    FROM Queue
    ORDER BY turn
)

SELECT person_name 
FROM t1
WHERE sum <= 1000
ORDER BY turn desc
LIMIT 1