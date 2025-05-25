scoreboard players operation #temp ID = @s ID
execute unless block ^ ^ ^0.35 #vred:non_solid run function vred:aiglos/aiglos_explosion
execute unless entity @e[distance=..2,predicate=!vred:id_check,tag=!aiglos_trident,predicate=!vred:stuff] run tp ^ ^ ^0.35
execute unless entity @e[distance=..2,predicate=!vred:id_check,tag=!aiglos_trident,predicate=!vred:stuff] run tp ^ ^ ^0.35
execute unless entity @e[distance=..2,predicate=!vred:id_check,tag=!aiglos_trident,predicate=!vred:stuff] run tp ^ ^ ^0.35
execute if entity @e[distance=..2,predicate=!vred:id_check,tag=!aiglos_trident,predicate=!vred:stuff] run function vred:aiglos/aiglos_explosion
data merge entity @s[tag=!aiglos_skin] {item:{id:"minecraft:bow",count:1,components:{"minecraft:custom_model_data":7}}}
data merge entity @s[tag=aiglos_skin] {item:{id:"minecraft:bow",count:1,components:{"minecraft:custom_model_data":13}}}
execute if entity @s[scores={rayAge=100..}] run execute as @a[predicate=vred:id_check] at @s run tag @s add aiglosreturn
kill @s[scores={rayAge=100..}]