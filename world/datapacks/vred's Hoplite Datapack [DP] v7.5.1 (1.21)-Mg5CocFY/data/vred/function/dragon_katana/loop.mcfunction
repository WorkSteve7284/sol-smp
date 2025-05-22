execute if block ^ ^ ^0.25 #vred:non_solid run tp @s ^ ^ ^0.25
execute if score #skins_vfx.enabled item_check matches 1.. if predicate vred:dragon_katana_skin run scoreboard players add #endtp_particle ray_steps 1
execute if score #skins_vfx.enabled item_check matches 1.. if predicate vred:dragon_katana_skin run particle dragon_breath ~ ~ ~ 0 0 0 0 2
execute if score #skins_vfx.enabled item_check matches 1.. if predicate vred:dragon_katana_skin run particle minecraft:cherry_leaves ~ ~ ~ 0.5 0.5 0.5 0.2 6
scoreboard players remove @s dragon_katana 1
execute if score @s dragon_katana matches 1.. run execute as @s at @s run function vred:dragon_katana/loop