playsound entity.experience_orb.pickup neutral @s ~ ~ ~ 2
clear @s diamond_horse_armor 1
clear @s diamond 2
clear @s goat_horn 1
clear @s powder_snow_bucket 1
function vred:give/ice_horn
scoreboard players set @s crafting_cooldown 5
execute if score #sc.enabled item_check matches 1.. run scoreboard players remove #ice_horn.crafted item_check 1
execute if score #sc.enabled item_check matches 1.. if score #ice_horn.crafted item_check matches ..0 run tellraw @a ["\uE031 ",{"selector":"@s","color":"dark_gray"},{"text":" has just crafted the ","color":"yellow"},{"text":"Horn of Winter","color":"gold"},{"text":". This weapon cannot be crafted again!","color":"yellow"}]
execute if score #sc.enabled item_check matches 1.. if score #ice_horn.crafted item_check matches 1 run tellraw @a ["\uE031 ",{"selector":"@s","color":"dark_gray"},{"text":" has just crafted the ","color":"yellow"},{"text":"Horn of Winter","color":"gold"},{"text":". This weapon can still be crafted ","color":"yellow"},{"score":{"name":"#ice_horn.crafted","objective":"item_check"},"color":"gold"},{"text":" more time.","color":"yellow"}]
execute if score #sc.enabled item_check matches 1.. if score #ice_horn.crafted item_check matches 2.. run tellraw @a ["\uE031 ",{"selector":"@s","color":"dark_gray"},{"text":" has just crafted the ","color":"yellow"},{"text":"Horn of Winter","color":"gold"},{"text":". This weapon can still be crafted ","color":"yellow"},{"score":{"name":"#ice_horn.crafted","objective":"item_check"},"color":"gold"},{"text":" more times.","color":"yellow"}]
execute if score #sc.enabled item_check matches 1.. run playsound ui.toast.challenge_complete neutral @s ~ ~ ~ 5