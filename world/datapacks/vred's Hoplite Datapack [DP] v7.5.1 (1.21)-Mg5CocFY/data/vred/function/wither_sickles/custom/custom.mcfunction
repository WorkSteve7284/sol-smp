scoreboard players set @s[tag=!no_cooldown] wither_sickles_cooldown 140
tag @s add wither_sickles_hit
execute store result storage vred:weapon_damage wither_sickles float 1 run scoreboard players get #wither_sickles hoplite_weapondmg
execute as @e[distance=..7,nbt={HurtTime:10s}] at @s run function vred:wither_sickles/custom/entity with storage vred:weapon_damage
tag @s remove wither_sickles_hit