playsound entity.experience_orb.pickup neutral @s ~ ~ ~ 2
clear @s ender_eye 16
clear @s bow[!custom_data,!custom_model_data] 1
clear @s dragon_egg 1 
clear @s chorus_flower 4
clear @s end_crystal 2
function vred:give/ender_bow
scoreboard players set @s crafting_cooldown 5
execute if score #sc.enabled item_check matches 1.. run scoreboard players remove #ender_bow.crafted item_check 1
execute if score #sc.enabled item_check matches 1.. if score #ender_bow.crafted item_check matches ..0 run tellraw @a ["\uE031 ",{"selector":"@s","color":"dark_gray"},{"text":" has just crafted the ","color":"yellow"},{"text":"Ender Bow","color":"gold"},{"text":". This weapon cannot be crafted again!","color":"yellow"}]
execute if score #sc.enabled item_check matches 1.. if score #ender_bow.crafted item_check matches 1 run tellraw @a ["\uE031 ",{"selector":"@s","color":"dark_gray"},{"text":" has just crafted the ","color":"yellow"},{"text":"Ender Bow","color":"gold"},{"text":". This weapon can still be crafted ","color":"yellow"},{"score":{"name":"#ender_bow.crafted","objective":"item_check"},"color":"gold"},{"text":" more time.","color":"yellow"}]
execute if score #sc.enabled item_check matches 1.. if score #ender_bow.crafted item_check matches 2.. run tellraw @a ["\uE031 ",{"selector":"@s","color":"dark_gray"},{"text":" has just crafted the ","color":"yellow"},{"text":"Ender Bow","color":"gold"},{"text":". This weapon can still be crafted ","color":"yellow"},{"score":{"name":"#ender_bow.crafted","objective":"item_check"},"color":"gold"},{"text":" more times.","color":"yellow"}]
execute if score #sc.enabled item_check matches 1.. run playsound ui.toast.challenge_complete neutral @s ~ ~ ~ 5