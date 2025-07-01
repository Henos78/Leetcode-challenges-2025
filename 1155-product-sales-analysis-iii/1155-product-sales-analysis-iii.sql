# Write your MySQL query statement below
with cte  as (
    select product_id, min(year) as first_year from sales
    group by  product_id)

select s.product_id, c.first_year, s.quantity, s.price from sales s
join cte c on c.product_id=s.product_id 
where c.first_year=s.year


