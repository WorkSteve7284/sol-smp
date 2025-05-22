#Get two positions in the direction of the target
execute store result score @s xPos_1 run data get entity @s Pos[0] 1000000
execute store result score @s yPos_1 run data get entity @s Pos[1] 1000000
execute store result score @s zPos_1 run data get entity @s Pos[2] 1000000

summon marker ~ ~ ~ {Tags:["diff"]}
execute as @e[sort=nearest,limit=1,tag=diff] at @s run tp @s ~ ~ ~ facing entity @e[sort=nearest,limit=1,tag=!artemis_arrow,predicate=!vred:artemis_bow,predicate=!vred:stuff,tag=!diff] eyes
execute as @e[sort=nearest,limit=1,tag=diff] at @s run tp @s ^ ^ ^0.1

execute store result score @s xPos_2 run data get entity @e[sort=nearest,limit=1,tag=diff] Pos[0] 1000000
execute store result score @s yPos_2 run data get entity @e[sort=nearest,limit=1,tag=diff] Pos[1] 1000000
execute store result score @s zPos_2 run data get entity @e[sort=nearest,limit=1,tag=diff] Pos[2] 1000000

kill @e[tag=diff]

#Get vector pointing towards target
scoreboard players operation @s xPos_2 -= @s xPos_1
scoreboard players operation @s yPos_2 -= @s yPos_1
scoreboard players operation @s zPos_2 -= @s zPos_1

#Modify Acceleration
scoreboard players operation @s xPos_2 /= 3 int
scoreboard players operation @s yPos_2 /= 3 int
scoreboard players operation @s zPos_2 /= 3 int

#Add acceleration
scoreboard players operation @s xMotion += @s xPos_2
scoreboard players operation @s yMotion += @s yPos_2
scoreboard players operation @s zMotion += @s zPos_2

#Drag
scoreboard players operation @s xMotion *= 11 int
scoreboard players operation @s yMotion *= 11 int
scoreboard players operation @s zMotion *= 11 int
scoreboard players operation @s xMotion /= 12 int
scoreboard players operation @s yMotion /= 12 int
scoreboard players operation @s zMotion /= 12 int

#Create motion
execute store result entity @s Motion[0] double 0.000001 run scoreboard players get @s xMotion
execute store result entity @s Motion[1] double 0.000001 run scoreboard players get @s yMotion
execute store result entity @s Motion[2] double 0.000001 run scoreboard players get @s zMotion

tag @s add spawned