advancement revoke @s only vred:full
scoreboard players set @s item_check1 0
execute if entity @s[nbt={Inventory:[{Slot:0b}]}] run scoreboard players add @s item_check1 1
execute if entity @s[nbt={Inventory:[{Slot:1b}]}] run scoreboard players add @s item_check1 1
execute if entity @s[nbt={Inventory:[{Slot:2b}]}] run scoreboard players add @s item_check1 1
execute if entity @s[nbt={Inventory:[{Slot:3b}]}] run scoreboard players add @s item_check1 1
execute if entity @s[nbt={Inventory:[{Slot:4b}]}] run scoreboard players add @s item_check1 1
execute if entity @s[nbt={Inventory:[{Slot:5b}]}] run scoreboard players add @s item_check1 1
execute if entity @s[nbt={Inventory:[{Slot:6b}]}] run scoreboard players add @s item_check1 1
execute if entity @s[nbt={Inventory:[{Slot:7b}]}] run scoreboard players add @s item_check1 1
execute if entity @s[nbt={Inventory:[{Slot:8b}]}] run scoreboard players add @s item_check1 1
execute if entity @s[nbt={Inventory:[{Slot:9b}]}] run scoreboard players add @s item_check1 1
execute if entity @s[nbt={Inventory:[{Slot:10b}]}] run scoreboard players add @s item_check1 1
execute if entity @s[nbt={Inventory:[{Slot:11b}]}] run scoreboard players add @s item_check1 1
execute if entity @s[nbt={Inventory:[{Slot:12b}]}] run scoreboard players add @s item_check1 1
execute if entity @s[nbt={Inventory:[{Slot:13b}]}] run scoreboard players add @s item_check1 1
execute if entity @s[nbt={Inventory:[{Slot:14b}]}] run scoreboard players add @s item_check1 1
execute if entity @s[nbt={Inventory:[{Slot:15b}]}] run scoreboard players add @s item_check1 1
execute if entity @s[nbt={Inventory:[{Slot:16b}]}] run scoreboard players add @s item_check1 1
execute if entity @s[nbt={Inventory:[{Slot:17b}]}] run scoreboard players add @s item_check1 1
execute if entity @s[nbt={Inventory:[{Slot:18b}]}] run scoreboard players add @s item_check1 1
execute if entity @s[nbt={Inventory:[{Slot:19b}]}] run scoreboard players add @s item_check1 1
execute if entity @s[nbt={Inventory:[{Slot:20b}]}] run scoreboard players add @s item_check1 1
execute if entity @s[nbt={Inventory:[{Slot:21b}]}] run scoreboard players add @s item_check1 1
execute if entity @s[nbt={Inventory:[{Slot:22b}]}] run scoreboard players add @s item_check1 1
execute if entity @s[nbt={Inventory:[{Slot:23b}]}] run scoreboard players add @s item_check1 1
execute if entity @s[nbt={Inventory:[{Slot:24b}]}] run scoreboard players add @s item_check1 1
execute if entity @s[nbt={Inventory:[{Slot:25b}]}] run scoreboard players add @s item_check1 1
execute if entity @s[nbt={Inventory:[{Slot:26b}]}] run scoreboard players add @s item_check1 1
execute if entity @s[nbt={Inventory:[{Slot:27b}]}] run scoreboard players add @s item_check1 1
execute if entity @s[nbt={Inventory:[{Slot:28b}]}] run scoreboard players add @s item_check1 1
execute if entity @s[nbt={Inventory:[{Slot:29b}]}] run scoreboard players add @s item_check1 1
execute if entity @s[nbt={Inventory:[{Slot:30b}]}] run scoreboard players add @s item_check1 1
execute if entity @s[nbt={Inventory:[{Slot:31b}]}] run scoreboard players add @s item_check1 1
execute if entity @s[nbt={Inventory:[{Slot:32b}]}] run scoreboard players add @s item_check1 1
execute if entity @s[nbt={Inventory:[{Slot:33b}]}] run scoreboard players add @s item_check1 1
execute if entity @s[nbt={Inventory:[{Slot:34b}]}] run scoreboard players add @s item_check1 1
execute if entity @s[nbt={Inventory:[{Slot:35b}]}] run scoreboard players add @s item_check1 1
execute if score @s item_check1 matches ..35 run tag @s add 1slot_tag
execute if score @s item_check1 matches 36.. run tag @s remove 1slot_tag