# Write your MySQL query statement below
SELECT user_id , 
    ROUND(AVG(CASE WHEN action = 'confirmed' THEN 1
        WHEN action = 'timeout' THEN 0
        ELSE 0 END
    ),2) AS confirmation_rate 
FROM 
    Signups s 
LEFT JOIN 
    Confirmations c USING(user_id)
GROUP BY 
    user_id
;