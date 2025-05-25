scoreboard players operation #temp ID = @s ID
execute if entity @e[distance=..2,predicate=!vred:id_check,tag=!harpoon_hook,predicate=!vred:stuff] run function vred:harpoon_launcher/launch_2
execute unless block ^ ^ ^0.25 #vred:non_solid run function vred:harpoon_launcher/launch1
particle minecraft:block{block_state:"dirt"} ^ ^ ^ 0.1 -0.1 0.1 0 1
data merge entity @s {item:{id:"minecraft:arrow",count:1,components:{"minecraft:custom_model_data":4}}}