# シュルカーボックスにアイテムを避難させた後、棒を入れる
    item replace block 0 -59 0 container.0 with stick
    data modify block 0 -59 0 Items[0].id set from block ~ ~ ~ Items[{Slot:0b}].id
    data modify block 0 -59 0 Items[0].count set from block ~ ~ ~ Items[{Slot:0b}].count
    data modify block 0 -59 0 Items[0].components set from block ~ ~ ~ Items[{Slot:0b}].components
    execute unless data block ~ ~ ~ Items[{Slot:0b}] run item replace block 0 -59 0 container.0 with air
    item replace block ~ ~ ~ container.0 with stick[item_model="air",tooltip_display={hide_tooltip:true},custom_data={ui:1b,menu:"enchanter"}]
