# potionCountに1足す
    scoreboard players add #itemCount buffer 1
# 0 -59 0にメインハンドのアイテム移動、Countを1に設定
    data modify block 0 -59 0 Items[{Slot:0b}] set from entity @s SelectedItem
    data modify block 0 -59 0 Items[{Slot:0b}].count set value 1
# 醸造台のItemsにアイテムを足す
    execute if data entity @s SelectedItem.components{"minecraft:custom_data":{brewingMaterial:1b,brewingPowder:0b}} at @n[tag=brewing,distance=..6,scores={hasTarget=1}] run item replace block ~ ~ ~ container.3 from block 0 -59 0 container.0
    execute if data entity @s SelectedItem.components{"minecraft:custom_data":{brewingMaterial:1b,brewingPowder:1b}} at @n[tag=brewing,distance=..6,scores={hasTarget=1}] run item replace block ~ ~ ~ container.4 from block 0 -59 0 container.0
# 素材か粉の演出
    execute if data entity @s SelectedItem.components{"minecraft:custom_data":{brewingPowder:0b}} run playsound block.decorated_pot.insert block @s ~ ~ ~ 1 1
    execute if data entity @s SelectedItem.components{"minecraft:custom_data":{brewingPowder:1b}} run playsound block.suspicious_sand.place block @s ~ ~ ~ 1 1
# アイテムを一個減らす
    scoreboard players set #modify_count buffer -1
    item modify entity @s weapon.mainhand items:count
# リセット
    scoreboard players reset #modify_count buffer
    scoreboard players reset #itemCount buffer
    item replace block 0 -59 0 container.0 with air
