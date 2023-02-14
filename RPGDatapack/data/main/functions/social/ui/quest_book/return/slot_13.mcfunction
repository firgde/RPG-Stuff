#シュルカーボックスにアイテムを避難させた後、棒を入れる
    item replace block 0 -59 0 container.0 with stick
    data modify block 0 -59 0 Items[{Slot:0b}].id set from entity @s Items[{Slot:13b}].id
    data modify block 0 -59 0 Items[{Slot:0b}].Count set from entity @s Items[{Slot:13b}].Count
    data modify block 0 -59 0 Items[{Slot:0b}].tag set from entity @s Items[{Slot:13b}].tag
    execute unless data entity @s Items[{Slot:13b}] run item replace block 0 -59 0 container.0 with air
    execute if score @s page matches 0 run item replace entity @s container.13 with stick{CustomModelData:0,ui:1b,menu:"quest_book",display:{Name:'{"text": ""}'}}
    execute if score @s page matches 1 run function main:social/ui/quest_book/page/1_status/get_space
    execute if score @s page matches 1 as @p run loot replace entity @e[tag=quest_book,distance=..5] container.13 loot main:social/ui/quest_book/1_status/head
    execute if score @s page matches 2 if data storage temp: data.Quest[-4] run loot replace entity @s container.13 loot main:social/ui/quest_book/2_quests/quest_13
    data remove storage space: text
#ページがマッチするならアクション
    execute if score @s page matches 0 run function main:social/ui/quest_book/page/2_quests/init
