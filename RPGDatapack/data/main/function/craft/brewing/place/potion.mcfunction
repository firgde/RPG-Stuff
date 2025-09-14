# potionCountに1足す
    scoreboard players add #item_count buffer 1
# 0 -59 0にメインハンドのアイテム移動、Countを1に設定
    data modify block 0 -59 0 Items[{Slot:0b}] set from entity @s SelectedItem
    data modify block 0 -59 0 Items[{Slot:0b}].count set value 1b
# 醸造台のItemsにアイテムを足す
    execute if score #item_count buffer matches 1.. at @n[tag=brewing,distance=..6,scores={hasTarget=1}] run item replace block ~ ~ ~ container.0 from block 0 -59 0 container.0
    execute if score #item_count buffer matches 2.. at @n[tag=brewing,distance=..6,scores={hasTarget=1}] run item replace block ~ ~ ~ container.1 from block 0 -59 0 container.0
    execute if score #item_count buffer matches 3.. at @n[tag=brewing,distance=..6,scores={hasTarget=1}] run item replace block ~ ~ ~ container.2 from block 0 -59 0 container.0
# potionCountに応じてitem_displayの表示を変える
    execute if score #item_count buffer matches 1.. run item replace entity @n[tag=brewing.slot.0] contents with glass_bottle[item_model="asset:brewing_stand_bottle"]
    execute if score #item_count buffer matches 2.. run item replace entity @n[tag=brewing.slot.1] contents with glass_bottle[item_model="asset:brewing_stand_bottle"]
    execute if score #item_count buffer matches 3.. run item replace entity @n[tag=brewing.slot.2] contents with glass_bottle[item_model="asset:brewing_stand_bottle"]
# アイテムを一個減らす
    item modify entity @s weapon.mainhand {function:"set_count",count:{type:"constant",value:-1},add:1b}
# 演出
    playsound block.copper_bulb.place block @s ~ ~ ~ 1 0.75
# リセット
    scoreboard players reset #modify_count buffer
    scoreboard players reset #item_count buffer
    item replace block 0 -59 0 container.0 with air
