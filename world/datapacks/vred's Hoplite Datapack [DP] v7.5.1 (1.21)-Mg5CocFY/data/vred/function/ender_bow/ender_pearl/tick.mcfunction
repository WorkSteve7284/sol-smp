execute if data entity @s {inGround:true} run function vred:ender_bow/ender_pearl/ender_arrow2_1
scoreboard players operation #temp ID = @s ID
execute if entity @e[distance=..3,predicate=!vred:stuff,predicate=!vred:id_check] run function vred:ender_bow/ender_pearl/ender_arrow2_1