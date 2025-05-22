scoreboard players operation #temp ID = @s ID
execute store result score @s aiglos_power run data get entity @s HandItems[0].components.minecraft:enchantments.levels.minecraft:power
execute store result score @s aiglos_flame run data get entity @s HandItems[0].components.minecraft:enchantments.levels.minecraft:flame
execute store result score @s aiglos_punch run data get entity @s HandItems[0].components.minecraft:enchantments.levels.minecraft:punch
execute if score @s aiglos_flame matches 1.. at @e[type=item_display,tag=aiglos_trident,predicate=vred:id_check] run function vred:aiglos/flame
execute if score @s aiglos_power matches 1.. at @e[type=item_display,tag=aiglos_trident,predicate=vred:id_check] run function vred:aiglos/power1
$execute if score @s aiglos_power matches 0 at @e[type=item_display,tag=aiglos_trident,predicate=vred:id_check] run execute as @e[distance=..8,predicate=!vred:stuff,predicate=!vred:id_check] at @s run damage @s $(aiglos) player_explosion by @a[predicate=vred:id_check,limit=1]
execute if score @s aiglos_punch matches 1.. at @e[type=item_display,tag=aiglos_trident,predicate=vred:id_check] run execute as @e[distance=..8,predicate=!vred:stuff,predicate=!vred:id_check] run function vred:aiglos/punch1
