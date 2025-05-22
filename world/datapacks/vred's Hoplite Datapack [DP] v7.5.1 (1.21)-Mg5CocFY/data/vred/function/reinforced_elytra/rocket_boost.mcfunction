playsound minecraft:entity.firework_rocket.launch player @a[distance=..15] ~ ~ ~
scoreboard players set $strength player_motion.api.launch 20000
function player_motion:api/launch_looking
scoreboard players set @s[tag=!no_cooldown] reinforcede_cooldown 400