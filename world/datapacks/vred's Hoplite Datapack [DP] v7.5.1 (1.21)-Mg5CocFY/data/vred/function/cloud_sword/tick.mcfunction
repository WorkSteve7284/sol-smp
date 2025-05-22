execute as @s[tag=no_cooldown] at @s if score @s cloud_timer <= #cloud_sword hoplite_weapontimer run scoreboard players set @s cloud_timer 20
execute as @s at @s if score @s cloud_timer >= #cloud_sword hoplite_weapontimer run scoreboard players set @s[tag=!no_cooldown] cloud_cooldown 600
execute as @s at @s if score @s cloud_timer >= #cloud_sword hoplite_weapontimer run tag @s remove cloud_sworde
execute as @s at @s if score @s cloud_timer >= #cloud_sword hoplite_weapontimer run scoreboard players set @s cloud_timer 0
tag @s[predicate=!vred:cloud_sword] remove cloud_sworde
#effect give @a[predicate=vred:cloud_sword] slow_falling 2 2
scoreboard players add @s[tag=cloud_sworde] cloud_timer 1
execute as @s[predicate=vred:cloud_sword] at @s store result score @s falldistance run data get entity @s FallDistance
execute as @s[predicate=vred:cloud_sword] at @s if entity @s[scores={falldistance=4..}] unless block ~ ~-3 ~ air run effect give @s minecraft:slow_falling 2 0 true
execute if score @s cloud_cooldown matches 1.. run function vred:cloud_sword/cooldown
execute if score @s cloud_cooldown matches 1.. run function vred:cloud_sword/cooldown1