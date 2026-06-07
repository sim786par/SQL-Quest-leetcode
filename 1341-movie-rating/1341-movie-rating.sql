# Write your MySQL query statement below
(select u.name as results
from MovieRating as m
join Users as u
on m.user_id = u.user_id
group by m.user_id,u.name
order by count(*) desc, u.name asc
limit 1)
union all
(select mo.title as results
from MovieRating as m
join Movies as mo
on m.movie_id = mo.movie_id
where created_at >= "2020-02-01" and created_at <"2020-03-01"
group by m.movie_id,mo.title
order by avg(rating) desc,mo.title asc
limit 1)