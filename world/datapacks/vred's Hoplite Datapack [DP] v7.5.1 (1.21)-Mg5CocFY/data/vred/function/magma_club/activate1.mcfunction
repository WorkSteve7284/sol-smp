advancement revoke @s only vred:right_click/magma_club
execute if score @s magma_cooldown matches 0 run execute store result storage vred:weapon_damage magma_club float 1 run scoreboard players get #magma_club hoplite_weapondmg
execute if score @s magma_cooldown matches 0 run function vred:magma_club/magma_block with storage vred:weapon_damage
