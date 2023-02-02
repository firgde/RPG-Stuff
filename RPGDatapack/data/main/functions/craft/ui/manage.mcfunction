#棒を消す
    #オフハンドはバグる。おのもや
    execute unless data entity @s Inventory[{Slot:-106b}] run item replace entity @s weapon.offhand with stick{display:{Name:'{"text":""}'},ui:1b}
    clear @s stick{ui:1b}

    #ドロップした棒はkill
    execute if score @s throw matches 1.. as @e[type=item,distance=..5] if data entity @s {Item:{tag:{ui:1b}}} run kill @s

    #あらぬ場所に入った棒も消す
    execute at @e[tag=ui,distance=..6] run data remove block ~ ~-1 ~ Items[{Slot:1b,tag:{ui:1b}}]
    execute at @e[tag=ui,distance=..6] run data remove block ~ ~-1 ~ Items[{Slot:3b,tag:{ui:1b}}]
    execute at @e[tag=ui,distance=..6] run data remove block ~ ~-1 ~ Items[{Slot:5b,tag:{ui:1b}}]
    execute at @e[tag=ui,distance=..6] run data remove block ~ ~-1 ~ Items[{Slot:7b,tag:{ui:1b}}]

#なんかアイテムが別に入っていたらインベントリに戻し、棒に置き換える
    #0,-59,0のシュルカーボックスのアイテム削除
    data remove block 0 -59 0 Items
    #どこのスロットが変えられたか
    execute at @e[tag=ui,distance=..6] unless data block ~ ~-1 ~ {Items:[{Slot:0b,tag:{ui:1b}}]} run function main:craft/ui/return/slot_0
    execute at @e[tag=ui,distance=..6] unless data block ~ ~-1 ~ {Items:[{Slot:2b,tag:{ui:1b}}]} run function main:craft/ui/return/slot_2
    execute at @e[tag=ui,distance=..6] unless data block ~ ~-1 ~ {Items:[{Slot:6b,tag:{ui:1b}}]} run function main:craft/ui/return/slot_6
    execute at @e[tag=ui,distance=..6] unless data block ~ ~-1 ~ {Items:[{Slot:8b,tag:{ui:1b}}]} run function main:craft/ui/return/slot_8
    #そしてアイテム還元
    loot give @s mine 0 -59 0 mainhand
#リセット
    scoreboard players set @s throw 0
    scoreboard players set @s pick 0
    advancement revoke @s only main:craft/ui/pick_stick
