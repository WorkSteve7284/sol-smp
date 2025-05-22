execute if score #skins_vfx.enabled item_check matches 1.. unless predicate vred:shadow_blade_skin run particle smoke ~ ~0.5 ~ 0.5 0.5 0.5 0.1 100
execute if score #skins_vfx.enabled item_check matches 1.. if predicate vred:shadow_blade_skin run particle minecraft:sculk_charge_pop ~ ~0.25 ~ 0.5 0 0.5 0.1 50
execute if score #skins_vfx.enabled item_check matches 1.. if predicate vred:shadow_blade_skin run particle minecraft:sculk_soul ~ ~0.5 ~ 0.5 0.5 0.5 0.15 30
execute if score #skins_vfx.enabled item_check matches ..0 run particle smoke ~ ~0.5 ~ 0.5 0.5 0.5 0.1 100
scoreboard players operation @s shadow_timer = #shadow_blade hoplite_weapontimer
function vred:shadow_blade/invis/mjolnir1
$attribute @s generic.armor modifier add vred:invisible $(invis) add_value