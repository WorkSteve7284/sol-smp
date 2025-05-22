tag @s add enderaggro
$team join $(id).internal_team @s
$scoreboard players set @s ID $(id)
scoreboard players operation #temp ID = @s ID
damage @s 0 vred:bleed_out by @e[predicate=!vred:stuff,distance=..15,limit=1,sort=nearest,type=!endermite,type=!arrow,tag=!no_atk]