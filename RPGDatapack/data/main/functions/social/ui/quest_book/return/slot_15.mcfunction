#シュルカーボックスにアイテムを避難させた後、棒を入れる
    item replace block 0 -59 0 container.0 with stick
    data modify block 0 -59 0 Items[{Slot:0b}].id set from entity @s Items[{Slot:15b}].id
    data modify block 0 -59 0 Items[{Slot:0b}].Count set from entity @s Items[{Slot:15b}].Count
    data modify block 0 -59 0 Items[{Slot:0b}].tag set from entity @s Items[{Slot:15b}].tag
    execute unless data entity @s Items[{Slot:15b}] run item replace block 0 -59 0 container.0 with air
    execute unless score @s page matches 2 run item replace entity @s container.15 with stick{CustomModelData:1,ui:1b,menu:"quest_book",display:{Name:'{"text": ""}'}}
    execute if score @s page matches 2 if data storage temp: data.Quest[-6] run loot replace entity @s container.15 loot main:social/ui/quest_book/2_quests/quest_15
