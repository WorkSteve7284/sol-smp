scoreboard players operation #temp ID = @s ID
execute unless block ^ ^ ^0.35 #vred:non_solid run function vred:wither_sickles/attack with storage vred:weapon_damage
execute store result storage vred:weapon_damage wither_sickles float 1 run scoreboard players get #wither_sickles hoplite_weapondmg
execute if entity @e[distance=..2,predicate=!vred:id_check,tag=!wither_sickles,predicate=!vred:stuff] run function vred:wither_sickles/attack with storage vred:weapon_damage
data merge entity @s {item:{id:"minecraft:stone_hoe",count:1,components:{"minecraft:custom_model_data":3}}}
#execute if entity @s[scores={rayAge=100..}] run execute as @a[predicate=vred:id_check] at @s run function vred:aiglos/return
kill @s[scores={rayAge=100..}]