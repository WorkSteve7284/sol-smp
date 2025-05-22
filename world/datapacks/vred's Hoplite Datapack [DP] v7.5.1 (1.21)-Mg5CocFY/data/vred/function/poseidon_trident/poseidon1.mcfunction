execute if score #skins_vfx.enabled item_check matches 1.. if predicate vred:poseidon_skin anchored eyes positioned ^ ^ ^2 run function vred:shrink_ray/boom_ring_2
execute if score #skins_vfx.enabled item_check matches 1.. if predicate vred:poseidon_skin anchored eyes positioned ^ ^ ^4 run function vred:shrink_ray/boom_ring_3
tag @s add poseidonv1
execute unless predicate vred:poseidon_skin anchored eyes run summon minecraft:item_display ^ ^ ^1 {Tags:["poseidon_trident","vred_projectile"],transformation:[1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,-1.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}
execute if predicate vred:poseidon_skin anchored eyes run summon minecraft:item_display ^ ^ ^1 {Tags:["poseidon_trident","vred_projectile","poseidon_skin"],transformation:[1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,-1.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}
execute as @s at @s run tp @e[type=minecraft:item_display,tag=poseidon_trident,nbt=!{item:{id:"minecraft:bow",count:1}}] ^ ^ ^1 ~ ~
scoreboard players operation @e[type=minecraft:item_display,tag=poseidon_trident,nbt=!{item:{id:"minecraft:bow",count:1}}] ID = @s ID
scoreboard players operation #temp ID = @s ID
execute in vred:data_void summon armor_stand run function vred:poseidon_trident/summon
execute if entity @s[predicate=vred:poseidon_right] run item replace entity @e[type=armor_stand,predicate=vred:id_check,tag=poseidon_itemkeeper] weapon.mainhand from entity @s weapon.mainhand
execute if entity @s[predicate=vred:poseidon_left] run item replace entity @e[type=armor_stand,predicate=vred:id_check,tag=poseidon_itemkeeper] weapon.offhand from entity @s weapon.offhand
execute if entity @s[predicate=vred:poseidon_right] run item replace entity @s weapon.mainhand with air
execute if entity @s[predicate=vred:poseidon_left] run item replace entity @s weapon.offhand with air
function vred:poseidon_trident/poseidon2
tag @s remove poseidonv1