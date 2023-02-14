#棒を消す
    #オフハンドはバグる。おのもや
    execute unless data entity @s Inventory[{Slot:-106b}] run item replace entity @s weapon.offhand with stick{display:{Name:'{"text":""}'},ui:1b}
    clear @s stick{ui:1b}

    #ドロップした棒はkill
    execute if score @s throw matches 1.. as @e[type=item,distance=..5] if data entity @s {Item:{tag:{ui:1b,menu:"quest_book"}}} run kill @s

#なんかアイテムが別に入っていたらインベントリに戻し、棒に置き換える
    #0,-59,0のシュルカーボックスのアイテム削除
    data remove block 0 -59 0 Items
    #どこのスロットが変えられたか
    execute as @e[limit=1,tag=quest_book,sort=nearest] unless data entity @s Items[{Slot:0b,tag:{ui:1b,menu:"quest_book"}}] run function main:social/ui/quest_book/return/slot_0
    execute as @e[limit=1,tag=quest_book,sort=nearest] unless data entity @s Items[{Slot:1b,tag:{ui:1b,menu:"quest_book"}}] run function main:social/ui/quest_book/return/slot_1
    execute as @e[limit=1,tag=quest_book,sort=nearest] unless data entity @s Items[{Slot:2b,tag:{ui:1b,menu:"quest_book"}}] run function main:social/ui/quest_book/return/slot_2
    execute as @e[limit=1,tag=quest_book,sort=nearest] unless data entity @s Items[{Slot:3b,tag:{ui:1b,menu:"quest_book"}}] run function main:social/ui/quest_book/return/slot_3
    execute as @e[limit=1,tag=quest_book,sort=nearest] unless data entity @s Items[{Slot:4b,tag:{ui:1b,menu:"quest_book"}}] run function main:social/ui/quest_book/return/slot_4
    execute as @e[limit=1,tag=quest_book,sort=nearest] unless data entity @s Items[{Slot:5b,tag:{ui:1b,menu:"quest_book"}}] run function main:social/ui/quest_book/return/slot_5
    execute as @e[limit=1,tag=quest_book,sort=nearest] unless data entity @s Items[{Slot:6b,tag:{ui:1b,menu:"quest_book"}}] run function main:social/ui/quest_book/return/slot_6
    execute as @e[limit=1,tag=quest_book,sort=nearest] unless data entity @s Items[{Slot:7b,tag:{ui:1b,menu:"quest_book"}}] run function main:social/ui/quest_book/return/slot_7
    execute as @e[limit=1,tag=quest_book,sort=nearest] unless data entity @s Items[{Slot:8b,tag:{ui:1b,menu:"quest_book"}}] run function main:social/ui/quest_book/return/slot_8
    execute as @e[limit=1,tag=quest_book,sort=nearest] unless data entity @s Items[{Slot:9b,tag:{ui:1b,menu:"quest_book"}}] run function main:social/ui/quest_book/return/slot_9
    execute as @e[limit=1,tag=quest_book,sort=nearest] unless data entity @s Items[{Slot:10b,tag:{ui:1b,menu:"quest_book"}}] run function main:social/ui/quest_book/return/slot_10
    execute as @e[limit=1,tag=quest_book,sort=nearest] unless data entity @s Items[{Slot:11b,tag:{ui:1b,menu:"quest_book"}}] run function main:social/ui/quest_book/return/slot_11
    execute as @e[limit=1,tag=quest_book,sort=nearest] unless data entity @s Items[{Slot:12b,tag:{ui:1b,menu:"quest_book"}}] run function main:social/ui/quest_book/return/slot_12
    execute as @e[limit=1,tag=quest_book,sort=nearest] unless data entity @s Items[{Slot:13b,tag:{ui:1b,menu:"quest_book"}}] run function main:social/ui/quest_book/return/slot_13
    execute as @e[limit=1,tag=quest_book,sort=nearest] unless data entity @s Items[{Slot:14b,tag:{ui:1b,menu:"quest_book"}}] run function main:social/ui/quest_book/return/slot_14
    execute as @e[limit=1,tag=quest_book,sort=nearest] unless data entity @s Items[{Slot:15b,tag:{ui:1b,menu:"quest_book"}}] run function main:social/ui/quest_book/return/slot_15
    execute as @e[limit=1,tag=quest_book,sort=nearest] unless data entity @s Items[{Slot:16b,tag:{ui:1b,menu:"quest_book"}}] run function main:social/ui/quest_book/return/slot_16
    execute as @e[limit=1,tag=quest_book,sort=nearest] unless data entity @s Items[{Slot:17b,tag:{ui:1b,menu:"quest_book"}}] run function main:social/ui/quest_book/return/slot_17
    execute as @e[limit=1,tag=quest_book,sort=nearest] unless data entity @s Items[{Slot:18b,tag:{ui:1b,menu:"quest_book"}}] run function main:social/ui/quest_book/return/slot_18
    execute as @e[limit=1,tag=quest_book,sort=nearest] unless data entity @s Items[{Slot:19b,tag:{ui:1b,menu:"quest_book"}}] run function main:social/ui/quest_book/return/slot_19
    execute as @e[limit=1,tag=quest_book,sort=nearest] unless data entity @s Items[{Slot:20b,tag:{ui:1b,menu:"quest_book"}}] run function main:social/ui/quest_book/return/slot_20
    execute as @e[limit=1,tag=quest_book,sort=nearest] unless data entity @s Items[{Slot:21b,tag:{ui:1b,menu:"quest_book"}}] run function main:social/ui/quest_book/return/slot_21
    execute as @e[limit=1,tag=quest_book,sort=nearest] unless data entity @s Items[{Slot:22b,tag:{ui:1b,menu:"quest_book"}}] run function main:social/ui/quest_book/return/slot_22
    execute as @e[limit=1,tag=quest_book,sort=nearest] unless data entity @s Items[{Slot:23b,tag:{ui:1b,menu:"quest_book"}}] run function main:social/ui/quest_book/return/slot_23
    execute as @e[limit=1,tag=quest_book,sort=nearest] unless data entity @s Items[{Slot:24b,tag:{ui:1b,menu:"quest_book"}}] run function main:social/ui/quest_book/return/slot_24
    execute as @e[limit=1,tag=quest_book,sort=nearest] unless data entity @s Items[{Slot:25b,tag:{ui:1b,menu:"quest_book"}}] run function main:social/ui/quest_book/return/slot_25
    execute as @e[limit=1,tag=quest_book,sort=nearest] unless data entity @s Items[{Slot:26b,tag:{ui:1b,menu:"quest_book"}}] run function main:social/ui/quest_book/return/slot_26
    #そしてアイテム還元
    loot give @s mine 0 -59 0 mainhand
#リセット
    scoreboard players set @s throw 0
    scoreboard players set @s pick 0
    advancement revoke @s only main:social/ui/quest_book/pick_stick
