# potionCountに1足す
    scoreboard players remove #itemCount buffer 1
# アイテムが入っている、一番数の大きいスロットからポーションを持ってくる
    execute if score #itemCount buffer matches 0 run item replace block 0 -59 0 container.0 from block ~ ~ ~ container.0
    execute if score #itemCount buffer matches ..1 run item replace block 0 -59 0 container.1 from block ~ ~ ~ container.1
    execute if score #itemCount buffer matches ..2 run item replace block 0 -59 0 container.2 from block ~ ~ ~ container.2
    execute if score #itemCount buffer matches ..3 run item replace block 0 -59 0 container.3 from block ~ ~ ~ container.3
    execute if score #itemCount buffer matches ..4 run item replace block 0 -59 0 container.4 from block ~ ~ ~ container.4
    loot give @s mine 0 -59 0 mainhand
# 醸造台のItemsにアイテムを足す
    execute if score #itemCount buffer matches 0 run data remove block ~ ~ ~ Items[{Slot:0b}]
    execute if score #itemCount buffer matches ..1 run data remove block ~ ~ ~ Items[{Slot:1b}]
    execute if score #itemCount buffer matches ..2 run data remove block ~ ~ ~ Items[{Slot:2b}]
    execute if score #itemCount buffer matches ..3 run data remove block ~ ~ ~ Items[{Slot:3b}]
    execute if score #itemCount buffer matches ..4 run data remove block ~ ~ ~ Items[{Slot:4b}]
# potionCountに応じてitem_displayの表示を変える
    execute if score #itemCount buffer matches 0 run item replace entity @e[tag=brewing.slot.0,limit=1,sort=nearest] container.0 with air
    execute if score #itemCount buffer matches ..1 run item replace entity @e[tag=brewing.slot.1,limit=1,sort=nearest] container.0 with air
    execute if score #itemCount buffer matches ..2 run item replace entity @e[tag=brewing.slot.2,limit=1,sort=nearest] container.0 with air
# リセット
    scoreboard players reset #itemCount buffer
    data remove block 0 -59 0 Items
