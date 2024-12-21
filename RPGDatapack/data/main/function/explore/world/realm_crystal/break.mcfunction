# 演出
    particle flash ~ ~ ~ 0 0 0 0 1
    particle end_rod ~ ~ ~ 0.1 0.1 0.1 0.5 50
    playsound block.glass.break master @p ~ ~ ~ 1 0.5
    playsound block.trial_spawner.about_to_spawn_item master @p ~ ~ ~ 1 1.0
# エリアの進行度に加算
    $execute store result score #realm_crystal buffer run data get storage book: data.explore.area[{id:$(location)}].progress.realm_crystal
    $execute store result storage book: data.explore.area[{id:$(location)}].progress.realm_crystal int 1 run scoreboard players add #realm_crystal buffer 1
# 破壊済みタグ
    tag @s add realm_crystal.destroyed
# リセット
    scoreboard players reset #realm_crystal buffer
