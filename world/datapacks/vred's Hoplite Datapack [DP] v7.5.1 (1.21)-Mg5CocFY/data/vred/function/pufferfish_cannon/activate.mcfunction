advancement revoke @s only vred:right_click/pufferfish_cannon
execute if score @s pufferfish_help matches 0 if score @s pufferfish_cooldown matches 0 run function vred:pufferfish_cannon/throw1
execute if entity @s[tag=no_cooldown] run function vred:pufferfish_cannon/throw1
scoreboard players set @s pufferfish_help 8