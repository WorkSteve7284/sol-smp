scoreboard players operation #temp ID = @s ID
execute as @e[distance=..0.5,tag=!void_staffportal1,tag=!void_staffportal2] at @s run execute at @s positioned as @e[tag=void_staffportal2,predicate=vred:id_check,limit=1] run function vred:void_staff/teleport/enter
execute at @s positioned ^ ^1.5 ^ run function vred:void_staff/void_portal
execute if entity @e[predicate=vred:id_check,tag=void_staffportal2] run scoreboard players add @s void_stafftimer 1
kill @e[scores={void_stafftimer=300..},predicate=vred:id_check,tag=void_staffportal2]