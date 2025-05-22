scoreboard players set @s ray_success 1
playsound minecraft:block.end_portal.spawn ambient @s
summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Tags:["void_staffportal1"]}
tp @e[type=armor_stand,tag=void_staffportal1,limit=1,sort=nearest] ^ ^ ^ ~ ~
scoreboard players operation @e[type=armor_stand,tag=void_staffportal1,limit=1,sort=nearest] ID = @s ID
