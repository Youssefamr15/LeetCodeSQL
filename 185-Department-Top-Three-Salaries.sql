-- Write your PostgreSQL query statement below
with helper as (
    select *, dense_rank() over (partition by departmentId order by salary desc) as rank
    from Employee
)

select d.name as Department, e.name as Employee, e.salary as Salary
from helper e
inner join Department d
on e.departmentId = d.id
where rank <= 3;