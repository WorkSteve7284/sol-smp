#execute as @s[scores={warpick_mine=1..,warpick_cooldown=0},predicate=vred:warpick] at @s positioned ~ ~1 ~ run function vred:warpick/1
execute if score @s warpick_cooldown matches 1.. run function vred:warpick/c
execute if score @s warpick_cooldown matches 1.. run function vred:warpick/c1
execute as @s[scores={warpick_mine=1..}] run scoreboard players set @s warpick_mine 0

enchant @s[predicate=vred:warpick] vred:warpick