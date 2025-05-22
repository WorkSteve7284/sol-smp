playsound entity.experience_orb.pickup neutral @s ~ ~ ~ 2
clear @s nether_wart 16
clear @s fermented_spider_eye 12
clear @s crossbow 1
clear @s diamond 16
function vred:give/corrupted_crossbow
scoreboard players set @s crafting_cooldown 5
execute if score #sc.enabled item_check matches 1.. run scoreboard players remove #corrupted_crossbow.crafted item_check 1
execute if score #sc.enabled item_check matches 1.. if score #corrupted_crossbow.crafted item_check matches ..0 run tellraw @a ["\uE031 ",{"selector":"@s","color":"dark_gray"},{"text":" has just crafted the ","color":"yellow"},{"text":"Corrupted Crossbow","color":"gold"},{"text":". This weapon cannot be crafted again!","color":"yellow"}]
execute if score #sc.enabled item_check matches 1.. if score #corrupted_crossbow.crafted item_check matches 1 run tellraw @a ["\uE031 ",{"selector":"@s","color":"dark_gray"},{"text":" has just crafted the ","color":"yellow"},{"text":"Corrupted Crossbow","color":"gold"},{"text":". This weapon can still be crafted ","color":"yellow"},{"score":{"name":"#corrupted_crossbow.crafted","objective":"item_check"},"color":"gold"},{"text":" more time.","color":"yellow"}]
execute if score #sc.enabled item_check matches 1.. if score #corrupted_crossbow.crafted item_check matches 2.. run tellraw @a ["\uE031 ",{"selector":"@s","color":"dark_gray"},{"text":" has just crafted the ","color":"yellow"},{"text":"Corrupted Crossbow","color":"gold"},{"text":". This weapon can still be crafted ","color":"yellow"},{"score":{"name":"#corrupted_crossbow.crafted","objective":"item_check"},"color":"gold"},{"text":" more times.","color":"yellow"}]
execute if score #sc.enabled item_check matches 1.. run playsound ui.toast.challenge_complete neutral @s ~ ~ ~ 5