execute if score #ender_bow.crafted item_check matches ..0 run function vred:weapon_crafting/pedestal/fail1
execute store result score #ender_eye item_check run clear @s ender_eye 0
execute store result score #bow item_check run clear @s bow[!custom_data,!custom_model_data] 0
execute store result score #dragon_egg item_check run clear @s dragon_egg 0
execute store result score #end_crystal item_check run clear @s end_crystal 0
execute store result score #chorus_flower item_check run clear @s chorus_flower 0

execute if score #ender_bow.crafted item_check matches 1.. run execute if score #ender_eye item_check matches 16.. if score #bow item_check matches 1.. if score #dragon_egg item_check matches 1.. if score #end_crystal item_check matches 2.. if score #chorus_flower item_check matches 4.. run function vred:weapon_crafting/ender_bow/success