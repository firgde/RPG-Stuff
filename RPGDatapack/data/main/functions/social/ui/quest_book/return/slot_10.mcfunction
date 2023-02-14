#シュルカーボックスにアイテムを避難させた後、棒を入れる
    item replace block 0 -59 0 container.0 with stick
    data modify block 0 -59 0 Items[{Slot:0b}].id set from entity @s Items[{Slot:10b}].id
    data modify block 0 -59 0 Items[{Slot:0b}].Count set from entity @s Items[{Slot:10b}].Count
    data modify block 0 -59 0 Items[{Slot:0b}].tag set from entity @s Items[{Slot:10b}].tag
    execute unless data entity @s Items[{Slot:10b}] run item replace block 0 -59 0 container.0 with air
    execute if score @s page matches 0 as @p run loot replace entity @e[tag=quest_book,distance=..5] container.10 loot main:social/ui/quest_book/1_status/head_profile
    execute if score @s page matches 2 if data storage social: data.Quest[-1] run loot replace entity @s container.10 loot main:social/ui/quest_book/2_quests/quest_10
#ページがマッチするならアクション
    execute if score @s page matches 0 run function main:social/ui/quest_book/page/1_status/init
