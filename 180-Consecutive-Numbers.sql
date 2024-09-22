# Write your MySQL query statement below
SELECT DISTINCT l1.num  AS ConsecutiveNums
FROM Logs l1
JOIN logs l2 ON l2.id = l1.id + 1 
JOIN logs l3 ON l3.id = l2.id + 1 
WHERE  
    CASE WHEN l1.num = l2.num AND l2.num = l3.num AND l3.num = l1.num THEN l1.num
    END IS NOT NULL

;