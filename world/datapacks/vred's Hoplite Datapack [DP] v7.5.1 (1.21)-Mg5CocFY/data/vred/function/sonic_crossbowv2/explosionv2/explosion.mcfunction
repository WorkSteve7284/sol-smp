$execute if entity @s[type=!player] at @s facing entity @e[type=marker,distance=..$(damage_range),tag=aec_cool,tag=pos_added,sort=nearest,limit=1] feet facing ^ ^0.5 ^-1 run function vred:sonic_crossbowv2/explosionv2/non_player
scoreboard players set $strength player_motion.api.launch 15000
$execute if entity @s[type=player] at @s facing entity @e[type=marker,distance=..$(damage_range),tag=aec_cool,tag=pos_added,sort=nearest,limit=1] feet facing ^ ^0.5 ^-1 run function player_motion:api/launch_looking
kill @e[type=marker,tag=aec_cool,tag=pos_added]