# Write your MySQL query statement below
with gain_loss  as (
    select stock_name, SUM(CASE WHEN operation = 'Sell' THEN price ELSE 0 END) - 
        SUM(CASE WHEN operation = 'Buy' THEN price ELSE 0 END) as net 
    from stocks group by stock_name
)
select s.stock_name, g.net as capital_gain_loss from stocks s
join gain_loss g on g.stock_name=s.stock_name
group by s.stock_name


