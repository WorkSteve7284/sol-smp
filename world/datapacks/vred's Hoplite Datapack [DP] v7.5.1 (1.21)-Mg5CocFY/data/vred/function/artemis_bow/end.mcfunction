summon lightning_bolt
particle dust{color:[1.00,0.88,0.31],scale:1} ~ ~1 ~ 1 1 1 0.2 150
execute if entity @s[tag=artemis_arrow_skin] if score #skins_vfx.enabled item_check matches 1.. run particle heart ~ ~ ~ 2 2 2 2 50
kill @s