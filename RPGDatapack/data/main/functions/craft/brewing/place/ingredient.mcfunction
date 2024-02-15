# potionCountに1足す
    scoreboard players add #itemCount buffer 1
# 0 -59 0にメインハンドのアイテム移動、Countを1に設定
    data modify block 0 -59 0 Items[{Slot:0b}] set from entity @s SelectedItem
    data modify block 0 -59 0 Items[{Slot:0b}].Count set value 1b
# 醸造台のItemsにアイテムを足す
    execute if data entity @s SelectedItem.tag{Customnbt:{brewingMaterial:1b,brewingPowder:0b}} at @e[tag=brewing,limit=1,distance=..6,sort=nearest,scores={hasTarget=1}] run item replace block ~ ~ ~ container.3 from block 0 -59 0 container.0
    execute if data entity @s SelectedItem.tag{Customnbt:{brewingMaterial:1b,brewingPowder:1b}} at @e[tag=brewing,limit=1,distance=..6,sort=nearest,scores={hasTarget=1}] run item replace block ~ ~ ~ container.4 from block 0 -59 0 container.0
# アイテムを一個減らす
    item modify entity @s weapon.mainhand main:craft/remove
# リセット
    scoreboard players reset #itemCount buffer
    item replace block 0 -59 0 container.0 with air
