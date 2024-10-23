# potionCountに1足す
    scoreboard players add #itemCount buffer 1
# 0 -59 0にメインハンドのアイテム移動、Countを1に設定
    data modify block 0 -59 0 Items[{Slot:0b}] set from entity @s SelectedItem
    data modify block 0 -59 0 Items[{Slot:0b}].count set value 1b
# 醸造台のItemsにアイテムを足す
    execute if score #itemCount buffer matches 1.. at @n[tag=brewing,distance=..6,scores={hasTarget=1}] run item replace block ~ ~ ~ container.0 from block 0 -59 0 container.0
    execute if score #itemCount buffer matches 2.. at @n[tag=brewing,distance=..6,scores={hasTarget=1}] run item replace block ~ ~ ~ container.1 from block 0 -59 0 container.0
    execute if score #itemCount buffer matches 3.. at @n[tag=brewing,distance=..6,scores={hasTarget=1}] run item replace block ~ ~ ~ container.2 from block 0 -59 0 container.0
# potionCountに応じてitem_displayの表示を変える
    execute if score #itemCount buffer matches 1.. run item replace entity @n[tag=brewing.slot.0] contents with glass_bottle[item_model="air"]
    execute if score #itemCount buffer matches 2.. run item replace entity @n[tag=brewing.slot.1] contents with glass_bottle[item_model="air"]
    execute if score #itemCount buffer matches 3.. run item replace entity @n[tag=brewing.slot.2] contents with glass_bottle[item_model="air"]
# アイテムを一個減らす
    scoreboard players set #modify_count buffer -1
    item modify entity @s weapon.mainhand items:count
# 演出
    playsound block.copper_bulb.place block @s ~ ~ ~ 1 0.75
# リセット
    scoreboard players reset #modify_count buffer
    scoreboard players reset #itemCount buffer
    item replace block 0 -59 0 container.0 with air
