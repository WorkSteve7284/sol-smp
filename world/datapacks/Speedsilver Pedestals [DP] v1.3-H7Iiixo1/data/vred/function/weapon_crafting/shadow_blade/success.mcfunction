playsound entity.experience_orb.pickup neutral @s ~ ~ ~ 2
clear @s disc_fragment_5 4
clear @s black_candle 8
clear @s obsidian 8
clear @s netherite_sword[!custom_data,!custom_model_data] 1
function vred:give/shadow_blade
scoreboard players set @s crafting_cooldown 5
execute if score #sc.enabled item_check matches 1.. run scoreboard players remove #shadow_blade.crafted item_check 1
execute if score #sc.enabled item_check matches 1.. if score #shadow_blade.crafted item_check matches ..0 run tellraw @a ["\uE031 ",{"selector":"@s","color":"dark_gray"},{"text":" has just crafted the ","color":"yellow"},{"text":"Shadow Blade","color":"gold"},{"text":". This weapon cannot be crafted again!","color":"yellow"}]
execute if score #sc.enabled item_check matches 1.. if score #shadow_blade.crafted item_check matches 1 run tellraw @a ["\uE031 ",{"selector":"@s","color":"dark_gray"},{"text":" has just crafted the ","color":"yellow"},{"text":"Shadow Blade","color":"gold"},{"text":". This weapon can still be crafted ","color":"yellow"},{"score":{"name":"#shadow_blade.crafted","objective":"item_check"},"color":"gold"},{"text":" more time.","color":"yellow"}]
execute if score #sc.enabled item_check matches 1.. if score #shadow_blade.crafted item_check matches 2.. run tellraw @a ["\uE031 ",{"selector":"@s","color":"dark_gray"},{"text":" has just crafted the ","color":"yellow"},{"text":"Shadow Blade","color":"gold"},{"text":". This weapon can still be crafted ","color":"yellow"},{"score":{"name":"#shadow_blade.crafted","objective":"item_check"},"color":"gold"},{"text":" more times.","color":"yellow"}]
execute if score #sc.enabled item_check matches 1.. run playsound ui.toast.challenge_complete neutral @s ~ ~ ~ 5