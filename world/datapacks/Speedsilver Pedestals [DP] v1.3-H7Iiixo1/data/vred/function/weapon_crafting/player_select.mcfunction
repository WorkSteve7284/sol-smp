execute as @s[distance=..8,tag=!book_added] run function vred:weapon_crafting/pedestal/give
scoreboard players operation #temp ID = @s ID 
execute as @s[distance=8..] run execute as @s at @s unless entity @e[type=marker,predicate=vred:id_check,tag=pedestal_marker,distance=..8] run clear @s written_book[custom_data={vred_recipe_book:1b}]
#execute as @s[distance=8..] run execute as @s at @s if entity @e[type=marker,predicate=vred:id_check,tag=pedestal_marker,distance=..8] run tag @s remove book_added

#function vred:crafting/player_select1
#execute unless entity @s[nbt={Inventory:[{id:"minecraft:written_book",tag:{vred_recipe_book:1b}}]},distance=..8] run tag @s remove book_added