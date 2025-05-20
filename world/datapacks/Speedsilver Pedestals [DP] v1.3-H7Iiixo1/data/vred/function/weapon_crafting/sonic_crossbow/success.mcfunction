playsound entity.experience_orb.pickup neutral @s ~ ~ ~ 2
clear @s disc_fragment_5 8
clear @s echo_shard 4
clear @s pitcher_pod 2
clear @s crossbow[!custom_data,!custom_model_data] 1
clear @s firework_star 8
function vred:give/sonic_crossbow
scoreboard players set @s crafting_cooldown 5
execute if score #sc.enabled item_check matches 1.. run scoreboard players remove #sonic_crossbow.crafted item_check 1
execute if score #sc.enabled item_check matches 1.. if score #sonic_crossbow.crafted item_check matches ..0 run tellraw @a ["\uE031 ",{"selector":"@s","color":"dark_gray"},{"text":" has just crafted the ","color":"yellow"},{"text":"Sonic Crossbow","color":"gold"},{"text":". This weapon cannot be crafted again!","color":"yellow"}]
execute if score #sc.enabled item_check matches 1.. if score #sonic_crossbow.crafted item_check matches 1 run tellraw @a ["\uE031 ",{"selector":"@s","color":"dark_gray"},{"text":" has just crafted the ","color":"yellow"},{"text":"Sonic Crossbow","color":"gold"},{"text":". This weapon can still be crafted ","color":"yellow"},{"score":{"name":"#sonic_crossbow.crafted","objective":"item_check"},"color":"gold"},{"text":" more time.","color":"yellow"}]
execute if score #sc.enabled item_check matches 1.. if score #sonic_crossbow.crafted item_check matches 2.. run tellraw @a ["\uE031 ",{"selector":"@s","color":"dark_gray"},{"text":" has just crafted the ","color":"yellow"},{"text":"Sonic Crossbow","color":"gold"},{"text":". This weapon can still be crafted ","color":"yellow"},{"score":{"name":"#sonic_crossbow.crafted","objective":"item_check"},"color":"gold"},{"text":" more times.","color":"yellow"}]
execute if score #sc.enabled item_check matches 1.. run playsound ui.toast.challenge_complete neutral @s ~ ~ ~ 5