execute as @s[scores={ravager_horn=1..,ravager_cooldown=0},predicate=vred:double_horn,tag=!ravager_spawned,predicate=vred:ravager_horn_right] at @s run function vred:ravager_horn/spawn/a
execute as @s[scores={ravager_horn=1..,ravager_cooldown=0},predicate=!vred:double_horn,tag=!ravager_spawned,predicate=vred:ravager_horn] at @s run function vred:ravager_horn/spawn/a
scoreboard players set @s[scores={ravager_horn=1..}] ravager_horn 0
execute if score @s ravager_cooldown matches 1.. run function vred:ravager_horn/cooldown
execute if score @s ravager_cooldown matches 1.. run function vred:ravager_horn/cooldown1
tag @s[tag=no_cooldown] remove ravager_spawned