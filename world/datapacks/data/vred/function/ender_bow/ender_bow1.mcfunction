execute as @s[scores={ender_bow=1..},predicate=!vred:double_bow,predicate=vred:ender_bow1] at @s run function vred:ender_bow/endermite/arrow
execute as @s[scores={ender_bow=1..,enderbow_cooldown=0},predicate=!vred:double_bow,predicate=vred:ender_bow2] at @s run function vred:ender_bow/ender_pearl/arrow
execute as @s[scores={ender_bow=1..},predicate=vred:double_bow,predicate=vred:ender_bow1_right] at @s run function vred:ender_bow/endermite/arrow
execute as @s[scores={ender_bow=1..,enderbow_cooldown=0},predicate=vred:double_bow,predicate=vred:ender_bow2_right] at @s run function vred:ender_bow/ender_pearl/arrow

scoreboard players set @s[scores={ender_bow=1..}] ender_bow 0
execute if score @s enderbow_cooldown matches 1.. run function vred:ender_bow/ender_bowc
execute if score @s enderbow_cooldown matches 1.. run function vred:ender_bow/ender_bowc1
