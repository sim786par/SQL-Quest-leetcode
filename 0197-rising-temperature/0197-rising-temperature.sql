# Write your MySQL query statement below
-- correct codes :
-- 1.using lag function:
-- select id 
-- from(
--     select id,recordDate,temperature as temp,
--     lag(temperature ,1) over(order by recordDate) as prevtemp,
--     lag(recordDate,1) over(order by recordDate) as prevdate
--     from weather
-- )t
-- where datediff(recordDate, prevDate) = 1 and prevtemp < temp;

-- 2.using self join:
select w1.id from weather w1
join weather w2 ON Datediff(w1.recordDate, w2.recordDate) = 1
where w1.temperature > w2.temperature;

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

