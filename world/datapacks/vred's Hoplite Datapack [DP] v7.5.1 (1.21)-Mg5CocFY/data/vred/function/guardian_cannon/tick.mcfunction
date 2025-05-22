execute as @s unless entity @s[advancements={vred:guardian_cannon=true},tag=!guardian_cannon] if entity @s[scores={guardian_timer=40..,guardian_cooldown=0}] run function vred:guardian_cannon/c
execute as @s unless entity @s[advancements={vred:guardian_cannon=true}] run scoreboard players set @s guardian_timer 0
advancement revoke @s only vred:guardian_cannon
execute as @s[predicate=vred:guardian_cannon] if entity @s[scores={guardian_timer=140..,guardian_cooldown=0}] run function vred:guardian_cannon/c

execute as @s[predicate=vred:guardian_cannon,scores={guardian_timer=40..,guardian_cooldown=0}] at @s anchored eyes positioned ^ ^ ^0.25 anchored feet run function vred:guardian_cannon/shoot
execute if score @s guardian_cooldown matches 1.. run function vred:guardian_cannon/cooldown
execute if score @s guardian_cooldown matches 1.. run function vred:guardian_cannon/cooldown1
execute as @s[predicate=vred:guardian_cannon,scores={bow1=1..}] at @s run kill @e[type=arrow,distance=..4,nbt={life:0s,inGround:0b}]
scoreboard players set @s bow1 0
execute as @s[predicate=vred:guardian_cannon] at @s if block ~ ~ ~ water run effect give @s dolphins_grace 2 1 true
execute as @s[predicate=vred:guardian_cannon,scores={guardian_damage=1..}] at @s run function vred:guardian_cannon/no_u
scoreboard players set @s guardian_damage 0