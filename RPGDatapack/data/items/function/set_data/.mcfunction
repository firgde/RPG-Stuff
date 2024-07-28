# 置き換えるアイテムを入れる
    item replace block 0 -59 0 container.0 with air
    item replace block 0 -59 0 container.0 with stick[]
# 説明文やらidやらを先に代入
    data modify block 0 -59 0 Items[{Slot:0b}] set from storage item: Item
# item_modifierを適用
    item modify block 0 -59 0 container.0 items:lore/text
    item modify block 0 -59 0 container.0 items:lore/status
    execute if score #enchantcount buffer matches 1.. positioned 0 -59 0 run function items:set_data/rec
    execute if data storage item: Item.components."minecraft:custom_data"{weaponType:2} run item modify block 0 -59 0 container.0 items:lore/magic
    execute if data storage item: Item.components."minecraft:custom_data"{food:1b} run item modify block 0 -59 0 container.0 items:lore/heal
    item modify block 0 -59 0 container.0 items:lore/elements
    item modify block 0 -59 0 container.0 items:lore/info
# アイテムｶﾓｫｫｫｫﾝ
    item replace block 0 -59 0 container.1 with air
    loot give @s[tag=!not_give] mine 0 -59 0 mainhand
# リセット
    execute if entity @s[tag=!hold_data] run function items:set_data/reset
