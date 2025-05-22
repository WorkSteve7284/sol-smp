effect give @s resistance 1 5 true
playsound entity.warden.sonic_boom player @a[distance=..20] ~ ~ ~
tag @s add sonic_arrow
execute store result storage vred:weapon_damage sonic_crossbow float 1 run scoreboard players get #sonic_crossbow hoplite_weapondmg
scoreboard players set @s ray_steps 500
scoreboard players set @s ray_success 0
scoreboard players set @s sonic_crossbow_particle 0
function vred:sonic_crossbowv2/ray with storage vred:weapon_damage
tag @s remove sonic_arrow
