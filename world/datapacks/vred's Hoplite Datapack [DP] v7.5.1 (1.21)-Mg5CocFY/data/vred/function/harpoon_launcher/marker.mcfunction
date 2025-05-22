scoreboard players add @s harpoon_timer 1
execute as @s[scores={harpoon_timer=2..}] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:lead",Count:1b}},distance=..2]
kill @s[scores={harpoon_timer=10..}]