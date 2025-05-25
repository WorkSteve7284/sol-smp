execute unless block ~ ~ ~ minecraft:air run scoreboard players set @s ray_success 1
execute if entity @e[distance=..2,tag=!shrink_arrow,predicate=!vred:stuff] run function vred:shrink_ray/explosion
scoreboard players remove @s ray_steps 1
execute unless predicate vred:shrink_ray_skin run particle dust{color:[0.45,0.6,0.15],scale:1} ~ ~ ~ 0.0 0.0 0.0 0 0 force
execute if predicate vred:shrink_ray_skin run particle dust{color:[0.710,0.353,0.714],scale:1} ~ ~ ~ 0.0 0.0 0.0 0 0 force
execute if score #skins_vfx.enabled item_check matches 1.. if predicate vred:shrink_ray_skin run particle dust{color:[0.580,0.224,0.694],scale:0.75} ~ ~ ~ 0.2 0.2 0.2 0.3 4 force
execute if score @s ray_steps matches 1.. if score @s ray_success matches 0 positioned ^ ^ ^0.1 run function vred:shrink_ray/ray1