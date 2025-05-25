scoreboard players set @s ray_success 1
scoreboard players set @s[tag=!no_cooldown] shrink_cooldown 600
execute as @e[distance=..2,tag=!sonic_arrow,predicate=!vred:stuff,limit=1] at @s run function vred:shrink_ray/enlarge