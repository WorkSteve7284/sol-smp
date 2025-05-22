#execute if score @s harpoon_cooldown matches ..0 run function vred:harpoon_launcher/launch
execute if score @s harpoon_cooldown matches ..0 anchored eyes run function vred:harpoon_launcher/harpoonv2/launch
kill @e[type=arrow,distance=..2,nbt={life:0s,inGround:0b}]