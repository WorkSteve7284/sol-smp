execute if score @s evoker_timer matches 1 run scoreboard players set @s[tag=!no_cooldown] evoker_cooldown 280
execute if score @s[tag=!frozen_wand] evoker_timer matches 1.. run particle totem_of_undying ~ ~ ~ 1 1 1 0 1
execute if score @s[tag=frozen_wand] evoker_timer matches 1.. run particle snowflake ~ ~ ~ 1 1 1 0.01 6 force
execute if score @s evoker_timer matches 1 run tag @s remove frozen_wand
execute if score @s evoker_cooldown matches 1.. run function vred:evoker_wand/shield/c
execute if score @s evoker_cooldown matches 1.. run function vred:evoker_wand/shield/c1