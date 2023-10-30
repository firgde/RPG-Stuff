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
    scoreboard players operation $maxDurability buffer = @s maxDurability
    #ツールの種類に応じて耐久変化
    data modify storage item: data.id set string entity @s SelectedItem.id 10
    execute if data storage item: data{id:"wooden_pickaxe"} run scoreboard players set $vanilladur buffer 60
    execute if data storage item: data{id:"stone_pickaxe"} run scoreboard players set $vanilladur buffer 132
    execute if data storage item: data{id:"iron_pickaxe"} run scoreboard players set $vanilladur buffer 251
    execute if data storage item: data{id:"golden_pickaxe"} run scoreboard players set $vanilladur buffer 33
    execute if data storage item: data{id:"diamond_pickaxe"} run scoreboard players set $vanilladur buffer 1562
    execute if data storage item: data{id:"netherite_pickaxe"} run scoreboard players set $vanilladur buffer 2032

    scoreboard players operation @s durability *= $vanilladur buffer
    execute store result score @s dur_ratio run scoreboard players operation @s durability /= @s maxDurability
    scoreboard players operation @s buffer = $vanilladur buffer
    execute store result storage item: data.Damage int 1 run scoreboard players operation @s buffer -= @s dur_ratio
# 代入
    data modify storage item: Item set from entity @s SelectedItem
    item modify entity @s weapon.mainhand main:update_durability_display
    item replace block 0 -59 0 container.0 from entity @s weapon.mainhand
    execute positioned 0 -59 0 run function items:get_data
    item modify entity @s weapon.mainhand items:lore/text
    execute if score $enchantcount buffer matches 1.. run function items:set_data/rec_mainhand
    item modify entity @s weapon.mainhand items:lore/info
# リセット
    scoreboard players reset @s use_pick_0
    scoreboard players reset @s use_pick_1
    scoreboard players reset @s use_pick_2
    scoreboard players reset @s use_pick_3
    scoreboard players reset @s use_pick_4
    scoreboard players reset @s use_pick_5

    data remove storage item: data
    data remove storage item: Item
    scoreboard players reset @s buffer
    scoreboard players reset $vanilladur buffer
    scoreboard players reset $Lore buffer
    scoreboard players reset $itemType buffer
    scoreboard players reset $healamounthp buffer
    scoreboard players reset $healamountmp buffer
    scoreboard players reset $element buffer
    scoreboard players reset $atkBonus buffer
    scoreboard players reset $magBonus buffer
    scoreboard players reset $dexBonus buffer
    scoreboard players reset $hpBonus buffer
    scoreboard players reset $intBonus buffer
    scoreboard players reset $defBonus buffer
    scoreboard players reset $spdBonus buffer
    scoreboard players reset $crtBonus buffer
    scoreboard players reset $lukBonus buffer
    scoreboard players reset $accBonus buffer
    scoreboard players reset $rarity buffer
    scoreboard players reset $durability buffer
    scoreboard players reset $maxDurability buffer
    scoreboard players reset $enchantcount buffer
    scoreboard players reset $hasskill buffer

    advancement revoke @s only main:collect/broken/pickaxe
