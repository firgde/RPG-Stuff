# 棒を消す
    #オフハンドはバグる。おのもや
    # execute unless data entity @s Inventory[{Slot:-106b}] run item replace entity @s weapon.offhand with stick[tooltip_display={hide_tooltip:true},custom_data={ui:1b}]
    clear @s *[custom_data~{ui:1b}]

    #ドロップした棒はkill
    execute if score @s throw matches 1.. as @e[type=item,distance=..5] if data entity @s {Item:{components:{"minecraft:custom_data":{ui:1b,menu:"purse"}}}} run kill @s

# なんかアイテムが別に入っていたらインベントリに戻し、棒に置き換える
    #0,-59,0のシュルカーボックスのアイテム削除
    data remove block 0 -59 0 Items
    #どこのスロットが変えられたか
    execute as @n[tag=purse] unless score @s page matches 1 unless data entity @s Items[{Slot:0b,components:{"minecraft:custom_data":{ui:1b,menu:"purse"}}}] run function main:social/purse/use/return/slot_0
    execute as @n[tag=purse] unless score @s page matches 1 unless data entity @s Items[{Slot:1b,components:{"minecraft:custom_data":{ui:1b,menu:"purse"}}}] run function main:social/purse/use/return/slot_1
    execute as @n[tag=purse] unless score @s page matches 1 unless data entity @s Items[{Slot:2b,components:{"minecraft:custom_data":{ui:1b,menu:"purse"}}}] run function main:social/purse/use/return/slot_2
    execute as @n[tag=purse] unless score @s page matches 1 unless data entity @s Items[{Slot:3b,components:{"minecraft:custom_data":{ui:1b,menu:"purse"}}}] run function main:social/purse/use/return/slot_3
    execute as @n[tag=purse] unless score @s page matches 1 unless data entity @s Items[{Slot:4b,components:{"minecraft:custom_data":{ui:1b,menu:"purse"}}}] run function main:social/purse/use/return/slot_4
    execute as @n[tag=purse] unless score @s page matches 1 unless data entity @s Items[{Slot:5b,components:{"minecraft:custom_data":{ui:1b,menu:"purse"}}}] run function main:social/purse/use/return/slot_5
    execute as @n[tag=purse] unless score @s page matches 1 unless data entity @s Items[{Slot:6b,components:{"minecraft:custom_data":{ui:1b,menu:"purse"}}}] run function main:social/purse/use/return/slot_6
    execute as @n[tag=purse] unless score @s page matches 1 unless data entity @s Items[{Slot:7b,components:{"minecraft:custom_data":{ui:1b,menu:"purse"}}}] run function main:social/purse/use/return/slot_7
    execute as @n[tag=purse] unless score @s page matches 1 unless data entity @s Items[{Slot:8b,components:{"minecraft:custom_data":{ui:1b,menu:"purse"}}}] run function main:social/purse/use/return/slot_8
    execute as @n[tag=purse] unless score @s page matches 1 unless data entity @s Items[{Slot:9b,components:{"minecraft:custom_data":{ui:1b,menu:"purse"}}}] run function main:social/purse/use/return/slot_9
    execute as @n[tag=purse] unless score @s page matches 1 unless data entity @s Items[{Slot:10b,components:{"minecraft:custom_data":{ui:1b,menu:"purse"}}}] run function main:social/purse/use/return/slot_10
    execute as @n[tag=purse] unless score @s page matches 1 unless data entity @s Items[{Slot:11b,components:{"minecraft:custom_data":{ui:1b,menu:"purse"}}}] run function main:social/purse/use/return/slot_11
    execute as @n[tag=purse] unless score @s page matches 1 unless data entity @s Items[{Slot:12b,components:{"minecraft:custom_data":{ui:1b,menu:"purse"}}}] run function main:social/purse/use/return/slot_12
    execute as @n[tag=purse] unless score @s page matches 1 unless data entity @s Items[{Slot:13b,components:{"minecraft:custom_data":{ui:1b,menu:"purse"}}}] run function main:social/purse/use/return/slot_13
    execute as @n[tag=purse] unless score @s page matches 1 unless data entity @s Items[{Slot:14b,components:{"minecraft:custom_data":{ui:1b,menu:"purse"}}}] run function main:social/purse/use/return/slot_14
    execute as @n[tag=purse] unless score @s page matches 1 unless data entity @s Items[{Slot:15b,components:{"minecraft:custom_data":{ui:1b,menu:"purse"}}}] run function main:social/purse/use/return/slot_15
    execute as @n[tag=purse] unless score @s page matches 1 unless data entity @s Items[{Slot:16b,components:{"minecraft:custom_data":{ui:1b,menu:"purse"}}}] run function main:social/purse/use/return/slot_16
    execute as @n[tag=purse] unless score @s page matches 1 unless data entity @s Items[{Slot:17b,components:{"minecraft:custom_data":{ui:1b,menu:"purse"}}}] run function main:social/purse/use/return/slot_17
    execute as @n[tag=purse] unless data entity @s Items[{Slot:18b,components:{"minecraft:custom_data":{ui:1b,menu:"purse"}}}] run function main:social/purse/use/return/slot_18
    execute as @n[tag=purse] unless data entity @s Items[{Slot:19b,components:{"minecraft:custom_data":{ui:1b,menu:"purse"}}}] run function main:social/purse/use/return/slot_19
    execute as @n[tag=purse] unless data entity @s Items[{Slot:20b,components:{"minecraft:custom_data":{ui:1b,menu:"purse"}}}] run function main:social/purse/use/return/slot_20
    execute as @n[tag=purse] unless data entity @s Items[{Slot:21b,components:{"minecraft:custom_data":{ui:1b,menu:"purse"}}}] run function main:social/purse/use/return/slot_21
    execute as @n[tag=purse] unless data entity @s Items[{Slot:22b,components:{"minecraft:custom_data":{ui:1b,menu:"purse"}}}] run function main:social/purse/use/return/slot_22
    execute as @n[tag=purse] unless data entity @s Items[{Slot:23b,components:{"minecraft:custom_data":{ui:1b,menu:"purse"}}}] run function main:social/purse/use/return/slot_23
    execute as @n[tag=purse] unless data entity @s Items[{Slot:24b,components:{"minecraft:custom_data":{ui:1b,menu:"purse"}}}] run function main:social/purse/use/return/slot_24
    execute as @n[tag=purse] unless data entity @s Items[{Slot:25b,components:{"minecraft:custom_data":{ui:1b,menu:"purse"}}}] run function main:social/purse/use/return/slot_25
    execute as @n[tag=purse] unless data entity @s Items[{Slot:26b,components:{"minecraft:custom_data":{ui:1b,menu:"purse"}}}] run function main:social/purse/use/return/slot_26
    #そしてアイテム還元
    execute unless items entity @a player.cursor * run item replace entity @a player.cursor from block 0 -59 0 container.0
# リセット
    scoreboard players set @s throw 0
    scoreboard players set @s pick 0
    advancement revoke @s only main:social/purse/pick_stick
