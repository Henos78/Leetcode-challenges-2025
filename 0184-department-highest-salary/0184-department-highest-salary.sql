# Write your MySQL query statement below
with ranked_salary as(
select name, salary, departmentId,
dense_rank() over (partition by departmentId order by salary desc) as ranking
from Employee
)

select d.name as Department, r.name as Employee, r.salary as Salary from ranked_salary r
join Department d  on d.id=r.departmentId
where r.ranking =1
order by  salary desc, Employee asc