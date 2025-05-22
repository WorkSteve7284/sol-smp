$damage @s $(golem_hammer) player_attack by @a[tag=golem_shockwave,limit=1]
effect give @s slowness 5 1
execute if entity @s[type=!player] at @s positioned ^ ^.4 ^ rotated 0 -90 run function vred:golem_hammer/non_player
scoreboard players set $strength player_motion.api.launch 10000
#execute if entity @s[type=player] as @s at @s run summon area_effect_cloud ~ ~2 ~ {Duration:2,Tags:["golem_kb"]} 
execute if entity @s[type=player] as @s at @s run execute positioned ~ ~1 ~ facing ~ ~2 ~ run function player_motion:api/launch_looking