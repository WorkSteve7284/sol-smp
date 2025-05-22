scoreboard players operation #temp ID = @s ID
#teleport @s ~ ~ ~ facing entity @e[sort=nearest,type=!arrow,predicate=!vred:id_check,predicate=!vred:stuff,limit=1,distance=..40]
#teleport @s ^ ^ ^1
execute if entity @e[distance=..4,predicate=!vred:stuff,type=!arrow,predicate=!vred:id_check] run function vred:artemis_bow/end
execute if entity @s[nbt={inGround:1b}] run function vred:artemis_bow/end
#tag @s[nbt={inGround:1b}] remove artemis_arrow
execute if entity @s[tag=artemis_arrow_skin] run particle heart