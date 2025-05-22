execute as @s[scores={bow=1..},predicate=vred:double_bow,predicate=vred:artemis_bow_right,predicate=vred:random_chance] at @s run function vred:artemis_bow/arrow1
execute as @s[scores={bow=1..},predicate=!vred:double_bow,predicate=vred:artemis_bow,predicate=vred:random_chance] at @s run function vred:artemis_bow/arrow1
#function vred:artemis_arrow1
scoreboard players set @s[scores={bow=1..}] bow 0
