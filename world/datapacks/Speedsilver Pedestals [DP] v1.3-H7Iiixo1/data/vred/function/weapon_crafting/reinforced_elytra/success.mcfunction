playsound entity.experience_orb.pickup neutral @s ~ ~ ~ 2
clear @s feather 4
clear @s diamond 2
clear @s leather_chestplate 1
clear @s elytra 1
function vred:give/reinforced_elytra
scoreboard players set @s crafting_cooldown 5
execute if score #sc.enabled item_check matches 1.. run scoreboard players remove #reinforced_elytra.crafted item_check 1
execute if score #sc.enabled item_check matches 1.. if score #reinforced_elytra.crafted item_check matches ..0 run tellraw @a ["\uE031 ",{"selector":"@s","color":"dark_gray"},{"text":" has just crafted the ","color":"yellow"},{"text":"Reinforced Elytra","color":"gold"},{"text":". This weapon cannot be crafted again!","color":"yellow"}]
execute if score #sc.enabled item_check matches 1.. if score #reinforced_elytra.crafted item_check matches 1 run tellraw @a ["\uE031 ",{"selector":"@s","color":"dark_gray"},{"text":" has just crafted the ","color":"yellow"},{"text":"Reinforced Elytra","color":"gold"},{"text":". This weapon can still be crafted ","color":"yellow"},{"score":{"name":"#reinforced_elytra.crafted","objective":"item_check"},"color":"gold"},{"text":" more time.","color":"yellow"}]
execute if score #sc.enabled item_check matches 1.. if score #reinforced_elytra.crafted item_check matches 2.. run tellraw @a ["\uE031 ",{"selector":"@s","color":"dark_gray"},{"text":" has just crafted the ","color":"yellow"},{"text":"Reinforced Elytra","color":"gold"},{"text":". This weapon can still be crafted ","color":"yellow"},{"score":{"name":"#reinforced_elytra.crafted","objective":"item_check"},"color":"gold"},{"text":" more times.","color":"yellow"}]
execute if score #sc.enabled item_check matches 1.. run playsound ui.toast.challenge_complete neutral @s ~ ~ ~ 5