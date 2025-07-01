# Write your MySQL query statement below
with cte as(
    select employee_id, department_id from employee
    where primary_flag ='Y'
    group by employee_id
),  cte1 as (
select employee_id, department_id from employee
group by employee_id
having count(case when primary_flag ='N' then 1 end ) = 1 and count(case when primary_flag ='Y' then 1 end ) = 0) 

select * from  cte
union
select * from cte1
order by  employee_id