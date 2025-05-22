playsound entity.experience_orb.pickup neutral @s ~ ~ ~ 2
clear @s diamond 8
clear @s pufferfish 12
clear @s iron_ingot 32
clear @s tnt 4
function vred:give/pufferfish_cannon
scoreboard players set @s crafting_cooldown 5
execute if score #sc.enabled item_check matches 1.. run scoreboard players remove #pufferfish_cannon.crafted item_check 1
execute if score #sc.enabled item_check matches 1.. if score #pufferfish_cannon.crafted item_check matches ..0 run tellraw @a ["\uE031 ",{"selector":"@s","color":"dark_gray"},{"text":" has just crafted the ","color":"yellow"},{"text":"Pufferfish Cannon","color":"gold"},{"text":". This weapon cannot be crafted again!","color":"yellow"}]
execute if score #sc.enabled item_check matches 1.. if score #pufferfish_cannon.crafted item_check matches 1 run tellraw @a ["\uE031 ",{"selector":"@s","color":"dark_gray"},{"text":" has just crafted the ","color":"yellow"},{"text":"Pufferfish Cannon","color":"gold"},{"text":". This weapon can still be crafted ","color":"yellow"},{"score":{"name":"#pufferfish_cannon.crafted","objective":"item_check"},"color":"gold"},{"text":" more time.","color":"yellow"}]
execute if score #sc.enabled item_check matches 1.. if score #pufferfish_cannon.crafted item_check matches 2.. run tellraw @a ["\uE031 ",{"selector":"@s","color":"dark_gray"},{"text":" has just crafted the ","color":"yellow"},{"text":"Pufferfish Cannon","color":"gold"},{"text":". This weapon can still be crafted ","color":"yellow"},{"score":{"name":"#pufferfish_cannon.crafted","objective":"item_check"},"color":"gold"},{"text":" more times.","color":"yellow"}]
execute if score #sc.enabled item_check matches 1.. run playsound ui.toast.challenge_complete neutral @s ~ ~ ~ 5