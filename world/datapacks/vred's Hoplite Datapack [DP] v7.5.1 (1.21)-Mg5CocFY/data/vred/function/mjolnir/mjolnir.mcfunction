#execute as @s[predicate=vred:mjolnir,scores={mjolnir_used=1..}] at @s if entity @e[distance=..7,nbt={HurtTime:10s}] run function vred:mjolnir/mjolnir_hit
#scoreboard players set @s[scores={mjolnir_used=1..}] mjolnir_used 0

execute if score @s mjolnir_cooldown matches 1.. run function vred:mjolnir/mjolnirc
execute if score @s mjolnir_cooldown matches 1.. run function vred:mjolnir/mjolnirc1
