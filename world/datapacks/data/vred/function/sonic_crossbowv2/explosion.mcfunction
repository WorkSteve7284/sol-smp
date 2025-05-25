scoreboard players set @s ray_success 1
# Explosion
execute store result storage vred:sonic_crossbow explosion float 1 run scoreboard players get #explosion sonic_crossbow_config
execute store result storage vred:sonic_crossbow sculk float 10 run scoreboard players get #sculk sonic_crossbow_config

execute store result storage vred:sonic_crossbow damage_range float 1 run scoreboard players get #damage_range sonic_crossbow_config
execute store result storage vred:sonic_crossbow damage float 1 run scoreboard players get #damage sonic_crossbow_config

summon marker ~ ~ ~ {Tags:["aec_cool"]}
execute as @e[type=marker,tag=aec_cool,tag=!pos_added] at @s run function vred:sonic_crossbowv2/explosion/damage
setblock ~ ~ ~ sculk_catalyst
function vred:sonic_crossbowv2/explosion/explosion with storage vred:sonic_crossbow