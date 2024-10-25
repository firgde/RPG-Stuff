# 知恵の書のストレージ更新
    $execute store result score #spawner buffer run data get storage book: data.explore.area[{id:$(location)}].progress.spawner
    $execute store result storage book: data.explore.area[{id:$(location)}].progress.spawner int 1 run scoreboard players add #spawner buffer 1
# リセット
    scoreboard players reset #spawner buffer
