# Write your MySQL query statement below
with ranking_salary as (
    select name, salary, departmentId,
    dense_rank() over (partition by departmentId order by salary desc) as ranking
    from Employee
)

select d.name as Department,
r.name as Employee,
r.salary as Salary from ranking_salary r 
join department d on d.id=r.departmentId
where r.ranking <= 3
order by Department asc, Salary desc, Employee asc