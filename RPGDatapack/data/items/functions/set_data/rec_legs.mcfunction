# エンチャントのmodifierを適用
    item modify entity @s armor.legs items:lore/enchantments
# エンチャントの残り数減算&ゼロでないならループ続行
    data remove storage item: Item.tag.Customnbt.Enchantments[0]
    scoreboard players remove #enchantcount buffer 1
    execute if score #enchantcount buffer matches 1.. run function items:set_data/rec_legs
