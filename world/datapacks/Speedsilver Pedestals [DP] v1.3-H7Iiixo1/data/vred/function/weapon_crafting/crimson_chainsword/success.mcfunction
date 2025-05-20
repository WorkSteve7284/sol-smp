playsound entity.experience_orb.pickup neutral @s ~ ~ ~ 2
clear @s nether_wart_block 1
clear @s powered_rail 4
clear @s piglin_head 1
clear @s diamond_sword[!custom_data,!custom_model_data] 1
clear @s diamond 2
function vred:give/crimson_chainsword
scoreboard players set @s crafting_cooldown 5
execute if score #sc.enabled item_check matches 1.. run scoreboard players remove #crimson_chainsword.crafted item_check 1
execute if score #sc.enabled item_check matches 1.. if score #crimson_chainsword.crafted item_check matches ..0 run tellraw @a ["\uE031 ",{"selector":"@s","color":"dark_gray"},{"text":" has just crafted the ","color":"yellow"},{"text":"Crimson Chainsword","color":"gold"},{"text":". This weapon cannot be crafted again!","color":"yellow"}]
execute if score #sc.enabled item_check matches 1.. if score #crimson_chainsword.crafted item_check matches 1 run tellraw @a ["\uE031 ",{"selector":"@s","color":"dark_gray"},{"text":" has just crafted the ","color":"yellow"},{"text":"Crimson Chainsword","color":"gold"},{"text":". This weapon can still be crafted ","color":"yellow"},{"score":{"name":"#crimson_chainsword.crafted","objective":"item_check"},"color":"gold"},{"text":" more time.","color":"yellow"}]
execute if score #sc.enabled item_check matches 1.. if score #crimson_chainsword.crafted item_check matches 2.. run tellraw @a ["\uE031 ",{"selector":"@s","color":"dark_gray"},{"text":" has just crafted the ","color":"yellow"},{"text":"Crimson Chainsword","color":"gold"},{"text":". This weapon can still be crafted ","color":"yellow"},{"score":{"name":"#crimson_chainsword.crafted","objective":"item_check"},"color":"gold"},{"text":" more times.","color":"yellow"}]
execute if score #sc.enabled item_check matches 1.. run playsound ui.toast.challenge_complete neutral @s ~ ~ ~ 5