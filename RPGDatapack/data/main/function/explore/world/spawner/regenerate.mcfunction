# スポナートロッコ召喚
    summon spawner_minecart ~ ~ ~ {Tags:["spawner_minecart.summon"],SpawnCount:0,CustomDisplayTile:1b,DisplayState:{Name:"air"}}
# 乗せる
    ride @n[tag=spawner_minecart.summon,distance=..0.1,type=spawner_minecart] mount @s
# データ再設定
    data modify storage explore: data set from entity @s item.components."minecraft:custom_data"
    execute on passengers run function main:explore/world/spawner/set_data
# ブロック再設置
    function main:explore/world/spawner/place_block with entity @s item.components."minecraft:custom_data"
# リセット
    tag @n[tag=spawner_minecart.summon] remove spawner_minecart.summon
