item replace entity @s weapon.mainhand with air
tag @s remove book_added
#execute align xyz run summon interaction ~0.5 ~1.5 ~0.5 {width:1,height:1,response:1b,Tags:["crafting_empty","crafting_inter","empty_pedestal"]}
scoreboard players operation #temp ID = @s ID
execute align xyz summon marker positioned ~0.5 ~1.5 ~0.5 run function vred:weapon_crafting/pedestal/pedestal1
tag @s add ID_added