execute store result score #armor_hit item_check run random value 1..4
execute if score #armor_hit item_check matches 1 run item modify entity @s armor.head vred:armor_crit
execute if score #armor_hit item_check matches 2 run item modify entity @s armor.chest vred:armor_crit
execute if score #armor_hit item_check matches 3 run item modify entity @s armor.legs vred:armor_crit
execute if score #armor_hit item_check matches 4 run item modify entity @s armor.feet vred:armor_crit
execute if score #armor_hit item_check matches 1.. run item modify entity @s armor.body vred:armor_crit