#シュルカーボックスにアイテムを避難させた後、棒を入れる
    item replace block 0 -59 0 container.0 with stick
    data modify block 0 -59 0 Items[{Slot:0b}].id set from entity @s Items[{Slot:22b}].id
    data modify block 0 -59 0 Items[{Slot:0b}].Count set from entity @s Items[{Slot:22b}].Count
    data modify block 0 -59 0 Items[{Slot:0b}].tag set from entity @s Items[{Slot:22b}].tag
    execute unless data entity @s Items[{Slot:22b}] run item replace block 0 -59 0 container.0 with air
    item replace entity @s container.22 with stick{CustomModelData:1,ui:1b,menu:"quest_book",display:{Name:'{"text": ""}'}}
