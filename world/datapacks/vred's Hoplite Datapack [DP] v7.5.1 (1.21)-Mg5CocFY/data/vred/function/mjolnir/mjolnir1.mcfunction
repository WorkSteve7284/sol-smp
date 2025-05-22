tag @s add mjolnirv1
execute as @s[scores={mjolnir_cooldown=..0}] at @s unless predicate vred:mjolnir_skin anchored eyes run summon minecraft:item_display ^ ^ ^1 {Tags:["mjolnir_trident","vred_projectile"],transformation:[1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,-1.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}
execute as @s[scores={mjolnir_cooldown=..0}] at @s if predicate vred:mjolnir_skin anchored eyes run summon minecraft:item_display ^ ^ ^1 {Tags:["mjolnir_trident","vred_projectile","mjolnir_skin"],transformation:[1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,-1.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}
execute anchored eyes run tp @e[type=minecraft:item_display,tag=mjolnir_trident,nbt=!{item:{id:"minecraft:stone_axe",count:1}}] ^ ^ ^1 ~ ~
scoreboard players operation @e[type=minecraft:item_display,tag=mjolnir_trident,nbt=!{item:{id:"minecraft:stone_axe",count:1}},limit=1] ID = @s ID
scoreboard players operation #temp ID = @s ID
execute in vred:data_void summon armor_stand run function vred:mjolnir/summon
execute if entity @s[predicate=vred:mjolnir_right] run item replace entity @e[type=armor_stand,predicate=vred:id_check,tag=mjolnir_itemkeeper] weapon.mainhand from entity @s weapon.mainhand
execute if entity @s[predicate=vred:mjolnir_left] run item replace entity @e[type=armor_stand,predicate=vred:id_check,tag=mjolnir_itemkeeper] weapon.offhand from entity @s weapon.offhand
execute if entity @s[predicate=vred:mjolnir_right] run item replace entity @s weapon.mainhand with air
execute if entity @s[predicate=vred:mjolnir_left] run item replace entity @s weapon.offhand with air
kill @e[type=arrow,distance=..4,nbt={life:0s,inGround:0b}]
tag @s remove mjolnirv1