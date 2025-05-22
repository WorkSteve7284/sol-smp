advancement revoke @s only vred:right_click/dragon_katana
execute if score @s katan_cooldown matches 0 if score @s cloud_help matches 0 run function vred:dragon_katana/katana_dash
execute if score @s cloud_help matches 0 run scoreboard players set @s cloud_help 5