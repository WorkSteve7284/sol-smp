playsound entity.experience_orb.pickup neutral @s ~ ~ ~ 2
clear @s enchanted_golden_apple 1
clear @s quartz 2
clear @s diamond_sword[!custom_data,!custom_model_data] 1
clear @s golden_apple 1
function vred:give/midas_sword
scoreboard players set @s crafting_cooldown 5
execute if score #sc.enabled item_check matches 1.. run scoreboard players remove #midas_sword.crafted item_check 1
execute if score #sc.enabled item_check matches 1.. if score #midas_sword.crafted item_check matches ..0 run tellraw @a ["\uE031 ",{"selector":"@s","color":"dark_gray"},{"text":" has just crafted the ","color":"yellow"},{"text":"Midas Sword","color":"gold"},{"text":". This weapon cannot be crafted again!","color":"yellow"}]
execute if score #sc.enabled item_check matches 1.. if score #midas_sword.crafted item_check matches 1 run tellraw @a ["\uE031 ",{"selector":"@s","color":"dark_gray"},{"text":" has just crafted the ","color":"yellow"},{"text":"Midas Sword","color":"gold"},{"text":". This weapon can still be crafted ","color":"yellow"},{"score":{"name":"#midas_sword.crafted","objective":"item_check"},"color":"gold"},{"text":" more time.","color":"yellow"}]
execute if score #sc.enabled item_check matches 1.. if score #midas_sword.crafted item_check matches 2.. run tellraw @a ["\uE031 ",{"selector":"@s","color":"dark_gray"},{"text":" has just crafted the ","color":"yellow"},{"text":"Midas Sword","color":"gold"},{"text":". This weapon can still be crafted ","color":"yellow"},{"score":{"name":"#midas_sword.crafted","objective":"item_check"},"color":"gold"},{"text":" more times.","color":"yellow"}]
execute if score #sc.enabled item_check matches 1.. run playsound ui.toast.challenge_complete neutral @s ~ ~ ~ 5