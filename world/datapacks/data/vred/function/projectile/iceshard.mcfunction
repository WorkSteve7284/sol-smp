scoreboard players operation #temp ID = @s ID
execute if entity @e[distance=..2,predicate=!vred:id_check,tag=!iceshard,predicate=!vred:stuff] run function vred:ice_horn/iceshard_explosion
execute unless block ^ ^ ^0.25 #vred:non_solid run function vred:ice_horn/iceshard_explosion
particle minecraft:snowflake ^ ^ ^ 0.1 -0.1 0.1 0 1
data merge entity @s {item:{id:"minecraft:ice",count:1}}