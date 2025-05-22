scoreboard players operation #temp ID = @s ID
execute as @e[distance=..5,predicate=!vred:id_check,predicate=!vred:stuff] at @s run damage @s 5 player_explosion by @a[predicate=vred:id_check,limit=1]
playsound minecraft:entity.generic.explode hostile @a[distance=..30] ~ ~ ~ 5 1.5 1
playsound minecraft:block.glass.break hostile @a[distance=..30] ~ ~ ~ 5 1.5 1
particle block{block_state:ice} ~ ~ ~ 1 1 1 0.1 60
kill @s