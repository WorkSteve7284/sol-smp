execute if entity @s[scores={golem_cooldown=0},tag=!no_cooldown] run function vred:golem_hammer/jump
execute if entity @s[tag=no_cooldown] run function vred:golem_hammer/jump
advancement revoke @s only vred:right_click/golem_hammer