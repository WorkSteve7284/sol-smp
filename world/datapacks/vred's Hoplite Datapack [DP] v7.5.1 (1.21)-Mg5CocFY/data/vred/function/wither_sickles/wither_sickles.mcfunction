#execute as @s[predicate=vred:wither_sickles,scores={wither_sickles_used=1..},predicate=vred:wither] at @s if entity @e[distance=..7,nbt={HurtTime:10s}] run function vred:wither_sickles/hit
function vred:wither_sickles/display
execute if score @s wither_sickles_cooldown matches 1.. run function vred:wither_sickles/cooldown
execute if score @s wither_sickles_cooldown matches 1.. run function vred:wither_sickles/cooldown1
effect clear @s[predicate=vred:wither_sickles] wither
scoreboard players set @s[scores={wither_sickles_display=2..}] wither_sickles_display 0