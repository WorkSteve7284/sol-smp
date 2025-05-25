scoreboard players operation #temp ID = @s ID
execute store result storage vred:weapon_damage lich_staff float 1 run scoreboard players get #lich_staff hoplite_weapondmg
execute if entity @e[distance=..2,predicate=!vred:id_check,tag=!iceball,predicate=!vred:stuff] run function vred:lich_staffv2/iceball_explosion
execute unless block ^ ^ ^0.25 #vred:non_solid run function vred:lich_staffv2/iceball_explosion
particle minecraft:firework ^ ^ ^ 0.1 -0.1 0.1 0 1
data merge entity @s {billboard:"center",item:{id:"minecraft:snowball",count:1,components:{"minecraft:custom_model_data":6}}}
kill @s[scores={rayAge=100..}]