execute as @s[tag=crafting_aiglos] at @s run execute on target if entity @s[scores={crafting_cooldown=0}] run function vred:weapon_crafting/aiglos/check
execute as @s[tag=crafting_artemis_bow] at @s run execute on target if entity @s[scores={crafting_cooldown=0}] run function vred:weapon_crafting/artemis_bow/check
execute as @s[tag=crafting_beehive_blaster] at @s run execute on target if entity @s[scores={crafting_cooldown=0}] run function vred:weapon_crafting/beehive_blaster/check
execute as @s[tag=crafting_cloud_sword] at @s run execute on target if entity @s[scores={crafting_cooldown=0}] run function vred:weapon_crafting/cloud_sword/check
execute as @s[tag=crafting_corrupted_crossbow] at @s run execute on target if entity @s[scores={crafting_cooldown=0}] run function vred:weapon_crafting/corrupted_crossbow/check
execute as @s[tag=crafting_dragon_katana] at @s run execute on target if entity @s[scores={crafting_cooldown=0}] run function vred:weapon_crafting/dragon_katana/check
execute as @s[tag=crafting_emerald_sword] at @s run execute on target if entity @s[scores={crafting_cooldown=0}] run function vred:weapon_crafting/emerald_sword/check
execute as @s[tag=crafting_ender_bow] at @s run execute on target if entity @s[scores={crafting_cooldown=0}] run function vred:weapon_crafting/ender_bow/check
execute as @s[tag=crafting_golem_hammer] at @s run execute on target if entity @s[scores={crafting_cooldown=0}] run function vred:weapon_crafting/golem_hammer/check
execute as @s[tag=crafting_excalibur] at @s run execute on target if entity @s[scores={crafting_cooldown=0}] run function vred:weapon_crafting/excalibur/check
execute as @s[tag=crafting_guardian_cannon] at @s run execute on target if entity @s[scores={crafting_cooldown=0}] run function vred:weapon_crafting/guardian_cannon/check
execute as @s[tag=crafting_harpoon_launcher] at @s run execute on target if entity @s[scores={crafting_cooldown=0}] run function vred:weapon_crafting/harpoon_launcher/check
execute as @s[tag=crafting_ice_horn] at @s run execute on target if entity @s[scores={crafting_cooldown=0}] run function vred:weapon_crafting/ice_horn/check
execute as @s[tag=crafting_lich_staff] at @s run execute on target if entity @s[scores={crafting_cooldown=0}] run function vred:weapon_crafting/lich_staff/check
execute as @s[tag=crafting_mjolnir] at @s run execute on target if entity @s[scores={crafting_cooldown=0}] run function vred:weapon_crafting/mjolnir/check
execute as @s[tag=crafting_poseidon_trident] at @s run execute on target if entity @s[scores={crafting_cooldown=0}] run function vred:weapon_crafting/poseidon_trident/check
execute as @s[tag=crafting_reinforced_elytra] at @s run execute on target if entity @s[scores={crafting_cooldown=0}] run function vred:weapon_crafting/reinforced_elytra/check
execute as @s[tag=crafting_wither_sickles] at @s run execute on target if entity @s[scores={crafting_cooldown=0}] run function vred:weapon_crafting/wither_sickles/check
execute as @s[tag=crafting_magma_club] at @s run execute on target if entity @s[scores={crafting_cooldown=0}] run function vred:weapon_crafting/magma_club/check
execute as @s[tag=crafting_midas_sword] at @s run execute on target if entity @s[scores={crafting_cooldown=0}] run function vred:weapon_crafting/midas_sword/check
execute as @s[tag=crafting_pufferfish_cooldown] at @s run execute on target if entity @s[scores={crafting_cooldown=0}] run function vred:weapon_crafting/pufferfish_cannon/check
execute as @s[tag=crafting_reaper_scythe] at @s run execute on target if entity @s[scores={crafting_cooldown=0}] run function vred:weapon_crafting/reaper_scythe/check
execute as @s[tag=crafting_shadow_blade] at @s run execute on target if entity @s[scores={crafting_cooldown=0}] run function vred:weapon_crafting/shadow_blade/check
execute as @s[tag=crafting_evoker_wand] at @s run execute on target if entity @s[scores={crafting_cooldown=0}] run function vred:weapon_crafting/evoker_wand/check
execute as @s[tag=crafting_sculkweavers_lantern] at @s run execute on target if entity @s[scores={crafting_cooldown=0}] run function vred:weapon_crafting/sculkweavers_lantern/check
execute as @s[tag=crafting_void_staff] at @s run execute on target if entity @s[scores={crafting_cooldown=0}] run function vred:weapon_crafting/void_staff/check
execute as @s[tag=crafting_sonic_crossbow] at @s run execute on target if entity @s[scores={crafting_cooldown=0}] run function vred:weapon_crafting/sonic_crossbow/check
execute as @s[tag=crafting_warpick] at @s run execute on target if entity @s[scores={crafting_cooldown=0}] run function vred:weapon_crafting/warpick/check
execute as @s[tag=crafting_crimson_chainsword] at @s run execute on target if entity @s[scores={crafting_cooldown=0}] run function vred:weapon_crafting/crimson_chainsword/check
execute as @s[tag=crafting_armadillo_detonator] at @s run execute on target if entity @s[scores={crafting_cooldown=0}] run function vred:weapon_crafting/armadillo_detonator/check
execute as @s[tag=crafting_shrink_ray] at @s run execute on target if entity @s[scores={crafting_cooldown=0}] run function vred:weapon_crafting/shrink_ray/check
execute as @s[tag=crafting_grimoire] at @s run execute on target if entity @s[scores={crafting_cooldown=0}] run function vred:weapon_crafting/grimoire/check
execute as @s[tag=crafting_ravager_horn] at @s run execute on target if entity @s[scores={crafting_cooldown=0}] run function vred:weapon_crafting/ravager_horn/check


execute as @s at @s run execute on attacker if entity @s[scores={mjolnir_shift=1..},distance=..8,tag=book_added] if function vred:weapon_crafting/player_check run tag @s remove book_added
scoreboard players operation #temp ID = @s ID
data remove entity @s interaction
data remove entity @s attack