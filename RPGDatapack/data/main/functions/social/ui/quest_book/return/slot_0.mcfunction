#シュルカーボックスにアイテムを避難させた後、棒を入れる
    item replace block 0 -59 0 container.0 with stick
    data modify block 0 -59 0 Items[{Slot:0b}].id set from entity @s Items[{Slot:0b}].id
    data modify block 0 -59 0 Items[{Slot:0b}].Count set from entity @s Items[{Slot:0b}].Count
    data modify block 0 -59 0 Items[{Slot:0b}].tag set from entity @s Items[{Slot:0b}].tag
    execute unless data entity @s Items[{Slot:0b}] run item replace block 0 -59 0 container.0 with air
    execute if score @s page matches 0 run item replace entity @s container.0 with stick{CustomModelData:1,ui:1b,menu:"quest_book",display:{Name:'{"text": ""}'}}
    execute if score @s page matches 1 as @p run loot replace entity @e[tag=quest_book,distance=..5] container.0 loot main:social/ui/quest_book/1_status/combat
    execute if score @s page matches 2 run item replace entity @s container.0 with stick{CustomModelData:1,ui:1b,menu:"quest_book",display:{Name:'{"text": ""}'}}
