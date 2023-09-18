# potionCountに1足す
    scoreboard players add $itemCount buffer 1
# 0 -59 0にメインハンドのアイテム移動、Countを1に設定
    data modify block 0 -59 0 Items[{Slot:0b}] set from entity @s SelectedItem
    data modify block 0 -59 0 Items[{Slot:0b}].Count set value 1b
# 醸造台のItemsにアイテムを足す
    execute if score $itemCount buffer matches 1.. at @e[tag=brewing,limit=1,distance=..6,sort=nearest,scores={hasTarget=1}] run item replace block ~ ~ ~ container.0 from block 0 -59 0 container.0
    execute if score $itemCount buffer matches 2.. at @e[tag=brewing,limit=1,distance=..6,sort=nearest,scores={hasTarget=1}] run item replace block ~ ~ ~ container.1 from block 0 -59 0 container.0
    execute if score $itemCount buffer matches 3.. at @e[tag=brewing,limit=1,distance=..6,sort=nearest,scores={hasTarget=1}] run item replace block ~ ~ ~ container.2 from block 0 -59 0 container.0
# potionCountに応じてitem_displayの表示を変える
    execute if score $itemCount buffer matches 1.. run item replace entity @e[tag=brewing.slot.0,limit=1,sort=nearest] container.0 with glass_bottle{CustomModelData:1}
    execute if score $itemCount buffer matches 2.. run item replace entity @e[tag=brewing.slot.1,limit=1,sort=nearest] container.0 with glass_bottle{CustomModelData:1}
    execute if score $itemCount buffer matches 3.. run item replace entity @e[tag=brewing.slot.2,limit=1,sort=nearest] container.0 with glass_bottle{CustomModelData:1}
# アイテムを一個減らす
    item modify entity @s weapon.mainhand main:craft/remove
# リセット
    scoreboard players reset $itemCount buffer
    item replace block 0 -59 0 container.0 with air
