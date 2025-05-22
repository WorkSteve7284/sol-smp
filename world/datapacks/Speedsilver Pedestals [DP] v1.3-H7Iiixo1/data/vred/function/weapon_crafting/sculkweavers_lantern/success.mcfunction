playsound entity.experience_orb.pickup neutral @s ~ ~ ~ 2
clear @s diamond 2
clear @s soul_lantern 1
clear @s sculk_sensor 1
clear @s fishing_rod[!custom_data,!custom_model_data] 1
clear @s sculk_catalyst 1
clear @s gunpowder 1
function vred:give/sculkweavers_lantern
scoreboard players set @s crafting_cooldown 5
execute if score #sc.enabled item_check matches 1.. run scoreboard players remove #sculkweavers_lantern.crafted item_check 1
execute if score #sc.enabled item_check matches 1.. if score #sculkweavers_lantern.crafted item_check matches ..0 run tellraw @a ["\uE031 ",{"selector":"@s","color":"dark_gray"},{"text":" has just crafted the ","color":"yellow"},{"text":"Sculkweaver's Lantern","color":"gold"},{"text":". This weapon cannot be crafted again!","color":"yellow"}]
execute if score #sc.enabled item_check matches 1.. if score #sculkweavers_lantern.crafted item_check matches 1 run tellraw @a ["\uE031 ",{"selector":"@s","color":"dark_gray"},{"text":" has just crafted the ","color":"yellow"},{"text":"Sculkweaver's Lantern","color":"gold"},{"text":". This weapon can still be crafted ","color":"yellow"},{"score":{"name":"#sculkweavers_lantern.crafted","objective":"item_check"},"color":"gold"},{"text":" more time.","color":"yellow"}]
execute if score #sc.enabled item_check matches 1.. if score #sculkweavers_lantern.crafted item_check matches 2.. run tellraw @a ["\uE031 ",{"selector":"@s","color":"dark_gray"},{"text":" has just crafted the ","color":"yellow"},{"text":"Sculkweaver's Lantern","color":"gold"},{"text":". This weapon can still be crafted ","color":"yellow"},{"score":{"name":"#sculkweavers_lantern.crafted","objective":"item_check"},"color":"gold"},{"text":" more times.","color":"yellow"}]
execute if score #sc.enabled item_check matches 1.. run playsound ui.toast.challenge_complete neutral @s ~ ~ ~ 5