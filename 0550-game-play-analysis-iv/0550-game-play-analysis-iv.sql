with player as
    (select player_id,
        min(event_date) as first_login
    from Activity
    group by player_id
    )
select round(count(player.player_id)/(select count(distinct player_id) from Activity),2) as fraction
from player
join Activity on player.player_id = Activity.player_id
 and datediff(Activity.event_date,player.first_login) = 1;