# Write your MySQL query statement below
update Salary
set sex = if('m'=sex, 'f','m')
