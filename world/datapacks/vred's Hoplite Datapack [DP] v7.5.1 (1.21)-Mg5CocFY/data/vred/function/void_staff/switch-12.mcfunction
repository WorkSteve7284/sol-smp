execute as @s[predicate=vred:void_staff2,scores={void_staffswitch=0}] at @s run function vred:void_staff/switch-1
execute as @s[predicate=vred:void_staff1,scores={void_staffswitch=0}] at @s run function vred:void_staff/switch-2
scoreboard players set @s void_staffswitch 0