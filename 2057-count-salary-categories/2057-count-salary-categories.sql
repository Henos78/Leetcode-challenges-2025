# Write your MySQL query statement below
with cte1 as (
    select 'Low Salary' as category
    union all
    select 'Average Salary'
    union all
    select 'High Salary'
), cte2 as (
        select case when income<20000 then 'Low Salary'
        when income>=20000 and income <=50000 then 'Average Salary'
        when income>50000  then 'High Salary' end as category from accounts)

select c1.category, count(c2.category) as accounts_count from cte1 c1
left join cte2 c2 on c1.category=c2.category
group by c1.category