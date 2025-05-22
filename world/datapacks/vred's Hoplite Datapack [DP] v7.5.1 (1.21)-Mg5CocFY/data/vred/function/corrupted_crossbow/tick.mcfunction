execute if score @s corrupted_cooldown matches 1.. run function vred:corrupted_crossbow/cooldown
execute if score @s corrupted_cooldown matches 1.. run function vred:corrupted_crossbow/cooldown1
execute as @s[predicate=!vred:double_crossbow,predicate=vred:corrupted_crossbow,scores={corrupted_cooldown=1..,crossbow1=1..}] at @s run kill @e[type=arrow,distance=..4,nbt={life:0s,inGround:0b},tag=!corrupted_arrow]
execute as @s[predicate=!vred:double_crossbow,predicate=vred:corrupted_crossbow,scores={corrupted_cooldown=..0,crossbow1=1..}] at @s run function vred:corrupted_crossbow/shoot
execute as @s[predicate=vred:double_crossbow,predicate=vred:corrupted_crossbow_right,scores={corrupted_cooldown=1..,crossbow1=1..}] at @s run kill @e[type=arrow,distance=..4,nbt={life:0s,inGround:0b},tag=!corrupted_arrow]
execute as @s[predicate=vred:double_crossbow,predicate=vred:corrupted_crossbow_right,scores={corrupted_cooldown=..0,crossbow1=1..}] at @s run function vred:corrupted_crossbow/shoot
scoreboard players set @s[scores={crossbow1=1..}] crossbow1 0