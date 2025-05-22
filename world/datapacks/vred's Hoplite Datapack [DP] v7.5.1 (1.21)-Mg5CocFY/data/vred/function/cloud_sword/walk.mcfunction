scoreboard players add @s cloud_markertimer 1
execute as @s[scores={cloud_markertimer=1}] at @s run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:snow_block keep
execute as @s[scores={cloud_markertimer=1..10}] at @s run particle dust{color:[1,1,1],scale:1} ^ ^ ^ 1 -0.5 1 0 25
execute as @s[scores={cloud_markertimer=40}] at @s run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:air replace snow_block
execute as @s[scores={cloud_markertimer=41}] at @s run particle block{block_state:{Name:snow}} ^ ^ ^ 1 0 1 0 100
kill @s[scores={cloud_markertimer=60}]