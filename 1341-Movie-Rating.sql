# Write your MySQL query statement below
WITH t1 AS (
SELECT name AS results
FROM Users
JOIN MovieRating
USING(user_id)
GROUP BY name
ORDER BY COUNT(rating) DESC,name
LIMIT 1 ),
t2 AS (
SELECT title AS results
FROM Movies
JOIN MovieRating
USING(movie_id)
WHERE created_at BETWEEN "2020-02-01" AND "2020-02-29"
GROUP BY title
ORDER BY AVG(rating) DESC, title
LIMIT 1)

SELECT results FROM t1
UNION ALL
SELECT results FROM t2