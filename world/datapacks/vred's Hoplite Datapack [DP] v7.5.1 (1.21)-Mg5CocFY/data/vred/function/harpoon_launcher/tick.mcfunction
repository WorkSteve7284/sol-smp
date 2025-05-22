execute as @s[predicate=vred:harpoon_launcher,scores={bow2=1..}] at @s run function vred:harpoon_launcher/prelaunch
#tp @e[type=bat,tag=harpoon_manager,limit=1] @e[type=arrow,tag=harpoon_launched,limit=1,sort=nearest]
#execute as @e[type=arrow,tag=harpoon_launched] at @s run function vred:harpoon_launcher/prelaunch1
#execute as @e[type=bat,tag=harpoon_tp1] at @s run function vred:harpoon_launcher/harpoon
execute as @s[tag=harpoon_tp] at @s run function vred:harpoon_launcher/harpoon_tp
#execute as @e[type=bat,tag=harpoon_manager] at @s run function vred:harpoon_launcher/manager
#execute as @e[type=marker,tag=harpoon_finish] at @s run function vred:harpoon_launcher/marker
scoreboard players set @s bow2 0
execute if score @s harpoon_cooldown matches 1.. run function vred:harpoon_launcher/cooldown
execute if score @s harpoon_cooldown matches 1.. run function vred:harpoon_launcher/cooldown1