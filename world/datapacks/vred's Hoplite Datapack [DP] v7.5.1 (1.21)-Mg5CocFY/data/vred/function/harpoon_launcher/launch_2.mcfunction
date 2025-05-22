#execute on origin run tag @s add hparrow_pulling
#execute on origin run scoreboard players set @s[tag=!no_cooldown] harpoon_cooldown 240
scoreboard players operation #temp ID = @s ID
tag @a[predicate=vred:id_check,limit=1] add hparrow_pulling
scoreboard players set @a[tag=!no_cooldown,predicate=vred:id_check,limit=1] harpoon_cooldown 240
execute as @e[predicate=!vred:harpoon_launcher,predicate=!vred:stuff,distance=..4,tag=!harpoon_manager,tag=!harpoon_launched] at @s run function vred:harpoon_launcher/launch_3
tag @a[predicate=vred:id_check,limit=1] remove hparrow_pulling
kill @s