execute if entity @s[scores={ihorn_cooldown=0},tag=!no_cooldown] run function vred:ice_horn/blizzard
execute if entity @s[tag=no_cooldown] run function vred:ice_horn/blizzard
advancement revoke @s only vred:right_click/ice_horn