scoreboard players set @s crate_cooldown 5
scoreboard players reset #skin item_check
execute store result score #skin item_check run random value 1..14
clear @s recovery_compass[custom_data={crate:3b}] 1
execute if score #skin item_check matches 1 run function vred:crafting/skins/aiglos
execute if score #skin item_check matches 2 run function vred:crafting/skins/dragon_katana
execute if score #skin item_check matches 3 run function vred:crafting/skins/evoker_wand
execute if score #skin item_check matches 4 run function vred:crafting/skins/excalibur
execute if score #skin item_check matches 5 run function vred:crafting/skins/golem_hammer
execute if score #skin item_check matches 6 run function vred:crafting/skins/magma_club
execute if score #skin item_check matches 7 run function vred:crafting/skins/poseidon_trident
execute if score #skin item_check matches 8 run function vred:crafting/skins/pufferfish_cannon
execute if score #skin item_check matches 9 run function vred:crafting/skins/sculkweavers_lantern
execute if score #skin item_check matches 10 run function vred:crafting/skins/shadow_blade
execute if score #skin item_check matches 11 run function vred:crafting/skins/shrink_ray
execute if score #skin item_check matches 12 run function vred:crafting/skins/warpick
execute if score #skin item_check matches 13 run function vred:crafting/skins/mjolnir
execute if score #skin item_check matches 14 run function vred:crafting/skins/artemis_bow
scoreboard players reset #skin item_check