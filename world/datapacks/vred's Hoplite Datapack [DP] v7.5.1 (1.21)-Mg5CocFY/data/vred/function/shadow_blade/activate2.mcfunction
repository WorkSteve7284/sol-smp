execute store result storage vred:weapon_timer shadow_blade float 1 run scoreboard players get #shadow_blade hoplite_weapontimer
scoreboard players operation #hi hoplite_weapontimer = #shadow_blade hoplite_weapontimer
scoreboard players set #divide hoplite_weapontimer 20
execute store result storage vred:weapon_timer shadow_blade1 float 1 run scoreboard players operation #hi hoplite_weapontimer /= #divide hoplite_weapontimer
function vred:shadow_blade/activate with storage vred:weapon_timer