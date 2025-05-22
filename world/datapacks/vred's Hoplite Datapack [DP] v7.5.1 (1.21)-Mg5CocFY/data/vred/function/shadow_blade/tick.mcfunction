#execute as @s[predicate=vred:shadow_blade,scores={shadow_shift=1,shadow_cooldown=0}] at @s run function vred:shadow_blade/activate
#execute as @s[predicate=vred:shadow_blade,scores={shadow_shift=1,shadow_cooldown=1..}] at @s run tellraw @s ["",{"text":"You can't use Shadow Blade's ability now, ","color":"red"},{"score":{"name":"@s","objective":"shadow_cooldown1"},"color":"red"},{"text":"s left for cooldown","color":"red"}]
#scoreboard players set @s[scores={shadow_shift=1..}] shadow_shift 0
execute if score @s shadow_timer matches 20.. run effect give @s speed 1 2 true
execute if score @s shadow_timer matches 20.. run effect give @s invisibility 1 2 true
execute if score @s shadow_timer matches 1 run function vred:shadow_blade/invis/return
execute if score @s shadow_cooldown matches 1.. run function vred:shadow_blade/c
execute if score @s shadow_cooldown matches 1.. run function vred:shadow_blade/c1