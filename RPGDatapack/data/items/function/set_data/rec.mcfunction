# エンチャントのmodifierを適用
    item modify block ~ ~ ~ container.0 items:lore/enchantments
# エンチャントの残り数減算&ゼロでないならループ続行
    data remove storage item: Item.components."minecraft:custom_data".enchantments.text[0]
    scoreboard players remove #enchantcount buffer 1
    execute if score #enchantcount buffer matches 1.. run function items:set_data/rec
