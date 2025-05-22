execute if score @s shrink_timer matches 1 run function vred:shrink_ray/unshrink
execute if score @s enlarge_timer matches 1 run function vred:shrink_ray/unenlarge
execute as @s[predicate=vred:shrink_ray,predicate=!vred:double_bow,scores={shrink_bow=1..,shrink_cooldown=0}] at @s run function vred:shrink_ray/presr
execute as @s[predicate=vred:shrink_ray_right,predicate=vred:double_bow,scores={shrink_bow=1..,shrink_cooldown=0}] at @s run function vred:shrink_ray/presr
execute as @s[predicate=vred:shrink_ray,predicate=!vred:double_bow,scores={shrink_bow=1..,shrink_cooldown=1..}] at @s run function vred:shrink_ray/fake
execute as @s[predicate=vred:shrink_ray_right,predicate=vred:double_bow,scores={shrink_bow=1..,shrink_cooldown=1..}] at @s run function vred:shrink_ray/fake
scoreboard players set @s[scores={shrink_bow=1..}] shrink_bow 0
execute if score @s shrink_cooldown matches 1.. run function vred:shrink_ray/c
execute if score @s shrink_cooldown matches 1.. run function vred:shrink_ray/c1