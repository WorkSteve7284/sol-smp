execute store result storage vred:weapon_damage corrupted_crossbow float 1 run scoreboard players get #corrupted_crossbow hoplite_weapondmg
tag @s add corrupted_crossbowdmg
execute as @e[distance=..4,predicate=!vred:stuff,tag=!corrupted_crossbowdmg] at @s run function vred:corrupted_crossbow/arrow_hit1 with storage vred:weapon_damage
tag @s remove corrupted_crossbowdmg