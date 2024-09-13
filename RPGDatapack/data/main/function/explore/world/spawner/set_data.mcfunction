# スポナーのデータ諸々を設定
    data modify entity @s SpawnCount set from storage explore: data.spawner.spawn_count
    data modify entity @s SpawnRange set from storage explore: data.spawner.spawn_range
    data modify entity @s Delay set from storage explore: data.spawner.delay
    data modify entity @s MinSpawnDelay set from storage explore: data.spawner.min_spawn_delay
    data modify entity @s MaxSpawnDelay set from storage explore: data.spawner.max_spawn_delay
    data modify entity @s RequiredPlayerRange set from storage explore: data.spawner.required_player_range
    data modify entity @s SpawnPotentials set from storage explore: data.spawner.spawn_potential
# リセット
    data remove storage explore: data.spawner
