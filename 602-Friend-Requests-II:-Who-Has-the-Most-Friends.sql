# Write your MySQL query statement below
WITH t1 AS (
    SELECT requester_id
    FROM RequestAccepted
    UNION ALL
    SELECT accepter_id 
    FROM RequestAccepted
)
SELECT requester_id AS id,COUNT(requester_id) AS num
FROM t1
GROUP BY requester_id 
ORDER BY 2 DESC
LIMIT 1
;