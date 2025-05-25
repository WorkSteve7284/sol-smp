#execute as @s[predicate=vred:poseidon,scores={poseidon_attack=1..},predicate=vred:thunder1] at @s if entity @e[distance=..7,nbt={HurtTime:10s}] run function vred:poseidon_trident/hit
#scoreboard players set @s[scores={poseidon_attack=1..}] poseidon_attack 0
execute as @s[predicate=vred:poseidon,scores={poseidon_bow=1..,mjolnir_shift=..0,poseidon_cooldown=0}] at @s anchored eyes run function vred:poseidon_trident/1
execute as @s[predicate=vred:poseidon,scores={poseidon_bow=1..,poseidon_cooldown=0,mjolnir_shift=1..}] at @s anchored eyes run function vred:poseidon_trident/2
execute as @s[predicate=vred:poseidon,scores={poseidon_bow=1..,poseidon_cooldown=1..}] at @s run function vred:poseidon_trident/poseidon2

scoreboard players add @e[tag=riptide_test] rayAge 1
kill @e[scores={rayAge=30..},tag=riptide_test]

execute if score @s poseidon_cooldown matches 1.. run function vred:poseidon_trident/poseidonc
execute if score @s poseidon_cooldown matches 1.. run function vred:poseidon_trident/poseidonc1
scoreboard players operation #temp ID = @s ID
execute as @s at @s rotated as @e[tag=riptide_test,limit=1,sort=nearest,predicate=vred:id_check,type=item_display] run tp @e[type=item_display,tag=riptide_test,limit=1,sort=nearest,predicate=vred:id_check] ~ ~0.5 ~ ~ ~
#execute as @e[type] at @s rotated as @s[scores={mjolnir_timer=0..40},limit=1,sort=nearest] run tp @s[scores={mjolnir_timer=..40},tag=riptide_test,limit=1,sort=nearest] ^ ^-1.5 ^-4 ~ ~
effect give @s[predicate=vred:poseidon] dolphins_grace 15 0 true
effect give @s[predicate=vred:poseidon] water_breathing 15 0 true