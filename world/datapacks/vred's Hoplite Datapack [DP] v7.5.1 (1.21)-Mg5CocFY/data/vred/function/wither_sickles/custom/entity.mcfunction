summon text_display ~ ~ ~ {Tags:["wither_sickles_vfx"],see_through:1b,shadow:0b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[3f,3f,3f]},text:'"\\uE035"',background:16777215,alignment:"center",billboard:"center"}
$damage @s $(wither_sickles) vred:atk_nocd by @a[tag=wither_sickles_hit,limit=1,sort=nearest]
effect give @s wither 3 1