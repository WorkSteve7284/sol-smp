scoreboard players set @s crate_cooldown 5
execute store result score #hat2 item_check run random value 1..20
clear @s recovery_compass[custom_data={crate:5b}] 1
execute if score #hat2 item_check matches 1 run function vred:give/hats/legacy/3d_glasses
execute if score #hat2 item_check matches 2 run function vred:give/hats/legacy/alien_head_muncher
execute if score #hat2 item_check matches 3 run function vred:give/hats/legacy/axolotl_cap
execute if score #hat2 item_check matches 4 run function vred:give/hats/legacy/banana_hat
execute if score #hat2 item_check matches 5 run function vred:give/hats/legacy/camera_hat
execute if score #hat2 item_check matches 6 run function vred:give/hats/legacy/chainsaw_head
execute if score #hat2 item_check matches 7 run function vred:give/hats/legacy/chef_hat
execute if score #hat2 item_check matches 8 run function vred:give/hats/legacy/cute_bow
execute if score #hat2 item_check matches 9 run function vred:give/hats/legacy/dingle_mask
execute if score #hat2 item_check matches 10 run function vred:give/hats/legacy/gas_mask
execute if score #hat2 item_check matches 11 run function vred:give/hats/legacy/halo
execute if score #hat2 item_check matches 12 run function vred:give/hats/legacy/knight_helmet
execute if score #hat2 item_check matches 13 run function vred:give/hats/legacy/night_vision_goggles
execute if score #hat2 item_check matches 14 run function vred:give/hats/legacy/propeller_hat
execute if score #hat2 item_check matches 15 run function vred:give/hats/legacy/pufferfish_hat
execute if score #hat2 item_check matches 16 run function vred:give/hats/legacy/samurai_helmet
execute if score #hat2 item_check matches 17 run function vred:give/hats/legacy/shark_hat
execute if score #hat2 item_check matches 18 run function vred:give/hats/legacy/spartan_helmet
execute if score #hat2 item_check matches 19 run function vred:give/hats/legacy/steampunk_hat
execute if score #hat2 item_check matches 20 run function vred:give/hats/legacy/valkyrie_helmet

scoreboard players reset #hat2 item_check

