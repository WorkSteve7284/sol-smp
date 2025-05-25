execute as @s[predicate=vred:ender_bow2,scores={ender_bowswitch=0}] at @s run function vred:ender_bow/switch/switch-1
execute as @s[predicate=vred:ender_bow1,scores={ender_bowswitch=0}] at @s run function vred:ender_bow/switch/switch-2
scoreboard players set @s ender_bowswitch 0