execute if entity @s[scores={evoker_cooldown=0},tag=!no_cooldown] run function vred:evoker_wand/shield/activate1
execute if entity @s[tag=no_cooldown] run function vred:evoker_wand/shield/activate1
advancement revoke @s only vred:right_click/evoker_wand