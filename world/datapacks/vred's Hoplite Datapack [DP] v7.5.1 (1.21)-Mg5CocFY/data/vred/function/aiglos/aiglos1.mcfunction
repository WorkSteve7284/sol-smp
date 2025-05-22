tag @s add aiglosv1
execute as @s[scores={aiglos_cooldown=..0}] at @s unless predicate vred:aiglos_skin anchored eyes run summon item_display ^ ^ ^1 {Tags:["aiglos_trident","vred_projectile"],transformation:[1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,-1.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}
execute as @s[scores={aiglos_cooldown=..0}] at @s if predicate vred:aiglos_skin anchored eyes run summon item_display ^ ^ ^1 {Tags:["aiglos_trident","vred_projectile","aiglos_skin"],transformation:[1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,-1.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}
execute as @s at @s run tp @e[type=minecraft:item_display,tag=vred_projectile,tag=aiglos_trident,nbt=!{item:{id:"minecraft:bow",count:1}}] ^ ^ ^1 ~ ~
scoreboard players operation @e[type=minecraft:item_display,tag=vred_projectile,tag=aiglos_trident,nbt=!{item:{id:"minecraft:bow",count:1}}] ID = @s ID
scoreboard players operation #temp ID = @s ID
execute in vred:data_void summon armor_stand run function vred:aiglos/summon
execute if entity @s[predicate=vred:aiglos_right] run item replace entity @e[type=armor_stand,predicate=vred:id_check,tag=aiglos_itemkeeper] weapon.mainhand from entity @s weapon.mainhand
execute if entity @s[predicate=vred:aiglos_left] run item replace entity @e[type=armor_stand,predicate=vred:id_check,tag=aiglos_itemkeeper] weapon.mainhand from entity @s weapon.offhand
execute if entity @s[predicate=vred:aiglos_right] run item replace entity @s weapon.mainhand with air
execute if entity @s[predicate=vred:aiglos_left] run item replace entity @s weapon.offhand with air
kill @e[type=arrow,distance=..4,nbt={life:0s,inGround:0b}]
give @s[gamemode=survival] arrow
give @s[gamemode=adventure] arrow
tag @s remove aiglosv1
