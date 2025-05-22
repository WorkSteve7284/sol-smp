data remove block 0 0 0 Items
setblock 0 0 0 yellow_shulker_box
scoreboard players operation #temp ID = @s ID
execute positioned 0 0 0 run item replace block ~ ~ ~ container.0 from entity @e[tag=mjolnir_itemkeeper,predicate=vred:id_check,limit=1] weapon.mainhand
execute positioned 0 0 0 run item replace block ~ ~ ~ container.1 from entity @e[tag=mjolnir_itemkeeper,predicate=vred:id_check,limit=1] weapon.offhand
kill @e[tag=mjolnir_itemkeeper,predicate=vred:id_check,limit=1]
loot give @s mine 0 0 0 stick[minecraft:custom_data={drop_contents:1b}]
playsound minecraft:item.trident.return ambient @s ^ ^ ^ 4
scoreboard players set @s[tag=!no_cooldown] mjolnir_cooldown 160