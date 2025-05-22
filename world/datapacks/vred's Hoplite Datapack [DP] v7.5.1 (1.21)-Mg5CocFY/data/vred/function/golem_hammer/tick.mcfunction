execute as @s at @s store result score @s falldistance run data get entity @s FallDistance
execute as @s[tag=golem_jump,scores={golem_timer=..6}] at @s unless block ~ ~-0.6 ~ #vred:non_solid run function vred:golem_hammer/fall1
execute as @s[tag=golem_jump] at @s if entity @s[scores={falldistance=4..}] unless block ~ ~-4 ~ #vred:non_solid run effect give @s minecraft:slow_falling 2 0 true

execute if score @s golem_cooldown matches 1.. run function vred:golem_hammer/c
execute if score @s golem_cooldown matches 1.. run function vred:golem_hammer/c1