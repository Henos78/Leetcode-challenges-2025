with cte1 as (
    select m.title, sum(mr.rating)/count(mr.movie_id) as avg_rating from movies m
    join movierating mr on mr.movie_id=m.movie_id
    where mr.created_at like '%2020-02-%'
    group by m.movie_id order by avg_rating desc, title asc limit 1
),

cte2 as (
    select u.name, count(u.name) as cnt from users u 
    join movierating mr on mr.user_id=u.user_id
    group by u.name order by cnt desc, name asc limit 1
)

select name as results from cte2
union all
select title as results from cte1


