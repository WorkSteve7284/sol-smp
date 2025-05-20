playsound entity.experience_orb.pickup neutral @s ~ ~ ~ 2
clear @s redstone_torch 2
clear @s armadillo_scute 4
clear @s tnt 1
clear @s diamond 2
function vred:give/armadillo_detonator
scoreboard players set @s crafting_cooldown 5
execute if score #sc.enabled item_check matches 1.. run scoreboard players remove #armadillo_detonator.crafted item_check 1
execute if score #sc.enabled item_check matches 1.. if score #armadillo_detonator.crafted item_check matches ..0 run tellraw @a ["\uE031 ",{"selector":"@s","color":"dark_gray"},{"text":" has just crafted the ","color":"yellow"},{"text":"Armadillo Detonator","color":"gold"},{"text":". This weapon cannot be crafted again!","color":"yellow"}]
execute if score #sc.enabled item_check matches 1.. if score #armadillo_detonator.crafted item_check matches 1 run tellraw @a ["\uE031 ",{"selector":"@s","color":"dark_gray"},{"text":" has just crafted the ","color":"yellow"},{"text":"Armadillo Detonator","color":"gold"},{"text":". This weapon can still be crafted ","color":"yellow"},{"score":{"name":"#armadillo_detonator.crafted","objective":"item_check"},"color":"gold"},{"text":" more time.","color":"yellow"}]
execute if score #sc.enabled item_check matches 1.. if score #armadillo_detonator.crafted item_check matches 2.. run tellraw @a ["\uE031 ",{"selector":"@s","color":"dark_gray"},{"text":" has just crafted the ","color":"yellow"},{"text":"Armadillo Detonator","color":"gold"},{"text":". This weapon can still be crafted ","color":"yellow"},{"score":{"name":"#armadillo_detonator.crafted","objective":"item_check"},"color":"gold"},{"text":" more times.","color":"yellow"}]
execute if score #sc.enabled item_check matches 1.. run playsound ui.toast.challenge_complete neutral @s ~ ~ ~ 5