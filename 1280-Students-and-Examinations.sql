SELECT s.student_id,student_name ,su.subject_name,COUNT(e.student_id) AS 'attended_exams'
FROM Students s
CROSS JOIN Subjects su
LEFT JOIN Examinations e 
ON s.student_id = e.student_id 
AND su.subject_name = e.subject_name
GROUP BY 1,2,3
ORDER BY s.student_id,su.subject_name
;