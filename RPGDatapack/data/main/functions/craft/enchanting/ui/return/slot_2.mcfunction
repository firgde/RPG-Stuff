# シュルカーボックスにアイテムを避難させた後、棒を入れる
    item replace block 0 -59 0 container.0 with stick
    data modify block 0 -59 0 Items[0].id set from block ~ ~ ~ Items[{Slot:2b}].id
    data modify block 0 -59 0 Items[0].Count set from block ~ ~ ~ Items[{Slot:2b}].Count
    data modify block 0 -59 0 Items[0].tag set from block ~ ~ ~ Items[{Slot:2b}].tag
    execute unless data block ~ ~ ~ Items[{Slot:2b}] run item replace block 0 -59 0 container.0 with air
    item replace block ~ ~ ~ container.2 with stick{CustomModelData:1,ui:1b,menu:"enchanter",display:{Name:'{"text": ""}'}}
