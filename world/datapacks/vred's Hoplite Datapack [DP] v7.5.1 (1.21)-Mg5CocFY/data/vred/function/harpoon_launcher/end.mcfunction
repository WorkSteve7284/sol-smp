tag @s remove harpoon_tp
effect give @s resistance 2 5 true
#kill @e[type=bat,tag=harpoon_tp1,distance=..2]
kill @e[type=item_display,tag=harpoon_tp1,distance=..2]
#summon marker ~ ~ ~ {Tags:["harpoon_finish"]}