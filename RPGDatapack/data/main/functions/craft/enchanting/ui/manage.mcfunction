# 棒を消す
    #オフハンドはバグる。おのもや
    # execute unless data entity @s Inventory[{Slot:-106b}] run item replace entity @s weapon.offhand with stick[hide_tooltip={},custom_data={menu:1b}]
    clear @s stick[custom_data={ui:1b}]

    #ドロップした棒はkill
    execute if score @s throw matches 1.. as @e[type=item,distance=..5] if data entity @s {Item:{components:{"minecraft:custom_data":{ui:1b}}}} run kill @s

    #あらぬ場所に入った棒も消す
    execute at @e[tag=enchanter,distance=..6] run data remove block ~ ~ ~ Items[{Slot:1b,components:{"minecraft:custom_data":{ui:1b}}}]
    execute at @e[tag=enchanter,distance=..6] run data remove block ~ ~ ~ Items[{Slot:3b,components:{"minecraft:custom_data":{ui:1b}}}]
    execute at @e[tag=enchanter,distance=..6] run data remove block ~ ~ ~ Items[{Slot:5b,components:{"minecraft:custom_data":{ui:1b}}}]
    execute at @e[tag=enchanter,distance=..6] run data remove block ~ ~ ~ Items[{Slot:7b,components:{"minecraft:custom_data":{ui:1b}}}]

# なんかアイテムが別に入っていたらインベントリに戻し、棒に置き換える
    #0,-59,0のシュルカーボックスのアイテム削除
    data remove block 0 -59 0 Items
    #どこのスロットが変えられたか
    execute at @e[tag=enchanter,distance=..6] unless data block ~ ~ ~ {Items:[{Slot:0b,components:{"minecraft:custom_data":{ui:1b}}}]} run function main:craft/enchanting/ui/return/slot_0
    execute at @e[tag=enchanter,distance=..6] unless data block ~ ~ ~ {Items:[{Slot:2b,components:{"minecraft:custom_data":{ui:1b}}}]} run function main:craft/enchanting/ui/return/slot_2
    execute at @e[tag=enchanter,distance=..6] unless data block ~ ~ ~ {Items:[{Slot:6b,components:{"minecraft:custom_data":{ui:1b}}}]} run function main:craft/enchanting/ui/return/slot_6
    execute at @e[tag=enchanter,distance=..6] unless data block ~ ~ ~ {Items:[{Slot:8b,components:{"minecraft:custom_data":{ui:1b}}}]} run function main:craft/enchanting/ui/return/slot_8
    #そしてアイテム還元
    loot give @s mine 0 -59 0 mainhand
# リセット
    scoreboard players set @s throw 0
    scoreboard players set @s pick 0
    advancement revoke @s only main:craft/enchanting/pick_stick
