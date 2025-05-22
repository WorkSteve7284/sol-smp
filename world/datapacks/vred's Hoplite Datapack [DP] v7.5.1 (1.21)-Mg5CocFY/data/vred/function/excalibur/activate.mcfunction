execute if entity @s[scores={excalibur_cooldown=0,excalibur_active=0},tag=!no_cooldown] run function vred:excalibur/activate1
execute if entity @s[tag=no_cooldown] run function vred:excalibur/activate1
advancement revoke @s only vred:right_click/excalibur