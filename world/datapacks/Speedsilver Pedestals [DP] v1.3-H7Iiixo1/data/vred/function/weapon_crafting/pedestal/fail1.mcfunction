tellraw @s ["\uE032 ",{"text":"A player already crafted this item!","color":"red"}]
playsound minecraft:entity.villager.no player @s ~ ~ ~ 4
scoreboard players set @s crafting_cooldown 5