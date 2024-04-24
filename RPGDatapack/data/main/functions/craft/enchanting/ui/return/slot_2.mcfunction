# シュルカーボックスにアイテムを避難させた後、棒を入れる
    item replace block 0 -59 0 container.0 with stick
    data modify block 0 -59 0 Items[0].id set from block ~ ~ ~ Items[{Slot:2b}].id
    data modify block 0 -59 0 Items[0].Count set from block ~ ~ ~ Items[{Slot:2b}].Count
    data modify block 0 -59 0 Items[0].components set from block ~ ~ ~ Items[{Slot:2b}].components
    execute unless data block ~ ~ ~ Items[{Slot:2b}] run item replace block 0 -59 0 container.0 with air
    item replace block ~ ~ ~ container.2 with stick[custom_model_data=1,hide_tooltip={},custom_data={ui:1b,menu:"enchanter"}]
