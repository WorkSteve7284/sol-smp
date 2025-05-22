scoreboard players operation #temp ID = @s ID
clear @a[predicate=vred:id_check] written_book[custom_data={vred_recipe_book:1b}]
scoreboard players operation #temp pedestal_ID = @s pedestal_ID
kill @e[predicate=vred:id_check1,tag=pedestal_display,distance=..5]
function vred:weapon_crafting/pedestal/pedestal2