playsound entity.experience_orb.pickup neutral @s ~ ~ ~ 2
clear @s diamond 8
clear @s redstone_torch 32
clear @s prismarine_crystals 16
clear @s sea_lantern 8
function vred:give/shrink_ray
scoreboard players set @s crafting_cooldown 5
execute if score #sc.enabled item_check matches 1.. run scoreboard players remove #shrink_ray.crafted item_check 1
execute if score #sc.enabled item_check matches 1.. if score #shrink_ray.crafted item_check matches ..0 run tellraw @a ["\uE031 ",{"selector":"@s","color":"dark_gray"},{"text":" has just crafted the ","color":"yellow"},{"text":"Shrink Ray","color":"gold"},{"text":". This weapon cannot be crafted again!","color":"yellow"}]
execute if score #sc.enabled item_check matches 1.. if score #shrink_ray.crafted item_check matches 1 run tellraw @a ["\uE031 ",{"selector":"@s","color":"dark_gray"},{"text":" has just crafted the ","color":"yellow"},{"text":"Shrink Ray","color":"gold"},{"text":". This weapon can still be crafted ","color":"yellow"},{"score":{"name":"#shrink_ray.crafted","objective":"item_check"},"color":"gold"},{"text":" more time.","color":"yellow"}]
execute if score #sc.enabled item_check matches 1.. if score #shrink_ray.crafted item_check matches 2.. run tellraw @a ["\uE031 ",{"selector":"@s","color":"dark_gray"},{"text":" has just crafted the ","color":"yellow"},{"text":"Shrink Ray","color":"gold"},{"text":". This weapon can still be crafted ","color":"yellow"},{"score":{"name":"#shrink_ray.crafted","objective":"item_check"},"color":"gold"},{"text":" more times.","color":"yellow"}]
execute if score #sc.enabled item_check matches 1.. run playsound ui.toast.challenge_complete neutral @s ~ ~ ~ 5