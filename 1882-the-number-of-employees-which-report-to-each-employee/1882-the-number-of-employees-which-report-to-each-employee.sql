# Write your MySQL query statement below
select e.employee_id, e.name, count(*) as reports_count, round(avg(b.age)) as average_age from employees e
join employees b on e.employee_id=b.reports_to
group by e.employee_id, e.name
order by e.employee_id