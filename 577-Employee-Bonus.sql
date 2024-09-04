# Write your MySQL query statement below
# Write your MySQL query statement below
SELECT name,bonus
FROM Employee AS e
LEFT JOIN Bonus AS b ON e.empId = b.empId
WHERE bonus < 1000 OR bonus IS NULL;
