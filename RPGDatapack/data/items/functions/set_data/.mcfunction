# 置き換えるアイテムを入れる
    item replace block 0 -59 0 container.0 with air
    item replace block 0 -59 0 container.0 with stick{}
# 説明文やらidやらを先に代入
    data modify block 0 -59 0 Items[{Slot:0b}] set from storage item: Item
# item_modifierを適用
    item modify block 0 -59 0 container.0 items:lore/text
    item modify block 0 -59 0 container.0 items:lore/status
    execute if score $enchantcount buffer matches 1.. positioned 0 -59 0 run function items:set_data/rec
    execute if data storage item: Item.tag.Customnbt{weaponType:"wand"} run item modify block 0 -59 0 container.0 items:lore/magic
    execute if data storage item: Item.tag.Customnbt{food:1b} run item modify block 0 -59 0 container.0 items:lore/heal
    item modify block 0 -59 0 container.0 items:lore/elements
    item modify block 0 -59 0 container.0 items:lore/info
# アイテムｶﾓｫｫｫｫﾝ
    item replace block 0 -59 0 container.1 with air
    item replace block 0 -59 0 container.2 with air
    item replace block 0 -59 0 container.3 with air
    loot give @s[tag=!not_give] mine 0 -59 0 mainhand
# リセット
    data remove storage item: Item
    data modify storage item: Item.Count set value 1b
    execute if entity @s[tag=!not_give] run data remove block 0 -59 0 Items
    scoreboard players reset $Lore buffer
    scoreboard players reset $itemtype buffer
    scoreboard players reset $healamounthp buffer
    scoreboard players reset $healamountmp buffer
    scoreboard players reset $element buffer
    scoreboard players reset $atkBonus
    scoreboard players reset $magBonus
    scoreboard players reset $dexBonus
    scoreboard players reset $hpBonus
    scoreboard players reset $intBonus
    scoreboard players reset $defBonus
    scoreboard players reset $spdBonus
    scoreboard players reset $crtBonus
    scoreboard players reset $lukBonus
    scoreboard players reset $accBonus
    scoreboard players reset $rarity buffer
    scoreboard players reset $durability buffer
    scoreboard players reset $maxDurability buffer
    scoreboard players reset $enchantcount buffer
    scoreboard players reset $hasskill buffer
