scoreboard players operation #temp ID = @s ID
execute store result storage vred:weapon_damage poseidon_trident float 1 run scoreboard players get #poseidon_trident hoplite_weapondmg
execute if entity @s[tag=!poseidon_return] unless block ^ ^ ^0.35 #vred:non_solid run function vred:poseidon_trident/poseidon_explosion with storage vred:weapon_damage
execute if entity @s[tag=!poseidon_return] if entity @e[distance=..2,predicate=!vred:id_check,tag=!poseidon_trident,predicate=!vred:stuff] run function vred:poseidon_trident/poseidon_explosion with storage vred:weapon_damage
data merge entity @s[tag=!poseidon_skin] {item:{id:"minecraft:bow",count:1,components:{"minecraft:custom_model_data":8}}}
data merge entity @s[tag=poseidon_skin] {item:{id:"minecraft:bow",count:1,components:{"minecraft:custom_model_data":14}}}
tag @s[scores={rayAge=100..}] add poseidon_return
#execute in vred:data_void run tp @e[tag=mjolnir_itemkeeper] 0 0 0
execute as @s[tag=poseidon_return] unless entity @a[predicate=vred:id_check,distance=..1.5] run tp @s ^ ^ ^ facing entity @a[predicate=vred:id_check,limit=1]
scoreboard players operation #temp ID = @s ID
execute as @a[predicate=vred:id_check,tag=1slot_tag] at @s if entity @e[tag=poseidon_return,distance=..1.5] in vred:data_void run function vred:poseidon_trident/return
execute as @s[tag=poseidon_return] if entity @a[predicate=vred:id_check,distance=..1.5,tag=1slot_tag] run kill @s