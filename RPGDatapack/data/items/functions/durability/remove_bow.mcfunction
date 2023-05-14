# Customnbtの耐久値を減算
    execute store result score @s durability run data get entity @s SelectedItem.tag.Customnbt.Durability
    scoreboard players remove @s durability 1
    scoreboard players operation $durability buffer = @s durability
    execute store result storage item: Item.tag.Customnbt.Durability int 1 run scoreboard players get $durability buffer
    item modify entity @s weapon.mainhand main:update_durability
# 0なら壊す
    execute if score @s durability matches ..0 run function items:durability/break
# アイテムの耐久ゲージを更新
    execute store result score @s maxDurability run data get entity @s SelectedItem.tag.Customnbt.MaxDurability
    scoreboard players operation $maxdurability buffer = @s maxDurability
    scoreboard players operation @s durability *= $384 const
    execute store result score @s dur_ratio run scoreboard players operation @s durability /= @s maxDurability
    scoreboard players set @s buffer 384
    execute store result storage item: data.Damage int 1 run scoreboard players operation @s buffer -= @s dur_ratio
# 代入
    data modify storage item: Item set from entity @s SelectedItem
    item modify entity @s weapon.mainhand main:update_durability_display
    item replace block 0 -59 0 container.0 from entity @s weapon.mainhand
    execute positioned 0 -59 0 run function items:get_data
    item modify entity @s weapon.mainhand items:lore/text
    item modify entity @s weapon.mainhand items:lore/status
    execute if score $enchantcount buffer matches 1.. run function items:set_data/rec_mainhand
    item modify entity @s weapon.mainhand items:lore/info
# リセット
    data remove storage item: data
    data remove storage item: Item
    scoreboard players reset @s buffer
    scoreboard players reset @s usedBow
    scoreboard players reset $Lore buffer
    scoreboard players reset $itemtype buffer
    scoreboard players reset $healamounthp buffer
    scoreboard players reset $healamountmp buffer
    scoreboard players reset $element buffer
    scoreboard players reset $atkbonus buffer
    scoreboard players reset $magbonus buffer
    scoreboard players reset $dexbonus buffer
    scoreboard players reset $hpbonus buffer
    scoreboard players reset $intbonus buffer
    scoreboard players reset $defbonus buffer
    scoreboard players reset $spdbonus buffer
    scoreboard players reset $crtbonus buffer
    scoreboard players reset $lukbonus buffer
    scoreboard players reset $accbonus buffer
    scoreboard players reset $rarity buffer
    scoreboard players reset $durability buffer
    scoreboard players reset $maxdurability buffer
    scoreboard players reset $enchantcount buffer
    scoreboard players reset $hasskill buffer
    advancement revoke @s only main:combat/attack/used_bow
