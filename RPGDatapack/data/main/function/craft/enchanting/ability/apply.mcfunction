# エンチャントデータを入れる棒
    item replace block 0 -59 0 container.1 with stick[custom_data={lvl:0s,id:""}]
# 0-<リストの長さ>番目のどれかををストレージに保存、マクロからデータ追加function実行
    data modify storage rng: data.Min set value 0
    execute store result score #len buffer run data get storage craft:enchanting data.ability.pool
    execute store result storage rng: data.Max int 1 run scoreboard players remove #len buffer 1
    function lib:get_rng with storage rng:
    execute store result storage craft:enchanting data.ability.select int 1 run scoreboard players get #rng buffer
    function main:craft/enchanting/ability/select with storage craft:enchanting data.ability
# データ適用
    data modify block ~ ~ ~ Items[{Slot:4b}].components."minecraft:custom_data".enchantments.data append from block 0 -59 0 Items[{Slot:1b}].components."minecraft:custom_data"
# アイテムのlore設定
    #取得したidとレベルをマクロに渡してテキストコンポーネントに変換
    # function main:craft/enchanting/add_text with block 0 -59 0 Items[{Slot:1b}].components."minecraft:custom_data"
    data modify storage item: Item set from block ~ ~ ~ Items[{Slot:4b}]
    data remove storage item: Item.Slot
    item replace block 0 -59 0 container.0 from block ~ ~ ~ container.4
    execute positioned 0 -59 0 run function items:get_data
    execute positioned 0 -59 0 run function items:set_data/
    item replace block ~ ~ ~ container.4 from block 0 -59 0 container.0
# リセット
    scoreboard players reset #len buffer
    scoreboard players reset #rng buffer
    data remove storage craft:enchanting data.ability
