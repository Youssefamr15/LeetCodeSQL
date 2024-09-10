SELECT 
    contest_id,  ROUND(COUNT(contest_id) / (SELECT count(user_id) from Users) * 100,2) AS percentage
FROM 
    Register 
GROUP BY 
    contest_id
ORDER BY 
    percentage DESC, contest_id
;