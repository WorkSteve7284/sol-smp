scoreboard players operation #temp ID = @s ID
tag @s add return
tp @s ^ ^0.25 ^
playsound minecraft:item.trident.thunder player @a[distance=..60] ~ ~ ~ 5
execute if entity @s[tag=mjolnir_skin] if score #skins_vfx.enabled item_check matches 1.. run particle heart ~ ~ ~ 2 2 2 1 50 force @a
execute if entity @s[tag=mjolnir_skin] if score #skins_vfx.enabled item_check matches 1.. run particle minecraft:cherry_leaves ~ ~ ~ 2 2 2 2 50 force @a
$execute as @e[distance=..4,predicate=!vred:id_check,predicate=!vred:stuff] at @s run damage @s $(mjolnir) player_explosion by @a[predicate=vred:id_check,limit=1]
summon lightning_bolt