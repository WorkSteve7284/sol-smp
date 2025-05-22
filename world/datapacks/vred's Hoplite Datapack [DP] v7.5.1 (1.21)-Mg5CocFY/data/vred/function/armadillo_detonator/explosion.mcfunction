tag @a[predicate=vred:id_check] remove armadillo_detonation
execute on vehicle run function vred:armadillo_detonator/riding/tick
execute store result storage vred:weapon_damage armadillo_detonator float 1 run scoreboard players get #armadillo_detonator hoplite_weapondmg
function vred:armadillo_detonator/dmg with storage vred:weapon_damage
particle explosion_emitter