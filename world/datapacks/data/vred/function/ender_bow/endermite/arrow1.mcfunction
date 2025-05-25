execute on origin run tag @s add no_atk
execute store result storage vred:teams id float 1 run scoreboard players get @s ID 
execute summon endermite run function vred:ender_bow/endermite/ender_arrow1_1 with storage vred:teams
tag @s remove ender_bow_1
execute on origin run tag @s remove no_atk