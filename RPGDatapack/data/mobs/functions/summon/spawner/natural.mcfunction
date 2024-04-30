# loot_table万能説
    execute at @s run loot spawn ~ ~ ~ loot asset:mob/natural/all
    execute as @e[type=item,distance=..1.5] if entity @s[nbt={Item:{components:{"minecraft:custom_data":{Pickup:0b}}}}] run tag @s add spawner
    execute as @e[tag=spawner,type=item,distance=..1.5] run data merge entity @s {PickupDelay:32767,Age:5999}
# アイテムﾊﾞﾗｧ
    execute at @s run spreadplayers ~ ~ 4 15 false @e[tag=spawner,distance=..1.5,type=item]
# Mobｻﾓｫｫｫｫﾝ
    execute as @e[tag=spawner,distance=..15,nbt={Item:{components:{"minecraft:custom_data":{Type:"zombie"}}}}] run function mobs:summon/0000_zombie
    execute as @e[tag=spawner,distance=..15,nbt={Item:{components:{"minecraft:custom_data":{Type:"skeleton"}}}}] run function mobs:summon/0001_skeleton
    execute as @e[tag=spawner,distance=..15,nbt={Item:{components:{"minecraft:custom_data":{Type:"husk"}}}}] run function mobs:summon/0002_husk
    execute as @e[tag=spawner,distance=..15,nbt={Item:{components:{"minecraft:custom_data":{Type:"stray"}}}}] run function mobs:summon/0003_stray
# リセット
    kill @e[tag=spawner,distance=..15,type=item]
    tag @s remove spawn_check
