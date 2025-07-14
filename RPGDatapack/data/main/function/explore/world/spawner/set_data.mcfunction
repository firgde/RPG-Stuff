# item_displayの描画データ
    execute on vehicle run data modify entity @s transformation.scale set value [1.001f,1.001f,1.001f]
    execute on vehicle run data modify entity @s transformation.translation set value [0.0f,0.2f,0.0f]
    execute on vehicle run data modify entity @s item.components."minecraft:item_model" set from storage explore: data.model
# item_displayにデータを保存
    execute on vehicle run data modify entity @s item.components."minecraft:custom_data" set from storage explore: data
    execute on vehicle run data modify entity @s Tags append from storage explore: data.dungeon
# スポナーのデータ諸々を設定
    data modify entity @s DisplayState.Name set value "air"
    data modify entity @s DisplayOffset set value -65536
    data modify entity @s SpawnCount set from storage explore: data.spawner.spawn_count
    data modify entity @s SpawnRange set from storage explore: data.spawner.spawn_range
    data modify entity @s Delay set from storage explore: data.spawner.delay
    data modify entity @s MinSpawnDelay set from storage explore: data.spawner.min_spawn_delay
    data modify entity @s MaxSpawnDelay set from storage explore: data.spawner.max_spawn_delay
    data modify entity @s RequiredPlayerRange set from storage explore: data.spawner.required_player_range
    data modify entity @s SpawnPotentials set from storage explore: data.spawner.spawn_potential
# リセット
    data remove storage explore: data.spawner
