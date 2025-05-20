playsound entity.experience_orb.pickup neutral @s ~ ~ ~ 2
clear @s wither_skeleton_skull 1
clear @s obsidian 8
clear @s diamond_hoe[!custom_data,!custom_model_data] 1
clear @s diamond 16
clear @s bone 16
function vred:give/reaper_scythe
scoreboard players set @s crafting_cooldown 5
execute if score #sc.enabled item_check matches 1.. run scoreboard players remove #reaper_scythe.crafted item_check 1
execute if score #sc.enabled item_check matches 1.. if score #reaper_scythe.crafted item_check matches ..0 run tellraw @a ["\uE031 ",{"selector":"@s","color":"dark_gray"},{"text":" has just crafted the ","color":"yellow"},{"text":"Reaper Scythe","color":"gold"},{"text":". This weapon cannot be crafted again!","color":"yellow"}]
execute if score #sc.enabled item_check matches 1.. if score #reaper_scythe.crafted item_check matches 1 run tellraw @a ["\uE031 ",{"selector":"@s","color":"dark_gray"},{"text":" has just crafted the ","color":"yellow"},{"text":"Reaper Scythe","color":"gold"},{"text":". This weapon can still be crafted ","color":"yellow"},{"score":{"name":"#reaper_scythe.crafted","objective":"item_check"},"color":"gold"},{"text":" more time.","color":"yellow"}]
execute if score #sc.enabled item_check matches 1.. if score #reaper_scythe.crafted item_check matches 2.. run tellraw @a ["\uE031 ",{"selector":"@s","color":"dark_gray"},{"text":" has just crafted the ","color":"yellow"},{"text":"Reaper Scythe","color":"gold"},{"text":". This weapon can still be crafted ","color":"yellow"},{"score":{"name":"#reaper_scythe.crafted","objective":"item_check"},"color":"gold"},{"text":" more times.","color":"yellow"}]
execute if score #sc.enabled item_check matches 1.. run playsound ui.toast.challenge_complete neutral @s ~ ~ ~ 5