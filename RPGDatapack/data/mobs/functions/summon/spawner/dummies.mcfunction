#loot_table万能説
    loot spawn ~ ~ ~ loot mobs:spawner/dummies
    execute as @e[type=item,distance=..1.5] if entity @s[nbt={Item:{tag:{Pickup:0b}}}] run tag @s add spawner
    execute as @e[tag=spawner,type=item,distance=..1.5] run data merge entity @s {PickupDelay:32767,Age:5999}
#アイテムﾊﾞﾗｧ
    spreadplayers ~ ~ 2 5 false @e[tag=spawner,distance=..1.5,type=item]
#Mobｻﾓｫｫｫｫﾝ
    execute as @e[tag=spawner,distance=..7,nbt={Item:{tag:{Type:"zombie"}}}] run function mobs:summon/dummy_zombie
    execute as @e[tag=spawner,distance=..7,nbt={Item:{tag:{Type:"skeleton"}}}] run function mobs:summon/dummy_skeleton
#リセット
    kill @e[tag=spawner,distance=..7,type=item]
