#execute as @s[predicate=vred:magma_club,scores={mjolnir_shift=1..}] at @s if score @s magma_cooldown matches 0 run function vred:magma_club/magma_block
execute if score @s magma_cooldown matches 1.. run function vred:magma_club/cooldown
execute if score @s magma_cooldown matches 1.. run function vred:magma_club/cooldown1
effect give @s[predicate=vred:magma_club] fire_resistance 15 100 true
