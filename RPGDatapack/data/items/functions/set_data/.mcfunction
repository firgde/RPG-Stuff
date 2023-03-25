#置き換えるアイテムを入れる
    item replace block 0 -59 0 container.0 with air
    item replace block 0 -59 0 container.0 with stick{}
#説明文やらidやらを先に代入
    data modify block 0 -59 0 Items[{Slot:0b}] set from storage item: Item
#item_modifierを適用
    item modify block 0 -59 0 container.0 items:lore/text
    item modify block 0 -59 0 container.0 items:lore/status
    execute positioned 0 -59 0 run function items:set_data/loop
    execute if data storage item: Item.tag.Customnbt{weaponType:"wand"} run item modify block 0 -59 0 container.0 items:lore/magic
    execute if data storage item: Item.tag.Customnbt{food:1b} run item modify block 0 -59 0 container.0 items:lore/heal
    execute if data storage item: Item.tag.Customnbt{ItemType:2} run item modify block 0 -59 0 container.0 items:lore/magic_elements
    execute if data storage item: Item.tag.Customnbt{ItemType:8} run item modify block 0 -59 0 container.0 items:lore/quest_contents
    item modify block 0 -59 0 container.0 items:lore/info
#アイテムｶﾓｫｫｫｫﾝ
    item replace block 0 -59 0 container.1 with air
    item replace block 0 -59 0 container.2 with air
    item replace block 0 -59 0 container.3 with air
    loot give @s[tag=!crafted,tag=!enchanting] mine 0 -59 0 mainhand
#リセット
    data remove storage item: Item
    data modify storage item: Item.Count set value 1b
    scoreboard players reset $Lore buffer
    scoreboard players reset $itemtype buffer
    scoreboard players reset $healamounthp buffer
    scoreboard players reset $healamountmp buffer
    scoreboard players reset $element buffer
    scoreboard players reset $atkbonus
    scoreboard players reset $magbonus
    scoreboard players reset $dexbonus
    scoreboard players reset $hpbonus
    scoreboard players reset $intbonus
    scoreboard players reset $defbonus
    scoreboard players reset $spdbonus
    scoreboard players reset $crtbonus
    scoreboard players reset $lukbonus
    scoreboard players reset $accbonus
    scoreboard players reset $rarity buffer
    scoreboard players reset $durability buffer
    scoreboard players reset $maxdurability buffer
    scoreboard players reset $enchantcount buffer
    scoreboard players reset $hasskill buffer
