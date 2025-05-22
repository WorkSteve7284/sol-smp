tag @s add riding_player
scoreboard players operation @s ID = #boom ID
data merge entity @s {teleport_duration:0}
scoreboard players operation #temp ID = @s ID
ride @e[type=armadillo,sort=nearest,distance=..3,limit=1,predicate=!vred:id_check] mount @s
tag @a[predicate=vred:id_check] add armadillo_on