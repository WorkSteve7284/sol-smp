data merge entity @s {Tags:["pedestal_marker","empty_pedestal"]}
scoreboard players operation @s ID = #temp ID
function vred:weapon_crafting/pedestal/set_id1
#scoreboard players operation #temp pedestal_ID = @s pedestal_ID
scoreboard players operation #coolio pedestal_ID = @s pedestal_ID
execute positioned ~ ~-1 ~ summon item_display run function vred:weapon_crafting/pedestal/empty
execute positioned ~ ~-0.5 ~ summon interaction run function vred:weapon_crafting/pedestal/empty
tag @s add ID_added
