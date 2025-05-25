execute store result storage vred:teams id float 1 run scoreboard players get @s ID 
function vred:set_team with storage vred:teams
execute unless score @s ID = @s ID run advancement revoke @s only vred:first_join1