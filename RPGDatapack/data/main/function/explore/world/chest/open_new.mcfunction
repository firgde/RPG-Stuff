# 知恵の書のストレージ更新
    $execute store result score #chest buffer run data get storage book: data.explore.area[{id:$(location)}].progress.chest
    $execute store result storage book: data.explore.area[{id:$(location)}].progress.chest int 1 run scoreboard players add #chest buffer 1
# リセット
    scoreboard players reset #chest buffer
