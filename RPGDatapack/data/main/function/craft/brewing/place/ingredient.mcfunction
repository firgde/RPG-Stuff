# potionCountに1足す
    scoreboard players add #item_count buffer 1
# 0 -59 0にメインハンドのアイテム移動、Countを1に設定
    data modify block 0 -59 0 Items[{Slot:0b}] set from entity @s SelectedItem
    data modify block 0 -59 0 Items[{Slot:0b}].count set value 1
# 醸造台のItemsにアイテムを足す
    execute if items entity @s weapon.mainhand *[custom_data~{brewing_material:1b,brewing_powder:0b}] at @n[tag=brewing,distance=..6,scores={hasTarget=1}] run item replace block ~ ~ ~ container.3 from block 0 -59 0 container.0
    execute if items entity @s weapon.mainhand *[custom_data~{brewing_material:1b,brewing_powder:1b}] at @n[tag=brewing,distance=..6,scores={hasTarget=1}] run item replace block ~ ~ ~ container.4 from block 0 -59 0 container.0
# 素材か粉の演出
    execute if items entity @s weapon.mainhand *[custom_data~{brewing_powder:0b}] run playsound block.decorated_pot.insert block @s ~ ~ ~ 1 1
    execute if items entity @s weapon.mainhand *[custom_data~{brewing_powder:1b}] run playsound block.suspicious_sand.place block @s ~ ~ ~ 1 1
# アイテムを一個減らす
    scoreboard players set #modify_count buffer -1
    item modify entity @s weapon.mainhand {function:"set_count",count:{type:"constant",value:-1},add:1b}
# リセット
    scoreboard players reset #modify_count buffer
    scoreboard players reset #item_count buffer
    item replace block 0 -59 0 container.0 with air
