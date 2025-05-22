execute if score @s beehive_cooldown matches 1.. run function vred:beehive_blaster/beehive_blasterc
execute if score @s beehive_cooldown matches 1.. run function vred:beehive_blaster/beehive_blasterc1
execute as @s[predicate=vred:beehive_blaster,scores={beehive_bow=1..,beehive_cooldown=0}] at @s run function vred:beehive_blaster/raycast/sr
execute as @s[predicate=vred:beehive_blaster,scores={beehive_bow=1..,beehive_cooldown=1..}] at @s run function vred:beehive_blaster/beehive_blaster2
scoreboard players set @s beehive_bow 0