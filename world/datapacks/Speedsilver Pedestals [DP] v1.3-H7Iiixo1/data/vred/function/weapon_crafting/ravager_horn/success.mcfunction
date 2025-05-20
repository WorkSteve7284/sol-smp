playsound entity.experience_orb.pickup neutral @s ~ ~ ~ 2
clear @s diamond 1
clear @s iron_block 2
clear @s goat_horn 1
clear @s saddle 1
function vred:give/ravager_horn
scoreboard players set @s crafting_cooldown 5
execute if score #sc.enabled item_check matches 1.. run scoreboard players remove #ravager_horn.crafted item_check 1
execute if score #sc.enabled item_check matches 1.. if score #ravager_horn.crafted item_check matches ..0 run tellraw @a ["\uE031 ",{"selector":"@s","color":"dark_gray"},{"text":" has just crafted the ","color":"yellow"},{"text":"Ravager Horn","color":"gold"},{"text":". This weapon cannot be crafted again!","color":"yellow"}]
execute if score #sc.enabled item_check matches 1.. if score #ravager_horn.crafted item_check matches 1 run tellraw @a ["\uE031 ",{"selector":"@s","color":"dark_gray"},{"text":" has just crafted the ","color":"yellow"},{"text":"Ravager Horn","color":"gold"},{"text":". This weapon can still be crafted ","color":"yellow"},{"score":{"name":"#ravager_horn.crafted","objective":"item_check"},"color":"gold"},{"text":" more time.","color":"yellow"}]
execute if score #sc.enabled item_check matches 1.. if score #ravager_horn.crafted item_check matches 2.. run tellraw @a ["\uE031 ",{"selector":"@s","color":"dark_gray"},{"text":" has just crafted the ","color":"yellow"},{"text":"Ravager Horn","color":"gold"},{"text":". This weapon can still be crafted ","color":"yellow"},{"score":{"name":"#ravager_horn.crafted","objective":"item_check"},"color":"gold"},{"text":" more times.","color":"yellow"}]
execute if score #sc.enabled item_check matches 1.. run playsound ui.toast.challenge_complete neutral @s ~ ~ ~ 5