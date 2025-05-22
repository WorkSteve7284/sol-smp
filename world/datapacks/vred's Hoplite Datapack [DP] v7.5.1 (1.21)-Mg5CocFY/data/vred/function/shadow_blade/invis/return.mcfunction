
scoreboard players operation #temp ID = @s ID
execute unless items entity @s armor.head * run tag @s add armor_added.head
execute unless items entity @s armor.chest * run tag @s add armor_added.chest
execute unless items entity @s armor.legs * run tag @s add armor_added.legs
execute unless items entity @s armor.feet * run tag @s add armor_added.feet
execute unless items entity @s armor.head * run item replace entity @s armor.head from entity @e[tag=shadow_itemkeeper,predicate=vred:id_check,limit=1] armor.head
execute unless items entity @s armor.chest * run item replace entity @s armor.chest from entity @e[tag=shadow_itemkeeper,predicate=vred:id_check,limit=1] armor.chest
execute unless items entity @s armor.legs * run item replace entity @s armor.legs from entity @e[tag=shadow_itemkeeper,predicate=vred:id_check,limit=1] armor.legs
execute unless items entity @s armor.feet * run item replace entity @s armor.feet from entity @e[tag=shadow_itemkeeper,predicate=vred:id_check,limit=1] armor.feet


data remove block 0 0 0 Items
setblock 0 0 0 yellow_shulker_box
scoreboard players operation #temp ID = @s ID
execute if items entity @s[tag=!armor_added.head] armor.head * positioned 0 0 0 run item replace block ~ ~ ~ container.0 from entity @e[tag=shadow_itemkeeper,predicate=vred:id_check,limit=1] armor.head
execute if items entity @s[tag=!armor_added.chest] armor.chest * positioned 0 0 0 run item replace block ~ ~ ~ container.1 from entity @e[tag=shadow_itemkeeper,predicate=vred:id_check,limit=1] armor.chest
execute if items entity @s[tag=!armor_added.legs] armor.legs * positioned 0 0 0 run item replace block ~ ~ ~ container.2 from entity @e[tag=shadow_itemkeeper,predicate=vred:id_check,limit=1] armor.legs
execute if items entity @s[tag=!armor_added.feet] armor.feet * positioned 0 0 0 run item replace block ~ ~ ~ container.3 from entity @e[tag=shadow_itemkeeper,predicate=vred:id_check,limit=1] armor.feet
loot give @s mine 0 0 0 stick[minecraft:custom_data={drop_contents:1b}]


kill @e[tag=shadow_itemkeeper,predicate=vred:id_check,limit=1]
playsound minecraft:item.trident.return ambient @s ^ ^ ^ 4
scoreboard players set @s[tag=!no_cooldown] shadow_cooldown 400
attribute @s generic.armor modifier remove vred:invisible
tag @s remove armor_added.head
tag @s remove armor_added.chest
tag @s remove armor_added.legs
tag @s remove armor_added.feet