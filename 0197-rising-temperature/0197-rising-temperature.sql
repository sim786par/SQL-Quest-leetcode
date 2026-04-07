# Write your MySQL query statement below
-- correct code:
select id 
from(
    select id,recordDate,temperature as temp,
    lag(temperature ,1) over(order by recordDate) as prevtemp,
    lag(recordDate,1) over(order by recordDate) as prevdate
    from weather
)t
where datediff(recordDate, prevDate) = 1 and prevtemp < temp;
-- wrong code using lag:
-- select id
-- from(
--     select id,temperature as temp ,
--     lag(temperature,1) over(order by recordDate) as prev
--     from weather 
--     )t
-- where prev < temp;

-- failed testcase:
-- | id | recordDate | temperature |
-- | -- | ---------- | ----------- |    
-- | 1  | 2000-12-14 | 3           |
-- | 2  | 2000-12-16 | 5           |
-- output:  but expected output id null because of datediff
-- | id |                            
-- | -- |
-- | 2  |

