advancement revoke @s only vred:right_click/void_staff1
execute if score @s[scores={pufferfish_help=0}] void_stafftimer1 matches 0 anchored eyes run function vred:void_staff/activate1
execute if entity @s[tag=no_cooldown] run function vred:void_staff/activate1
scoreboard players set @s pufferfish_help 10