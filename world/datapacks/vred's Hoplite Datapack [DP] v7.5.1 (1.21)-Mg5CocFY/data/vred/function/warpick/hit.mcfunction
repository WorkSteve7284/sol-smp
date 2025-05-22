advancement revoke @s only vred:attack/warpick
execute store result storage vred:weapon_damage warpick float 1 run scoreboard players get #warpick hoplite_weapondmg
tag @s add mine
execute as @e[distance=..7,nbt={HurtTime:10s}] at @s run function vred:warpick/1 with storage vred:weapon_damage
tag @s remove mine