# contextからアイテムを、#item_countから個数を
    item replace block 0 -59 0 container.0 with stick
    $data modify block 0 -59 0 Items[{Slot:0b}] set from storage book: data.collect.item[{components:{"minecraft:custom_data":{id:$(id)}}}]
    data remove block 0 -59 0 Items[{Slot:0b}].components."minecraft:custom_data".ui
    data remove block 0 -59 0 Items[{Slot:0b}].components."minecraft:custom_data".menu
    execute store result block 0 -59 0 Items[{Slot:0b}].count int 1 run scoreboard players get #item_count buffer
    execute as @a[limit=1] run loot give @s mine 0 -59 0 mainhand
# ストレージから個数を減らす
    $execute store result storage player:backpack items[{components:{"minecraft:custom_data":{id:$(id)}}}].count int 1 run scoreboard players operation #max_count buffer -= #item_count buffer
    #0になったら一覧から消す
    $execute if score #max_count buffer matches 0 run data remove storage player:backpack items[{components:{"minecraft:custom_data":{id:$(id)}}}]
# リセット
    item replace block 0 -59 0 container.0 with air
