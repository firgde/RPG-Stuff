# item_countがスタックサイズより大きいなら一度交換して取り出す
    execute store success score #reversed buffer if score #item_count buffer > #max_stack_size buffer run scoreboard players operation #item_count buffer >< #max_stack_size buffer
    function main:social/backpack/use/page/item/give with storage player:context data.ui.backpack.item.components."minecraft:custom_data"
# 戻す
    execute if score #reversed buffer matches 1 run scoreboard players operation #item_count buffer >< #max_stack_size buffer
# 再帰回数を減らす+リセット
    scoreboard players operation #item_count buffer -= #max_stack_size buffer
    scoreboard players reset #reversed buffer
    execute if score #item_count buffer matches 1.. run function main:social/backpack/use/page/item/rec
