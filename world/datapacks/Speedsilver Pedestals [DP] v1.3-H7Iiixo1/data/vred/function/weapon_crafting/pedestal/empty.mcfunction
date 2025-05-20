data merge entity @s[type=item_display] {Tags:["pedestal_stone","empty_pedestal"],item:{id:"minecraft:warped_fungus_on_a_stick",count:1,components:{"minecraft:custom_model_data":6}}}
data merge entity @s[type=interaction] {width:1,height:1,response:1b,Tags:["crafting_empty","crafting_inter","empty_pedestal","pedestal_display"]}
scoreboard players operation @s pedestal_ID = #coolio pedestal_ID
tag @s add ID_added