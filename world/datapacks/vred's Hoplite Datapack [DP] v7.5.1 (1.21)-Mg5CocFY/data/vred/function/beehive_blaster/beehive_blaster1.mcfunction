tag @s add bb
scoreboard players set @s ray_success 1
scoreboard players operation #bee ID = @s ID
execute summon minecraft:bee run function vred:beehive_blaster/summon
execute summon minecraft:bee run function vred:beehive_blaster/summon
execute summon minecraft:bee run function vred:beehive_blaster/summon
execute summon minecraft:bee run function vred:beehive_blaster/summon
execute summon minecraft:bee run function vred:beehive_blaster/summon
scoreboard players set @s[tag=!no_cooldown] beehive_cooldown 240
tag @s remove bb