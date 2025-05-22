execute at @s run playsound minecraft:entity.enderman.teleport voice @a[distance=..10] ^ ^ ^ 3
particle portal ~ ~ ~ 0 0.5 0.5 0.5 150
execute as @s at @s on origin run particle portal ~ ~ ~ 0 0.5 0.5 0.5 150
execute on origin run effect give @s resistance 1 5 true
execute on origin run scoreboard players set @s[tag=!no_cooldown] enderbow_cooldown 800
execute on origin run tp @s ~ ~ ~
execute as @s at @s on origin run playsound minecraft:entity.enderman.teleport voice @a[distance=..10] ^ ^ ^ 3
kill @s