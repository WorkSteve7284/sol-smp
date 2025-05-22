execute as @s[tag=no_cooldown,scores={toggle_op=0}] at @s run function vred:op_switch/switch-1
execute as @s[tag=!no_cooldown,scores={toggle_op=0}] at @s run function vred:op_switch/switch-2
scoreboard players set @s toggle_op 0