# シュルカーボックスにアイテムを避難させた後、棒を入れる
    item replace block 0 -59 0 container.0 with stick
    data modify block 0 -59 0 Items[{Slot:0b}].id set from entity @s Items[{Slot:13b}].id
    data modify block 0 -59 0 Items[{Slot:0b}].count set from entity @s Items[{Slot:13b}].count
    data modify block 0 -59 0 Items[{Slot:0b}].components set from entity @s Items[{Slot:13b}].components
    execute unless data entity @s Items[{Slot:13b}] run item replace block 0 -59 0 container.0 with air
    execute if score @s page matches ..2 run item replace entity @s container.13 with stick[custom_data={ui:1b,menu:"backpack"},tooltip_display={hide_tooltip:true},item_model="air"]
    execute if score @s page matches 3 run function main:social/backpack/use/page/item/place
