#名前だとか説明文だとか
    data modify storage item: Item.id set value "minecraft:golden_apple"
    data modify storage item: Item.tag.display.Name set value '{"translate":"item.bread","color":"white","italic":false}'
    data modify storage item: Item.tag.display.Lore set value ['{"translate":"item.bread.lore","color":"white","italic":false}']
    scoreboard players set $Lore buffer 1
    scoreboard players set $itemtype buffer 7
    scoreboard players set $healamounthp buffer 10
    scoreboard players set $healamountmp buffer 10
    data modify storage item: Item.tag.Customnbt.ItemType set value 3
    data modify storage item: Item.tag.HideFlags set value 127
    data modify storage item: Item.tag.Customnbt.food set value 1b
    data modify storage item: Item.tag.CustomModelData set value 7000
#ステータスとレア度設定
    scoreboard players set $atkbonus buffer 0
    scoreboard players set $magbonus buffer 0
    scoreboard players set $dexbonus buffer 0
    scoreboard players set $hpbonus buffer 0
    scoreboard players set $intbonus buffer 0
    scoreboard players set $defbonus buffer 0
    scoreboard players set $spdbonus buffer 0
    scoreboard players set $crtbonus buffer 0
    scoreboard players set $lukbonus buffer 0
    scoreboard players set $concbonus buffer 0
    scoreboard players set $rarity buffer 0
    scoreboard players set $durability buffer 0
    scoreboard players set $maxdurability buffer 0
    scoreboard players set $hasskill buffer 0
    scoreboard players set $enchantcount buffer 0
    #実際のステータス
    data modify storage item: Item.tag.Customnbt.HealAmountHP set value 10
    data modify storage item: Item.tag.Customnbt.HealAmountMP set value 10
#共通
    function items:set_data/
