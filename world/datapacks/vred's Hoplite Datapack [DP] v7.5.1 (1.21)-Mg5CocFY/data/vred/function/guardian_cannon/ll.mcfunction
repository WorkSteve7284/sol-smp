tag @s add guardian_cannon
scoreboard players set @s ray_steps 500
scoreboard players set @s ray_success 0
execute store result storage vred:weapon_damage guardian_cannon float 1 run scoreboard players get #guardian_cannon hoplite_weapondmg
function vred:guardian_cannon/ray1 with storage vred:weapon_damage
tag @s remove guardian_cannon