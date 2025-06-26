# Write your MySQL query statement below
with cte as(
    select * from employees left join salaries using(employee_id)
    union 
    select * from employees right join salaries using(employee_id)
)

select employee_id from cte
where name is null or salary is null
order by employee_id