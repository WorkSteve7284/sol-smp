# absolutely not done
function vred:cooldown
# done
#function vred:cooldown_check
# working somehow
function vred:interaction_help

execute as @s if score @s ID = @s ID run tag @s add id.added
execute as @s unless entity @s[tag=id.added] run advancement revoke @s only vred:first_join
execute as @s unless entity @s[tag=team.joined] run advancement revoke @s only vred:first_join1
function vred:hoplite_recipes/tick

## folder rework required
# done
function vred:sonic_crossbowv2/sonic_crossbow
# done
function vred:reaper_scythe/reaper_scythe
# done
function vred:emerald_sword/emerald_sword
# done
function vred:magma_club/tick
# done
function vred:dragon_katana/dragon_katana
# done
function vred:artemis_bow/artemis_bow
# done
function vred:midas_sword/tick

function vred:shadow_blade/tick
#done
function vred:lich_staffv2/lichstaffv2

function vred:warpick/tick

# done
function vred:aiglos/aiglos
# done
function vred:pufferfish_cannon/pufferfish_cannon
# done
function vred:mjolnir/mjolnir
# fuck em bees
function vred:beehive_blaster/beehive_blaster
# done
function vred:ender_bow/ender_bow1
# done
function vred:poseidon_trident/poseidon
# done, not satisfied
function vred:wither_sickles/wither_sickles
# done
function vred:reinforced_elytra/tick
# done
function vred:corrupted_crossbow/tick
# done
function vred:guardian_cannon/tick
# done
function vred:cloud_sword/tick
# done
function vred:harpoon_launcher/tick
# hell naw
function vred:void_staff/tick

#
function vred:excalibur/tick
function vred:golem_hammer/tick
function vred:ice_horn/tick
function vred:shrink_ray/tick

#v7
function vred:crimson_chainsword/tick
function vred:armadillo_detonator/tick
function vred:sculkweavers_lantern/tick
function vred:evoker_wand/tick
function vred:ravager_horn/tick
function vred:hypnosis_staff/tick

scoreboard players enable @s selected.cancel
scoreboard players enable @s selected.weapon
function vred:hoplite_health/tick
tag @s[scores={left=1..}] remove joined
execute as @s[tag=!joined] run tellraw @s {"text": "vred's Hoplite Datapack has been loaded, enjoy!","bold": true}
tag @s add joined
scoreboard players reset @s left

effect give @s[tag=perfect_experience] saturation infinite 255 true
effect give @s[tag=perfect_experience] night_vision infinite 255 true