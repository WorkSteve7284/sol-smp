tellraw @s ["\uE032 ",{"text":"You don't have enough materials!","color":"red"}]
playsound minecraft:entity.villager.no player @s ~ ~ ~ 4
scoreboard players set @s crafting_cooldown 5