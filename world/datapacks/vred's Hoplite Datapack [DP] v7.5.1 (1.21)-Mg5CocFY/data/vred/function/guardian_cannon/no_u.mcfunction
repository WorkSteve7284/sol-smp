execute as @e[predicate=!vred:guardian_cannon,distance=..4] at @s run damage @s 4 player_attack by @p[predicate=vred:guardian_cannon,scores={guardian_damage=1..},limit=1,sort=nearest]
execute if entity @s[scores={guardian_timer=1..}] run scoreboard players set @s guardian_timer 0
