playsound entity.experience_orb.pickup neutral @s ~ ~ ~ 2
clear @s soul_torch 2
clear @s ender_eye 1
clear @s diamond 2
clear @s obsidian 2
function vred:give/void_staff
scoreboard players set @s crafting_cooldown 5
execute if score #sc.enabled item_check matches 1.. run scoreboard players remove #void_staff.crafted item_check 1
execute if score #sc.enabled item_check matches 1.. if score #void_staff.crafted item_check matches ..0 run tellraw @a ["\uE031 ",{"selector":"@s","color":"dark_gray"},{"text":" has just crafted the ","color":"yellow"},{"text":"Void Staff","color":"gold"},{"text":". This weapon cannot be crafted again!","color":"yellow"}]
execute if score #sc.enabled item_check matches 1.. if score #void_staff.crafted item_check matches 1 run tellraw @a ["\uE031 ",{"selector":"@s","color":"dark_gray"},{"text":" has just crafted the ","color":"yellow"},{"text":"Void Staff","color":"gold"},{"text":". This weapon can still be crafted ","color":"yellow"},{"score":{"name":"#void_staff.crafted","objective":"item_check"},"color":"gold"},{"text":" more time.","color":"yellow"}]
execute if score #sc.enabled item_check matches 1.. if score #void_staff.crafted item_check matches 2.. run tellraw @a ["\uE031 ",{"selector":"@s","color":"dark_gray"},{"text":" has just crafted the ","color":"yellow"},{"text":"Void Staff","color":"gold"},{"text":". This weapon can still be crafted ","color":"yellow"},{"score":{"name":"#void_staff.crafted","objective":"item_check"},"color":"gold"},{"text":" more times.","color":"yellow"}]
execute if score #sc.enabled item_check matches 1.. run playsound ui.toast.challenge_complete neutral @s ~ ~ ~ 5