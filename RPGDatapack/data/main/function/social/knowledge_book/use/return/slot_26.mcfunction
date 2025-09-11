# シュルカーボックスにアイテムを避難させた後、棒を入れる
    item replace block 0 -59 0 container.0 with stick
    data modify block 0 -59 0 Items[{Slot:0b}].id set from entity @s Items[{Slot:26b}].id
    data modify block 0 -59 0 Items[{Slot:0b}].count set from entity @s Items[{Slot:26b}].count
    data modify block 0 -59 0 Items[{Slot:0b}].components set from entity @s Items[{Slot:26b}].components
    execute unless data entity @s Items[{Slot:26b}] run item replace block 0 -59 0 container.0 with air
    execute if score @s page matches 0 run item replace entity @s container.26 with stick[item_model="air",tooltip_display={hide_tooltip:true},custom_data={ui:1b,menu:"knowledge_book"}]
    execute if score @s page matches 1 as @a run loot replace entity @e[tag=knowledge_book,distance=..5] container.26 loot main:social/ui/knowledge_book/1_status/money
    execute if score @s page matches 4..8 run item replace entity @s container.26 with stick[item_model="air",tooltip_display={hide_tooltip:true},custom_data={ui:1b,menu:"knowledge_book"}]
