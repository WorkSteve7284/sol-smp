execute if score #kills midas_sword_config matches 0 run scoreboard players add @s midas_sword 9
execute if score #kills midas_sword_config matches 0 run execute at @s run particle dust_color_transition{from_color:[0.97,0.93,0.41],scale:1,to_color:[0.89,0.63,0.31]} ~ ~1 ~ 1 1 1 0.2 150
execute if score #kills midas_sword_config matches 0 run loot give @s loot vred:entities/gold
execute if score #kills midas_sword_config matches 1 run scoreboard players add @s midas_sword 9
execute if score #kills midas_sword_config matches 1 run execute at @s run particle dust_color_transition{from_color:[0.97,0.93,0.41],scale:1,to_color:[0.89,0.63,0.31]} ~ ~1 ~ 1 1 1 0.2 150
execute if score #kills midas_sword_config matches 1 run loot give @s loot vred:entities/gold