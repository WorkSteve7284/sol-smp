execute as @s[predicate=vred:aiglos,scores={aiglos_bow=1..}] anchored eyes run function vred:aiglos/player
execute if score @s aiglos_cooldown matches 1.. run function vred:aiglos/aiglosc
execute if score @s aiglos_cooldown matches 1.. run function vred:aiglos/aiglosc1
scoreboard players set @s aiglos_bow 0
execute as @s[tag=aiglosreturn,tag=1slot_tag] run function vred:aiglos/return

execute as @s[predicate=vred:pedestal,scores={pedestalint1=1..}] at @s anchored eyes run function vred:weapon_crafting/pedestal/pedestal_summon
scoreboard players set @s pedestalint1 0