scoreboard players operation #temp ID = @s ID
execute store result storage vred:weapon_damage mjolnir float 1 run scoreboard players get #mjolnir hoplite_weapondmg
execute if entity @s[tag=!return] unless block ^ ^ ^0.35 #vred:non_solid run function vred:mjolnir/mjolnir_explosion with storage vred:weapon_damage
execute if entity @s[tag=!return] if entity @e[distance=..2,predicate=!vred:id_check,tag=!mjolnir_trident,predicate=!vred:stuff] run function vred:mjolnir/mjolnir_explosion with storage vred:weapon_damage
data merge entity @s[tag=!mjolnir_skin] {item:{id:"minecraft:stone_axe",count:1,components:{"minecraft:custom_model_data":1}}}
data merge entity @s[tag=mjolnir_skin] {item:{id:"minecraft:stone_axe",count:1,components:{"minecraft:custom_model_data":5}}}
tag @s[scores={rayAge=100..}] add return
#execute in vred:data_void run tp @e[tag=mjolnir_itemkeeper] 0 0 0
execute as @s[tag=return] unless entity @a[predicate=vred:id_check,distance=..1.5] run tp @s ^ ^ ^ facing entity @a[predicate=vred:id_check,limit=1]
scoreboard players operation #temp ID = @s ID
execute as @a[predicate=vred:id_check,tag=1slot_tag] at @s if entity @e[tag=return,distance=..1.5] in vred:data_void run function vred:mjolnir/return
execute as @s[tag=return] if entity @a[predicate=vred:id_check,distance=..1.5,tag=1slot_tag] run kill @s
execute if entity @s[tag=mjolnir_skin] run particle heart