scoreboard players operation #temp ID = @s ID
execute in vred:data_void summon armor_stand run function vred:shadow_blade/invis/summon
execute unless items entity @s armor.head air run item replace entity @e[type=armor_stand,predicate=vred:id_check,tag=shadow_itemkeeper] armor.head from entity @s armor.head
execute unless items entity @s armor.chest air run item replace entity @e[type=armor_stand,predicate=vred:id_check,tag=shadow_itemkeeper] armor.chest from entity @s armor.chest
execute unless items entity @s armor.legs air run item replace entity @e[type=armor_stand,predicate=vred:id_check,tag=shadow_itemkeeper] armor.legs from entity @s armor.legs
execute unless items entity @s armor.feet air run item replace entity @e[type=armor_stand,predicate=vred:id_check,tag=shadow_itemkeeper] armor.feet from entity @s armor.feet

execute unless items entity @s armor.head air run item replace entity @s armor.head with air
execute unless items entity @s armor.chest air run item replace entity @s armor.chest with air
execute unless items entity @s armor.legs air run item replace entity @s armor.legs with air
execute unless items entity @s armor.feet air run item replace entity @s armor.feet with air
