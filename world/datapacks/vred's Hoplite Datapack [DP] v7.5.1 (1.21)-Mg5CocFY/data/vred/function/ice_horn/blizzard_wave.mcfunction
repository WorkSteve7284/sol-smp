effect give @s slowness 6 3
$damage @s $(ice_horn) player_attack by @a[tag=icehorn_blizzard,limit=1]
execute if entity @s[type=!player] at @s facing entity @a[distance=..10,tag=icehorn_blizzard,sort=nearest,limit=1] feet facing ^ ^0.1 ^-1 run function vred:ice_horn/non_player
scoreboard players set $strength player_motion.api.launch 20000
execute if entity @s[type=player] at @s facing entity @a[distance=..10,tag=icehorn_blizzard,sort=nearest,limit=1] feet facing ^ ^0.5 ^-1 run function player_motion:api/launch_looking