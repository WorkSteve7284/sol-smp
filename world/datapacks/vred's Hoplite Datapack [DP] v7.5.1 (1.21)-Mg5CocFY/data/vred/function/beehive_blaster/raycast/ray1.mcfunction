execute unless block ~ ~ ~ minecraft:air run function vred:beehive_blaster/beehive_blaster1
execute if entity @e[distance=..2,tag=!beehive_blast,predicate=!vred:stuff] run function vred:beehive_blaster/beehive_blaster1
scoreboard players remove @s ray_steps 1
execute if score @s ray_steps matches 1.. if score @s ray_success matches 0 positioned ^ ^ ^0.1 run function vred:beehive_blaster/raycast/ray1