scoreboard players set @s crate_cooldown 5
execute store result score #xmas item_check run random value 1..34
clear @s recovery_compass[custom_data={crate:4b}] 1
execute if score #xmas item_check matches 1 run function vred:crafting/gerald/aiglos
execute if score #xmas item_check matches 2 run function vred:crafting/gerald/armadillo_detonator
execute if score #xmas item_check matches 3 run function vred:crafting/gerald/artemis_bow
execute if score #xmas item_check matches 4 run function vred:crafting/gerald/beehive_blaster
execute if score #xmas item_check matches 5 run function vred:crafting/gerald/cloud_sword
execute if score #xmas item_check matches 6 run function vred:crafting/gerald/corrupted_crossbow
execute if score #xmas item_check matches 7 run function vred:crafting/gerald/crimson_chainsword
execute if score #xmas item_check matches 8 run function vred:crafting/gerald/dragon_katana
execute if score #xmas item_check matches 9 run function vred:crafting/gerald/emerald_sword
execute if score #xmas item_check matches 10 run function vred:crafting/gerald/ender_bow
execute if score #xmas item_check matches 11 run function vred:crafting/gerald/evoker_wand
execute if score #xmas item_check matches 12 run function vred:crafting/gerald/excalibur
execute if score #xmas item_check matches 13 run function vred:crafting/gerald/golem_hammer
execute if score #xmas item_check matches 14 run function vred:crafting/gerald/grimoire
execute if score #xmas item_check matches 15 run function vred:crafting/gerald/guardian_cannon
execute if score #xmas item_check matches 16 run function vred:crafting/gerald/harpoon_launcher
execute if score #xmas item_check matches 17 run function vred:crafting/gerald/ice_horn
execute if score #xmas item_check matches 18 run function vred:crafting/gerald/lich_staff
execute if score #xmas item_check matches 19 run function vred:crafting/gerald/magma_club
execute if score #xmas item_check matches 20 run function vred:crafting/gerald/midas_sword
execute if score #xmas item_check matches 21 run function vred:crafting/gerald/mjolnir
execute if score #xmas item_check matches 22 run function vred:crafting/gerald/poseidon_trident
execute if score #xmas item_check matches 23 run function vred:crafting/gerald/pufferfish_cannon
execute if score #xmas item_check matches 24 run function vred:crafting/gerald/ravager_horn
execute if score #xmas item_check matches 25 run function vred:crafting/gerald/reaper_scythe
execute if score #xmas item_check matches 26 run function vred:crafting/gerald/reinforced_elytra
execute if score #xmas item_check matches 27 run function vred:crafting/gerald/sculkweavers_lantern
execute if score #xmas item_check matches 28 run function vred:crafting/gerald/shadow_blade
execute if score #xmas item_check matches 29 run function vred:crafting/gerald/shrink_ray
execute if score #xmas item_check matches 30 run function vred:crafting/gerald/sonic_crossbow
execute if score #xmas item_check matches 31 run function vred:crafting/gerald/void_staff
execute if score #xmas item_check matches 32 run function vred:crafting/gerald/warpick
execute if score #xmas item_check matches 33 run function vred:crafting/gerald/wither_sickles
execute if score #xmas item_check matches 34 run function vred:crafting/gerald/hypnosis_staff
scoreboard players reset #xmas item_check