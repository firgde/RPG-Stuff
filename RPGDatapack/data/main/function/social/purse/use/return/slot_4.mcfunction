# シュルカーボックスにアイテムを避難させた後、棒を入れる
    item replace block 0 -59 0 container.0 with stick
    data modify block 0 -59 0 Items[{Slot:0b}].id set from entity @s Items[{Slot:4b}].id
    data modify block 0 -59 0 Items[{Slot:0b}].count set from entity @s Items[{Slot:4b}].count
    data modify block 0 -59 0 Items[{Slot:0b}].components set from entity @s Items[{Slot:4b}].components
    execute unless data entity @s Items[{Slot:4b}] run item replace block 0 -59 0 container.0 with air
    item replace entity @s container.4 with stick[custom_data={ui:1b,menu:"purse"},tooltip_display={hide_tooltip:true},item_model="air"]
