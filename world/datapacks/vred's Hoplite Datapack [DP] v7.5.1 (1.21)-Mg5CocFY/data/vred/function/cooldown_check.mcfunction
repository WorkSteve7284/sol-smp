execute as @s unless score @s katan_cooldown = @s katan_cooldown run scoreboard players set @s katan_cooldown 0
execute as @s unless score @s lich_cooldown = @s lich_cooldown run scoreboard players set @s lich_cooldown 0
execute as @s unless score @s shadow_cooldown = @s shadow_cooldown run scoreboard players set @s shadow_cooldown 0
execute as @s unless score @s sonic_cooldown = @s sonic_cooldown run scoreboard players set @s sonic_cooldown 0
execute as @s unless score @s warpick_cooldown = @s warpick_cooldown run scoreboard players set @s warpick_cooldown 0
execute as @s unless score @s magma_cooldown = @s magma_cooldown run scoreboard players set @s magma_cooldown 0
execute as @s unless score @s reaper_cooldown = @s reaper_cooldown run scoreboard players set @s reaper_cooldown 0
execute as @s unless score @s aiglos_cooldown = @s aiglos_cooldown run scoreboard players set @s aiglos_cooldown 0
execute as @s unless score @s mjolnir_cooldown = @s mjolnir_cooldown run scoreboard players set @s mjolnir_cooldown 0
execute as @s unless score @s pufferfish_cooldown = @s pufferfish_cooldown run scoreboard players set @s pufferfish_cooldown 0
execute as @s unless score @s beehive_cooldown = @s beehive_cooldown run scoreboard players set @s beehive_cooldown 0
execute as @s unless score @s enderbow_cooldown = @s enderbow_cooldown run scoreboard players set @s enderbow_cooldown 0
execute as @s unless score @s poseidon_cooldown = @s poseidon_cooldown run scoreboard players set @s poseidon_cooldown 0
execute as @s unless score @s wither_sickles_cooldown = @s wither_sickles_cooldown run scoreboard players set @s wither_sickles_cooldown 0
execute as @s unless score @s wither_sickles_display = @s wither_sickles_display run scoreboard players set @s wither_sickles_display 0
execute as @s unless score @s wither_sickles_help = @s wither_sickles_help run scoreboard players set @s wither_sickles_help 0
execute as @s unless score @s reinforcede_cooldown = @s reinforcede_cooldown run scoreboard players set @s reinforcede_cooldown 0
execute as @s unless score @s corrupted_cooldown = @s corrupted_cooldown run scoreboard players set @s corrupted_cooldown 0
execute as @s unless score @s guardian_cooldown = @s guardian_cooldown run scoreboard players set @s guardian_cooldown 0
execute as @s unless score @s cloud_cooldown = @s cloud_cooldown run scoreboard players set @s cloud_cooldown 0
execute as @s unless score @s harpoon_cooldown = @s harpoon_cooldown run scoreboard players set @s harpoon_cooldown 0
execute as @s unless score @s void_cooldown = @s void_cooldown run scoreboard players set @s void_cooldown 0
execute as @s unless score @s void_stafftimer1 = @s void_stafftimer1 run scoreboard players set @s void_stafftimer1 0
execute as @s unless score @s void_staffcounter = @s void_staffcounter run scoreboard players set @s void_staffcounter 0
execute as @s unless score @s excalibur_cooldown = @s excalibur_cooldown run scoreboard players set @s excalibur_cooldown 0
execute as @s unless score @s golem_cooldown = @s golem_cooldown run scoreboard players set @s golem_cooldown 0
execute as @s unless score @s ihorn_cooldown = @s ihorn_cooldown run scoreboard players set @s ihorn_cooldown 0
execute as @s unless score @s shrink_cooldown = @s shrink_cooldown run scoreboard players set @s shrink_cooldown 0
execute as @s unless score @s excalibur_active = @s excalibur_active run scoreboard players set @s excalibur_active 0
execute as @s unless score @s ravager_cooldown = @s ravager_cooldown run scoreboard players set @s ravager_cooldown 0
execute as @s unless score @s crimson_cooldown = @s crimson_cooldown run scoreboard players set @s crimson_cooldown 0
execute as @s unless score @s armadillo_cooldown = @s armadillo_cooldown run scoreboard players set @s armadillo_cooldown 0
execute as @s unless score @s armadillo_count = @s armadillo_count run scoreboard players set @s armadillo_count 0
execute as @s unless score @s armadexpl_cooldown = @s armadexpl_cooldown run scoreboard players set @s armadexpl_cooldown 0
execute as @s unless score @s sculweaver_cooldown = @s sculweaver_cooldown run scoreboard players set @s sculweaver_cooldown 0
execute as @s unless score @s evoker_cooldown = @s evoker_cooldown run scoreboard players set @s evoker_cooldown 0
execute as @s unless score @s crafting_cooldown = @s crafting_cooldown run scoreboard players set @s crafting_cooldown 0
execute as @s unless score @s shadow_timer = @s shadow_timer run scoreboard players set @s shadow_timer 0
execute as @s unless score @s lich_charges = @s lich_charges run scoreboard players set @s lich_charges 0
execute as @s unless score @s crate_cooldown = @s crate_cooldown run scoreboard players set @s crate_cooldown 0
execute as @s unless score @s hypnosis_cooldown = @s hypnosis_cooldown run scoreboard players set @s hypnosis_cooldown 0
execute as @s unless score @s hypnosis_active = @s hypnosis_active run scoreboard players set @s hypnosis_active 0

execute unless score #damage sonic_crossbow_config = #damage sonic_crossbow_config run scoreboard players set #damage sonic_crossbow_config 10
execute unless score #damage_range sonic_crossbow_config = #damage_range sonic_crossbow_config run scoreboard players set #damage_range sonic_crossbow_config 10
execute unless score #explosion sonic_crossbow_config = #explosion sonic_crossbow_config run scoreboard players set #explosion sonic_crossbow_config 1
execute unless score #sculk sonic_crossbow_config = #sculk sonic_crossbow_config run scoreboard players set #sculk sonic_crossbow_config 30

execute unless score #damage_range lich_staff_config = #damage_range lich_staff_config run scoreboard players set #damage_range lich_staff_config 5
execute unless score #ice lich_staff_config = #ice lich_staff_config run scoreboard players set #ice lich_staff_config 4


execute unless score #kills midas_sword_config = #kills midas_sword_config run scoreboard players set #kills midas_sword_config 0
execute as @s unless score @s cloud_help = @s cloud_help run scoreboard players set @s cloud_help 0
execute as @s unless score @s pufferfish_help = @s pufferfish_help run scoreboard players set @s pufferfish_help 0
execute as @s unless score @s void_stafftimer2 = @s void_stafftimer2 run scoreboard players set @s void_stafftimer2 0


function vred:timer_config
function vred:damage_config
function vred:single_crafting
advancement revoke @s only vred:tick1