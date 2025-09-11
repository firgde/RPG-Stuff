# シュルカーボックスにアイテムを避難させた後、棒を入れる
    item replace block 0 -59 0 container.0 with stick
    data modify block 0 -59 0 Items[{Slot:0b}].id set from entity @s Items[{Slot:18b}].id
    data modify block 0 -59 0 Items[{Slot:0b}].count set from entity @s Items[{Slot:18b}].count
    data modify block 0 -59 0 Items[{Slot:0b}].components set from entity @s Items[{Slot:18b}].components
    execute unless data entity @s Items[{Slot:18b}] run item replace block 0 -59 0 container.0 with air
    execute if score @s page matches 0 run item replace entity @s container.18 with stick[item_model="air",tooltip_display={hide_tooltip:true},custom_data={ui:1b,menu:"knowledge_book"}]
    execute if score @s page matches 1..2 run function main:social/knowledge_book/use/page/0_main
    execute if score @s page matches 4..8 run function main:social/knowledge_book/use/page/1_status/init
    execute if score @s page matches 71.. run function main:social/knowledge_book/use/page/7_status_craft/init
