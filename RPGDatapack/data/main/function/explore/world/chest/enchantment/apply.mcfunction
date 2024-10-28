# slot4にもアイテム置いておく
    item replace block 0 -59 0 container.4 from block 0 -59 0 container.0
# 再帰function
    #エンチャントレベル / 10 + 1回実行
    scoreboard players operation #rec buffer = #enchantLv buffer
    scoreboard players operation #rec buffer /= #10 const
    scoreboard players add #rec buffer 1
    function main:explore/world/chest/enchantment/rec
# アイテムを置き換える
    item replace block 0 -59 0 container.0 from block 0 -59 0 container.4
# エンチャントの輝き
    data modify block 0 -59 0 Items[{Slot:0b}].components."minecraft:enchantment_glint_override" set value true
# アイテムのlore設定
    data modify storage item: Item set from block 0 -59 0 Items[{Slot:0b}]
    data remove storage item: Item.Slot
    execute positioned 0 -59 0 run function items:get_data
    execute positioned 0 -59 0 run function items:set_data/
# リセット
    scoreboard players reset #rec buffer
    scoreboard players reset #enchantLv
