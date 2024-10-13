# SpawnCountを0に設定
    execute on passengers run data modify entity @s SpawnCount set value 0
# disabledタグ付与
    tag @s add spawner.disabled
