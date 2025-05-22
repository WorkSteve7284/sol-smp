advancement revoke @s only vred:right_click/cloud_sword
execute if score @s[scores={cloud_help=0}] cloud_cooldown matches 0 run function vred:cloud_sword/activate
scoreboard players set @s cloud_help 10