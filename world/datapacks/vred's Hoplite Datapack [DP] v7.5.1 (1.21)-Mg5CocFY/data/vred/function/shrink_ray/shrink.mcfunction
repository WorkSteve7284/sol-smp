attribute @s minecraft:generic.scale modifier add vred:shrink -0.5 add_value
attribute @s minecraft:generic.movement_speed modifier add vred:shrink 0.04 add_value
scoreboard players operation @s shrink_timer = #shrink_ray hoplite_weapontimer
scoreboard players set @s[tag=!no_cooldown] shrink_cooldown 600