execute as @s[distance=..8,tag=!pedestal_editing] run function vred:crafting/pedestal/give1
execute as @s[distance=8..] run clear @s written_book[custom_data={vred_recipe_book:1b}]
execute as @s[distance=8..] run tag @s remove pedestal_editing
#execute unless entity @s[nbt={Inventory:[{id:"minecraft:written_book",tag:{vred_recipe_book:1b}}]},distance=..8] run tag @s remove pedestal_editing