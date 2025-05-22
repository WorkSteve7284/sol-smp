execute if score @s ID = @s ID run tag @s add ID_added
scoreboard players operation #temp ID = @s ID
execute as @s[tag=!lmotion_added,type=armor_stand] at @s rotated as @a[predicate=vred:id_check,limit=1,sort=nearest] run function vred:sculkweavers_lantern/apply_motion
execute if entity @s[tag=lmotion_added,tag=ID_added] unless block ~ ~-1 ~ #vred:non_solid run function vred:sculkweavers_lantern/dome1/summon
execute rotated as @s on passengers run tp @s ~ ~ ~ ~ ~