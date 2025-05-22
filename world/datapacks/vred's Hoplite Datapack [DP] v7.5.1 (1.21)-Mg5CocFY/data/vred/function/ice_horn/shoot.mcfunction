execute as @s at @s anchored eyes run summon item_display ^ ^ ^1 {Tags:["iceshard","vred_projectile"]}
execute as @s at @s run tp @e[type=minecraft:item_display,tag=iceshard,nbt=!{item:{id:"minecraft:ice",count:1}},distance=..2] ^ ^ ^1 ~ ~
scoreboard players operation @e[type=minecraft:item_display,tag=iceshard,nbt=!{item:{id:"minecraft:ice",count:1}},distance=..2] ID = @s ID
#scoreboard players set @s[tag=!no_cooldown] lich_cooldown 400