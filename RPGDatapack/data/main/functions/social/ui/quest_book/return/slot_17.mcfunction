#シュルカーボックスにアイテムを避難させた後、棒を入れる
    item replace block 0 -59 0 container.0 with stick
    data modify block 0 -59 0 Items[{Slot:0b}].id set from entity @s Items[{Slot:17b}].id
    data modify block 0 -59 0 Items[{Slot:0b}].Count set from entity @s Items[{Slot:17b}].Count
    data modify block 0 -59 0 Items[{Slot:0b}].tag set from entity @s Items[{Slot:17b}].tag
    execute unless data entity @s Items[{Slot:17b}] run item replace block 0 -59 0 container.0 with air
    item replace entity @s container.17 with stick{CustomModelData:1,ui:1b,menu:"quest_book",display:{Name:'{"text": ""}'}}
    execute if score @s page matches 2 if data storage temp: data.Quest[-8] run function main:social/ui/quest_book/page/2_quests/next
#ページがマッチするならアクション
    #execute if score @s page matches 0 run function main:social/ui/quest_book/page/next
