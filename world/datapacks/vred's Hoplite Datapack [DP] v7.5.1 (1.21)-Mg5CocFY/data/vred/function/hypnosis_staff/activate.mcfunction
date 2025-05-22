execute if entity @s[scores={hypnosis_cooldown=0},tag=!no_cooldown] run function vred:hypnosis_staff/raycast/sr
execute if score @s[tag=no_cooldown] pufferfish_help matches 0 run function vred:hypnosis_staff/raycast/sr
scoreboard players set @s pufferfish_help 5
advancement revoke @s only vred:right_click/hypnosis_staff

