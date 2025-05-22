execute if data entity @s {FallFlying:true} run tag @s add fall
execute as @s[tag=fall,predicate=vred:reinforced_elytra] at @s unless block ^ ^ ^ water run particle dust{color:[0.01,0.37,0.41],scale:3} ~ ~ ~ 0.1 0.1 0.1 0.05 3
execute as @s[tag=fall,predicate=vred:reinforced_elytra] at @s unless block ^ ^ ^ water run particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0.07 5
execute as @s[tag=fall,predicate=vred:reinforced_elytra] at @s unless block ^ ^ ^ water run effect give @s resistance 1 5
execute as @s[tag=fall,predicate=vred:reinforced_elytra] at @s unless block ^ ^ ^ water run scoreboard players add @s reinforcede_tick 1
execute as @s[scores={reinforcede_tick=40..},predicate=vred:reinforced_elytra] at @s unless block ^ ^ ^1.5 air run effect give @s resistance 1 255 true
execute as @s[scores={reinforcede_tick=40..},predicate=vred:reinforced_elytra] at @s unless block ^ ^ ^1 air run function vred:reinforced_elytra/explosion1
execute as @s[tag=!fall] at @s run scoreboard players set @s reinforcede_tick 0
execute as @s[tag=fall,predicate=vred:reinforced_elytra,scores={mjolnir_shift=1..,reinforcede_cooldown=0}] at @s run function vred:reinforced_elytra/rocket_boost
tag @s remove fall
execute if score @s reinforcede_cooldown matches 1.. run function vred:reinforced_elytra/cooldown
execute if score @s reinforcede_cooldown matches 1.. run function vred:reinforced_elytra/cooldown1