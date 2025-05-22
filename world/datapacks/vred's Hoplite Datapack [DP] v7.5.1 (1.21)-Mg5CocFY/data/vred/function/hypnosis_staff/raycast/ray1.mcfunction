execute unless block ~ ~ ~ minecraft:air run function vred:hypnosis_staff/raycast/hit
execute if entity @e[distance=..2,tag=!hypnosis_staff,predicate=!vred:stuff,type=!#vred:passive] run function vred:hypnosis_staff/raycast/hit1
scoreboard players remove @s ray_steps 1
particle totem_of_undying ~ ~ ~
execute if score @s ray_steps matches 1.. if score @s ray_success matches 0 positioned ^ ^ ^0.1 run function vred:hypnosis_staff/raycast/ray1