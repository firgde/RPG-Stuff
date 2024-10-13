# this
    tag @s add this
# SpawnCountをitem_displayのspawn_countに設定
    execute on passengers run data modify entity @s SpawnCount set from entity @n[type=item_display,tag=this,distance=..1] item.components."minecraft:custom_data".spawner.spawn_count
# disabledタグ剝奪
    tag @s remove spawner.disabled
# リセット
    tag @s remove this
