# Write your MySQL query statement below
#LAG() is a window function used to look at a value from a previous row without using joins.LAG(column, offset, default_value) OVER (ORDER BY column_name) 
select distinct num as ConsecutiveNums 
from(
    select num,
    lag(num,1) over(order by id) as prev1,         
    lag(num,2) over(order by id) as prev2
    from Logs
)t
where num = prev1 and num = prev2;
