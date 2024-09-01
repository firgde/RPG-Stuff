# 0 - 3の乱数を生成
    execute store result score #place buffer run random value 0..3
## TODO: 場所によって抽選がされる確率を変更

# 乱数が0ならLootTableから鉱石を抽選して配置
    execute if score #place buffer matches 0 run loot replace block 0 -59 0 container.0 loot asset:collect/mining/all
    execute if score #place buffer matches 0 run function main:collect/mining/place with block 0 -59 0 Items[{Slot:0b}].components."minecraft:custom_data"
# 乱数が1以上なら石を設置
    execute if score #place buffer matches 1.. run setblock ~ ~ ~ stone
## TODO: 石以外にも対応

# リセット
    scoreboard players reset #place buffer
    item replace block 0 -59 0 container.0 with air
