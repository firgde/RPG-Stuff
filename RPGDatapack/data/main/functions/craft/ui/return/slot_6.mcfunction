# シュルカーボックスにアイテムを避難させた後、棒を入れる
    item replace block 0 -59 0 container.0 with stick
    data modify block 0 -59 0 Items[0].id set from block ~ ~-1 ~ Items[{Slot:6b}].id
    data modify block 0 -59 0 Items[0].Count set from block ~ ~-1 ~ Items[{Slot:6b}].Count
    data modify block 0 -59 0 Items[0].tag set from block ~ ~-1 ~ Items[{Slot:6b}].tag
    execute unless data block ~ ~-1 ~ Items[{Slot:6b}] run item replace block 0 -59 0 container.0 with air
    item replace block ~ ~-1 ~ container.6 with stick{CustomModelData:1,ui:1b,menu:"dispenser",display:{Name:'{"text": ""}'}}
