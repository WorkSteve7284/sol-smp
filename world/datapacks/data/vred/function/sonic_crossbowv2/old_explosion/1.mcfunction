scoreboard players set @s ray_success 1
execute store result storage vred:sonic_crossbow explosion float 1 run scoreboard players get #explosion sonic_crossbow_config
execute store result storage vred:sonic_crossbow sculk float 1 run scoreboard players get #sculk sonic_crossbow_config
execute store result storage vred:sonic_crossbow damage_range float 1 run scoreboard players get #damage_range sonic_crossbow_config
execute store result storage vred:sonic_crossbow damage float 1 run scoreboard players get #damage sonic_crossbow_config
function vred:sonic_crossbowv2/old_explosion/2 with storage vred:sonic_crossbow