scoreboard players operation #temp ID = @s ID
#execute as @s at @s unless entity @e[type=bat,distance=..1,tag=harpoon_tp1,predicate=vred:id_check] run tp @s ^ ^0.45 ^1
#execute as @s at @s unless entity @e[type=bat,distance=..1,tag=harpoon_tp1,predicate=vred:id_check] run tp @s ^ ^0.45 ^1
#execute as @s at @s facing entity @e[type=bat,tag=harpoon_tp1,predicate=vred:id_check] feet unless entity @e[type=bat,distance=..3,tag=harpoon_tp1,predicate=vred:id_check] run function vred:harpoon_launcher/throw
#execute if entity @e[type=bat,distance=..3,tag=harpoon_tp1,predicate=vred:id_check] run function vred:harpoon_launcher/end
execute as @s at @s facing entity @e[type=item_display,tag=harpoon_hook,tag=harpoon_tp1,predicate=vred:id_check] feet unless entity @e[type=item_display,tag=harpoon_hook,distance=..3,tag=harpoon_tp1,predicate=vred:id_check] run function vred:harpoon_launcher/throw
execute if entity @e[type=item_display,tag=harpoon_hook,distance=..3,tag=harpoon_tp1,predicate=vred:id_check] run function vred:harpoon_launcher/end

tag @s[scores={adeaths=1..}] remove harpoon_tp
scoreboard players set @s[scores={adeaths=1..}] adeaths 0