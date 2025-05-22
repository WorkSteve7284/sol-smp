advancement revoke @s only vred:right_click/wither_sickles
execute unless entity @s[tag=no_cooldown] run execute if score @s[scores={wither_sickles_help=0}] wither_sickles_cooldown matches 0 run function vred:wither_sickles/throw
execute if entity @s[tag=no_cooldown] run function vred:wither_sickles/throw
scoreboard players set @s wither_sickles_help 10