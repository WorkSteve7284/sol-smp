#execute on owner run function vred:harpoon_launcher/launch2
#execute on origin run function vred:harpoon_launcher/launch2
scoreboard players operation #temp ID = @s ID
execute as @a[predicate=vred:id_check] run function vred:harpoon_launcher/launch2
tag @s add harpoon_tp1
#tag @e[type=bat,tag=harpoon_manager,distance=..2] add harpoon_tp1
#kill @s